contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - add(uint256 arg1, address arg2, uint16 arg3, bool arg4)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const BONUS_MULTIPLIER = 1

const BURN_ADDRESS = 57005


address owner;
uint256 stor1;
address sub_83b9010dAddress;
array of uint256 sub_16a0fa00;
array of uint256 sub_dcbf1b95;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint16 referralCommissionRate; offset 160
address referralAddress;
mapping of uint8 stor11;

function poolLength() payable {
    return poolInfo.length
}

function referral() payable {
    return referralAddress
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

function sub_16a0fa00(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_16a0fa00.length
    return sub_16a0fa00[arg1]
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function sub_83b9010d(?) payable {
    return sub_83b9010dAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function sub_dcbf1b95(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_dcbf1b95.length
    return sub_dcbf1b95[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setReferral(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    referralAddress = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function wsPerBlock() payable {
    idx = 0
    while idx < sub_dcbf1b95.length:
        mem[0] = 4
        if sub_dcbf1b95[idx] <= block.number:
            idx = idx + 1
            continue 
        require idx < sub_16a0fa00.length
        return sub_16a0fa00[idx]
    if sub_16a0fa00.length - 1 < sub_16a0fa00.length:
        return sub_16a0fa00[sub_16a0fa00.length]
    revert
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    mem[0] = 6
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                mem[64] = 160
                mem[96] = 30
                mem[128] = 'SafeMath: subtraction overflow'
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    idx = 0
                    while idx < sub_dcbf1b95.length:
                        mem[0] = 4
                        if sub_dcbf1b95[idx] <= block.number:
                            idx = idx + 1
                            continue 
                        require idx < sub_16a0fa00.length
                        mem[192] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + 292] = mem[idx + 192]
                                idx = idx + 32
                                continue 
                            mem[292] = mem[298 len 26]
                            revert with 0, 32, 26, mem[292]
                        require ext_code.size(sub_83b9010dAddress)
                        call sub_83b9010dAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args 57005, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_83b9010dAddress)
                        call sub_83b9010dAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            mem[320] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[320] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.number
                        ('iszero', ('ext_call.return_data', 0, 32))
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[426 len 26]
                        revert with 0, 32, 26, mem[420]
                    require sub_16a0fa00.length - 1 < sub_16a0fa00.length
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(sub_83b9010dAddress)
                    call sub_83b9010dAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args 57005, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_83b9010dAddress)
                    call sub_83b9010dAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    idx = 0
                    while idx < sub_dcbf1b95.length:
                        mem[0] = 4
                        if sub_dcbf1b95[idx] <= block.number:
                            idx = idx + 1
                            continue 
                        require idx < sub_16a0fa00.length
                        if not block.number - poolInfo[arg1].field_512:
                            mem[192] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 292] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[292] = mem[298 len 26]
                                revert with 0, 32, 26, mem[292]
                            require ext_code.size(sub_83b9010dAddress)
                            call sub_83b9010dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args 57005, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_83b9010dAddress)
                            call sub_83b9010dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[arg1].field_512 = block.number
                        else:
                            if (block.number * sub_16a0fa00[idx]) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx]) / block.number - poolInfo[arg1].field_512 != sub_16a0fa00[idx]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * sub_16a0fa00[idx]) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx]):
                                mem[192] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[228] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 292] = mem[idx + 192]
                                        idx = idx + 32
                                        continue 
                                    mem[292] = mem[298 len 26]
                                    revert with 0, 32, 26, mem[292]
                                require ext_code.size(sub_83b9010dAddress)
                                call sub_83b9010dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args 57005, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_83b9010dAddress)
                                call sub_83b9010dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                            else:
                                if (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / (block.number * sub_16a0fa00[idx]) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx]) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                mem[192] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[228] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 292] = mem[idx + 192]
                                        idx = idx + 32
                                        continue 
                                    mem[292] = mem[298 len 26]
                                    revert with 0, 32, 26, mem[292]
                                require ext_code.size(sub_83b9010dAddress)
                                call sub_83b9010dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args 57005, (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_83b9010dAddress)
                                call sub_83b9010dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint:
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                                else:
                                    if 10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[arg1].field_512 = block.number
                        ('iszero', ('ext_call.return_data', 0, 32))
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[426 len 26]
                        revert with 0, 32, 26, mem[420]
                    require sub_16a0fa00.length - 1 < sub_16a0fa00.length
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_83b9010dAddress)
                        call sub_83b9010dAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args 57005, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_83b9010dAddress)
                        call sub_83b9010dAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length]) / block.number - poolInfo[arg1].field_512 != sub_16a0fa00[sub_16a0fa00.length]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length]):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_83b9010dAddress)
                            call sub_83b9010dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args 57005, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_83b9010dAddress)
                            call sub_83b9010dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length]) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_83b9010dAddress)
                            call sub_83b9010dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args 57005, (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_83b9010dAddress)
                            call sub_83b9010dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingWs(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    mem[0] = arg2
    mem[32] = sha3(arg1, 7)
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
    mem[64] = 160
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        idx = 0
        while idx < sub_dcbf1b95.length:
            mem[0] = 4
            if sub_dcbf1b95[idx] <= block.number:
                idx = idx + 1
                continue 
            require idx < sub_16a0fa00.length
            mem[192] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                mem[292] = mem[298 len 26]
                revert with 0, 32, 26, mem[292]
            if not 0 / totalAllocPoint:
                mem[256] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[256] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[420] = 32
            idx = 32
            while idx < 30:
                mem[idx + 484] = mem[idx + 384]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        require sub_16a0fa00.length - 1 < sub_16a0fa00.length
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    idx = 0
    while idx < sub_dcbf1b95.length:
        mem[0] = 4
        if sub_dcbf1b95[idx] <= block.number:
            idx = idx + 1
            continue 
        require idx < sub_16a0fa00.length
        if not block.number - poolInfo[arg1].field_512:
            mem[192] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                mem[292] = mem[298 len 26]
                revert with 0, 32, 26, mem[292]
            if not 0 / totalAllocPoint:
                mem[256] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[256] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        else:
            if (block.number * sub_16a0fa00[idx]) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx]) / block.number - poolInfo[arg1].field_512 != sub_16a0fa00[idx]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.number * sub_16a0fa00[idx]) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx]):
                mem[192] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    mem[292] = mem[298 len 26]
                    revert with 0, 32, 26, mem[292]
                if not 0 / totalAllocPoint:
                    mem[256] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    mem[256] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[arg1][address(arg2)].field_256 <= (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                if (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / (block.number * sub_16a0fa00[idx]) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx]) != poolInfo[arg1].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                mem[192] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    mem[292] = mem[298 len 26]
                    revert with 0, 32, 26, mem[292]
                if not (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint:
                    mem[256] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[arg1][address(arg2)].field_256 <= (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    if 10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    mem[256] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    if (10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if (10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[arg1][address(arg2)].field_256 <= (10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((10^12 * (block.number * sub_16a0fa00[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[420] = 32
        idx = 32
        while idx < 30:
            mem[idx + 484] = mem[idx + 384]
            idx = idx + 32
            continue 
        revert with 0, 'SafeMath: subtraction overflow'
    require sub_16a0fa00.length - 1 < sub_16a0fa00.length
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length]) / block.number - poolInfo[arg1].field_512 != sub_16a0fa00[sub_16a0fa00.length]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length]):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length]) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _319 = mem[64]
        mem[64] = mem[64] + 64
        mem[_319] = 30
        mem[_319 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _319 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            s = 0
            while s < sub_dcbf1b95.length:
                mem[0] = 4
                if sub_dcbf1b95[s] <= block.number:
                    s = s + 1
                    continue 
                require s < sub_16a0fa00.length
                mem[0] = 3
                _659 = mem[64]
                mem[64] = mem[64] + 64
                mem[_659] = 26
                mem[_659 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _675 + 68] = mem[idx + _659 + 32]
                        idx = idx + 32
                        continue 
                    mem[_675 + 68] = mem[_675 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _675 + -mem[64] + 100
                _709 = mem[64]
                mem[64] = mem[64] + 64
                mem[_709] = 26
                mem[_709 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_83b9010dAddress)
                call sub_83b9010dAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args 57005, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_83b9010dAddress)
                call sub_83b9010dAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_787] = 26
                    mem[_787 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _816 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _816 + 68] = mem[idx + _787 + 32]
                        idx = idx + 32
                        continue 
                    mem[_816 + 68] = mem[_816 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _816 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_800] = 26
                mem[_800 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _836 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _836 + 68] = mem[idx + _800 + 32]
                    idx = idx + 32
                    continue 
                mem[_836 + 68] = mem[_836 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _836 + -mem[64] + 100
            require sub_16a0fa00.length - 1 < sub_16a0fa00.length
            mem[0] = 3
            _644 = mem[64]
            mem[64] = mem[64] + 64
            mem[_644] = 26
            mem[_644 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _650 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _650 + 68] = mem[idx + _644 + 32]
                    idx = idx + 32
                    continue 
                mem[_650 + 68] = mem[_650 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _650 + -mem[64] + 100
            _686 = mem[64]
            mem[64] = mem[64] + 64
            mem[_686] = 26
            mem[_686 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_756] = 26
                mem[_756 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _769 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _769 + 68] = mem[idx + _756 + 32]
                    idx = idx + 32
                    continue 
                mem[_769 + 68] = mem[_769 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _769 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _761 = mem[64]
            mem[64] = mem[64] + 64
            mem[_761] = 26
            mem[_761 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _784 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _784 + 68] = mem[idx + _761 + 32]
                idx = idx + 32
                continue 
            mem[_784 + 68] = mem[_784 + 74 len 26]
            revert with memory
              from mem[64]
               len _784 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        s = 0
        while s < sub_dcbf1b95.length:
            mem[0] = 4
            if sub_dcbf1b95[s] <= block.number:
                s = s + 1
                continue 
            require s < sub_16a0fa00.length
            mem[0] = 3
            if not block.number - poolInfo[idx].field_512:
                _658 = mem[64]
                mem[64] = mem[64] + 64
                mem[_658] = 26
                mem[_658 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _670 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _670 + 68] = mem[idx + _658 + 32]
                        idx = idx + 32
                        continue 
                    mem[_670 + 68] = mem[_670 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _670 + -mem[64] + 100
                _707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_707] = 26
                mem[_707 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_83b9010dAddress)
                call sub_83b9010dAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args 57005, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_83b9010dAddress)
                call sub_83b9010dAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_783] = 26
                    mem[_783 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _810 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _810 + 68] = mem[idx + _783 + 32]
                        idx = idx + 32
                        continue 
                    mem[_810 + 68] = mem[_810 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _810 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_798] = 26
                mem[_798 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _830 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _830 + 68] = mem[idx + _798 + 32]
                    idx = idx + 32
                    continue 
                mem[_830 + 68] = mem[_830 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _830 + -mem[64] + 100
            if (block.number * sub_16a0fa00[s]) - (poolInfo[idx].field_512 * sub_16a0fa00[s]) / block.number - poolInfo[idx].field_512 != sub_16a0fa00[s]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_16a0fa00[s]) - (poolInfo[idx].field_512 * sub_16a0fa00[s]):
                _664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_664] = 26
                mem[_664 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _683 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _683 + 68] = mem[idx + _664 + 32]
                        idx = idx + 32
                        continue 
                    mem[_683 + 68] = mem[_683 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _683 + -mem[64] + 100
                _713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_713] = 26
                mem[_713 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_83b9010dAddress)
                call sub_83b9010dAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args 57005, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_83b9010dAddress)
                call sub_83b9010dAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_797] = 26
                    mem[_797 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _827 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _827 + 68] = mem[idx + _797 + 32]
                        idx = idx + 32
                        continue 
                    mem[_827 + 68] = mem[_827 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _827 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _809 = mem[64]
                mem[64] = mem[64] + 64
                mem[_809] = 26
                mem[_809 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _851 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _851 + 68] = mem[idx + _809 + 32]
                    idx = idx + 32
                    continue 
                mem[_851 + 68] = mem[_851 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _851 + -mem[64] + 100
            if (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / (block.number * sub_16a0fa00[s]) - (poolInfo[idx].field_512 * sub_16a0fa00[s]) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _669 = mem[64]
            mem[64] = mem[64] + 64
            mem[_669] = 26
            mem[_669 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _692 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _692 + 68] = mem[idx + _669 + 32]
                    idx = idx + 32
                    continue 
                mem[_692 + 68] = mem[_692 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _692 + -mem[64] + 100
            _717 = mem[64]
            mem[64] = mem[64] + 64
            mem[_717] = 26
            mem[_717 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint:
                _808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_808] = 26
                mem[_808 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _848 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _848 + 68] = mem[idx + _808 + 32]
                    idx = idx + 32
                    continue 
                mem[_848 + 68] = mem[_848 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _848 + -mem[64] + 100
            if 10^12 * (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _826 = mem[64]
            mem[64] = mem[64] + 64
            mem[_826] = 26
            mem[_826 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_16a0fa00[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _867 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _867 + 68] = mem[idx + _826 + 32]
                idx = idx + 32
                continue 
            mem[_867 + 68] = mem[_867 + 74 len 26]
            revert with memory
              from mem[64]
               len _867 + -mem[64] + 100
        require sub_16a0fa00.length - 1 < sub_16a0fa00.length
        mem[0] = 3
        if not block.number - poolInfo[idx].field_512:
            _643 = mem[64]
            mem[64] = mem[64] + 64
            mem[_643] = 26
            mem[_643 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _647 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _647 + 68] = mem[idx + _643 + 32]
                    idx = idx + 32
                    continue 
                mem[_647 + 68] = mem[_647 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _647 + -mem[64] + 100
            _681 = mem[64]
            mem[64] = mem[64] + 64
            mem[_681] = 26
            mem[_681 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_755] = 26
                mem[_755 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _764 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _764 + 68] = mem[idx + _755 + 32]
                    idx = idx + 32
                    continue 
                mem[_764 + 68] = mem[_764 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _764 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _760 = mem[64]
            mem[64] = mem[64] + 64
            mem[_760] = 26
            mem[_760 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _778 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _778 + 68] = mem[idx + _760 + 32]
                idx = idx + 32
                continue 
            mem[_778 + 68] = mem[_778 + 74 len 26]
            revert with memory
              from mem[64]
               len _778 + -mem[64] + 100
        if (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length]) / block.number - poolInfo[idx].field_512 != sub_16a0fa00[sub_16a0fa00.length]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length]):
            _645 = mem[64]
            mem[64] = mem[64] + 64
            mem[_645] = 26
            mem[_645 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _653 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _653 + 68] = mem[idx + _645 + 32]
                    idx = idx + 32
                    continue 
                mem[_653 + 68] = mem[_653 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _653 + -mem[64] + 100
            _690 = mem[64]
            mem[64] = mem[64] + 64
            mem[_690] = 26
            mem[_690 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_83b9010dAddress)
            call sub_83b9010dAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _759 = mem[64]
                mem[64] = mem[64] + 64
                mem[_759] = 26
                mem[_759 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _775 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _775 + 68] = mem[idx + _759 + 32]
                    idx = idx + 32
                    continue 
                mem[_775 + 68] = mem[_775 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _775 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _763 = mem[64]
            mem[64] = mem[64] + 64
            mem[_763] = 26
            mem[_763 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _791 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _791 + 68] = mem[idx + _763 + 32]
                idx = idx + 32
                continue 
            mem[_791 + 68] = mem[_791 + 74 len 26]
            revert with memory
              from mem[64]
               len _791 + -mem[64] + 100
        if (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / (block.number * sub_16a0fa00[sub_16a0fa00.length]) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length]) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _646 = mem[64]
        mem[64] = mem[64] + 64
        mem[_646] = 26
        mem[_646 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _660 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _660 + 68] = mem[idx + _646 + 32]
                idx = idx + 32
                continue 
            mem[_660 + 68] = mem[_660 + 74 len 26]
            revert with memory
              from mem[64]
               len _660 + -mem[64] + 100
        _697 = mem[64]
        mem[64] = mem[64] + 64
        mem[_697] = 26
        mem[_697 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_83b9010dAddress)
        call sub_83b9010dAddress.0x40c10f19 with:
             gas gas_remaining wei
            args 57005, (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_83b9010dAddress)
        call sub_83b9010dAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint:
            _762 = mem[64]
            mem[64] = mem[64] + 64
            mem[_762] = 26
            mem[_762 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _788 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _788 + 68] = mem[idx + _762 + 32]
                idx = idx + 32
                continue 
            mem[_788 + 68] = mem[_788 + 74 len 26]
            revert with memory
              from mem[64]
               len _788 + -mem[64] + 100
        if 10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _774 = mem[64]
        mem[64] = mem[64] + 64
        mem[_774] = 26
        mem[_774 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_16a0fa00[sub_16a0fa00.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _801 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _801 + 68] = mem[idx + _774 + 32]
            idx = idx + 32
            continue 
        mem[_801 + 68] = mem[_801 + 74 len 26]
        revert with memory
          from mem[64]
           len _801 + -mem[64] + 100
}



}
