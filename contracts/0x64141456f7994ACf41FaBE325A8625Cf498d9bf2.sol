contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address sub_40f1ea65Address;
address devaddr;
uint256 sub_3c1f18df;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint16 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

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

function sub_3c1f18df(?) payable {
    return sub_3c1f18df
}

function sub_40f1ea65(?) payable {
    return sub_40f1ea65Address
}

function feeAddress() payable {
    return feeAddress
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

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
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
        revert with 0, 'sOwnable: caller is not the owne'
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
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
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
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_40f1ea65Address)
                        call sub_40f1ea65Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(sub_40f1ea65Address)
                        call sub_40f1ea65Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 11 * 0 / totalAllocPoint / 89
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
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
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_40f1ea65Address)
                            call sub_40f1ea65Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_40f1ea65Address)
                            call sub_40f1ea65Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 11 * 0 / totalAllocPoint / 89
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_40f1ea65Address)
                        call sub_40f1ea65Address.0x40c10f19 with:
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
                        if (block.number * sub_3c1f18df) - (poolInfo[arg1].field_512 * sub_3c1f18df) / block.number - poolInfo[arg1].field_512 != sub_3c1f18df:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_3c1f18df) - (poolInfo[arg1].field_512 * sub_3c1f18df):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_40f1ea65Address)
                                call sub_40f1ea65Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_40f1ea65Address)
                                call sub_40f1ea65Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 11 * 0 / totalAllocPoint / 89
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_40f1ea65Address)
                            call sub_40f1ea65Address.0x40c10f19 with:
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
                            if (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / (block.number * sub_3c1f18df) - (poolInfo[arg1].field_512 * sub_3c1f18df) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_40f1ea65Address)
                                call sub_40f1ea65Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 11 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint != 11:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_40f1ea65Address)
                                call sub_40f1ea65Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 11 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / 89
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_40f1ea65Address)
                            call sub_40f1ea65Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_63352af4(?) payable {
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
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
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
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
    if (block.number * sub_3c1f18df) - (poolInfo[arg1].field_512 * sub_3c1f18df) / block.number - poolInfo[arg1].field_512 != sub_3c1f18df:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_3c1f18df) - (poolInfo[arg1].field_512 * sub_3c1f18df):
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
    if (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / (block.number * sub_3c1f18df) - (poolInfo[arg1].field_512 * sub_3c1f18df) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_3c1f18df * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3c1f18df * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
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
        _285 = mem[64]
        mem[64] = mem[64] + 64
        mem[_285] = 30
        mem[_285 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _285 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_301] = 26
            mem[_301 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _306 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _306 + 68] = mem[idx + _301 + 32]
                    idx = idx + 32
                    continue 
                mem[_306 + 68] = mem[_306 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _306 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _339 = mem[64]
                mem[64] = mem[64] + 64
                mem[_339] = 26
                mem[_339 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _389 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_389] = 26
                    mem[_389 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _405 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _405 + 68] = mem[idx + _389 + 32]
                        idx = idx + 32
                        continue 
                    mem[_405 + 68] = mem[_405 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _405 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_396] = 26
                mem[_396 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _420 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _420 + 68] = mem[idx + _396 + 32]
                    idx = idx + 32
                    continue 
                mem[_420 + 68] = mem[_420 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _420 + -mem[64] + 100
            if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_343] = 26
            mem[_343 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * 0 / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _395 = mem[64]
                mem[64] = mem[64] + 64
                mem[_395] = 26
                mem[_395 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _417 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _417 + 68] = mem[idx + _395 + 32]
                    idx = idx + 32
                    continue 
                mem[_417 + 68] = mem[_417 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _417 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _404 = mem[64]
            mem[64] = mem[64] + 64
            mem[_404] = 26
            mem[_404 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _435 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _435 + 68] = mem[idx + _404 + 32]
                idx = idx + 32
                continue 
            mem[_435 + 68] = mem[_435 + 74 len 26]
            revert with memory
              from mem[64]
               len _435 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _304 = mem[64]
            mem[64] = mem[64] + 64
            mem[_304] = 26
            mem[_304 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _310 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _310 + 68] = mem[idx + _304 + 32]
                    idx = idx + 32
                    continue 
                mem[_310 + 68] = mem[_310 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _310 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 26
                mem[_342 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _394 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_394] = 26
                    mem[_394 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _414 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _414 + 68] = mem[idx + _394 + 32]
                        idx = idx + 32
                        continue 
                    mem[_414 + 68] = mem[_414 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _414 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_403] = 26
                mem[_403 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _432 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _432 + 68] = mem[idx + _403 + 32]
                    idx = idx + 32
                    continue 
                mem[_432 + 68] = mem[_432 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _432 + -mem[64] + 100
            if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_347] = 26
            mem[_347 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * 0 / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_402] = 26
                mem[_402 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _429 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _429 + 68] = mem[idx + _402 + 32]
                    idx = idx + 32
                    continue 
                mem[_429 + 68] = mem[_429 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _429 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _413 = mem[64]
            mem[64] = mem[64] + 64
            mem[_413] = 26
            mem[_413 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _449 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _449 + 68] = mem[idx + _413 + 32]
                idx = idx + 32
                continue 
            mem[_449 + 68] = mem[_449 + 74 len 26]
            revert with memory
              from mem[64]
               len _449 + -mem[64] + 100
        if (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) / block.number - poolInfo[idx].field_512 != sub_3c1f18df:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df):
            _305 = mem[64]
            mem[64] = mem[64] + 64
            mem[_305] = 26
            mem[_305 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _313 + 68] = mem[idx + _305 + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 68] = mem[_313 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_346] = 26
                mem[_346 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_401] = 26
                    mem[_401 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _426 + 68] = mem[idx + _401 + 32]
                        idx = idx + 32
                        continue 
                    mem[_426 + 68] = mem[_426 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _426 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _412 = mem[64]
                mem[64] = mem[64] + 64
                mem[_412] = 26
                mem[_412 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _446 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _446 + 68] = mem[idx + _412 + 32]
                    idx = idx + 32
                    continue 
                mem[_446 + 68] = mem[_446 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _446 + -mem[64] + 100
            if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _349 = mem[64]
            mem[64] = mem[64] + 64
            mem[_349] = 26
            mem[_349 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * 0 / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _411 = mem[64]
                mem[64] = mem[64] + 64
                mem[_411] = 26
                mem[_411 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _443 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _443 + 68] = mem[idx + _411 + 32]
                    idx = idx + 32
                    continue 
                mem[_443 + 68] = mem[_443 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _443 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _425 = mem[64]
            mem[64] = mem[64] + 64
            mem[_425] = 26
            mem[_425 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _463 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _463 + 68] = mem[idx + _425 + 32]
                idx = idx + 32
                continue 
            mem[_463 + 68] = mem[_463 + 74 len 26]
            revert with memory
              from mem[64]
               len _463 + -mem[64] + 100
        if (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _309 = mem[64]
        mem[64] = mem[64] + 64
        mem[_309] = 26
        mem[_309 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _317 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _317 + 68] = mem[idx + _309 + 32]
                idx = idx + 32
                continue 
            mem[_317 + 68] = mem[_317 + 74 len 26]
            revert with memory
              from mem[64]
               len _317 + -mem[64] + 100
        if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 26
            mem[_348 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                _410 = mem[64]
                mem[64] = mem[64] + 64
                mem[_410] = 26
                mem[_410 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _440 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _440 + 68] = mem[idx + _410 + 32]
                    idx = idx + 32
                    continue 
                mem[_440 + 68] = mem[_440 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _440 + -mem[64] + 100
            if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _424 = mem[64]
            mem[64] = mem[64] + 64
            mem[_424] = 26
            mem[_424 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _460 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _460 + 68] = mem[idx + _424 + 32]
                idx = idx + 32
                continue 
            mem[_460 + 68] = mem[_460 + 74 len 26]
            revert with memory
              from mem[64]
               len _460 + -mem[64] + 100
        if 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 11:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _350 = mem[64]
        mem[64] = mem[64] + 64
        mem[_350] = 26
        mem[_350 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_40f1ea65Address)
        call sub_40f1ea65Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / 89
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_40f1ea65Address)
        call sub_40f1ea65Address.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
            _423 = mem[64]
            mem[64] = mem[64] + 64
            mem[_423] = 26
            mem[_423 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _457 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _457 + 68] = mem[idx + _423 + 32]
                idx = idx + 32
                continue 
            mem[_457 + 68] = mem[_457 + 74 len 26]
            revert with memory
              from mem[64]
               len _457 + -mem[64] + 100
        if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _439 = mem[64]
        mem[64] = mem[64] + 64
        mem[_439] = 26
        mem[_439 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _477 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _477 + 68] = mem[idx + _439 + 32]
            idx = idx + 32
            continue 
        mem[_477 + 68] = mem[_477 + 74 len 26]
        revert with memory
          from mem[64]
           len _477 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
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
        _289 = mem[64]
        mem[64] = mem[64] + 64
        mem[_289] = 30
        mem[_289 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _289 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _305 = mem[64]
            mem[64] = mem[64] + 64
            mem[_305] = 26
            mem[_305 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _310 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _310 + 68] = mem[idx + _305 + 32]
                    idx = idx + 32
                    continue 
                mem[_310 + 68] = mem[_310 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _310 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_343] = 26
                mem[_343 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 26
                    mem[_393 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _409 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _409 + 68] = mem[idx + _393 + 32]
                        idx = idx + 32
                        continue 
                    mem[_409 + 68] = mem[_409 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _409 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _400 = mem[64]
                mem[64] = mem[64] + 64
                mem[_400] = 26
                mem[_400 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _424 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _424 + 68] = mem[idx + _400 + 32]
                    idx = idx + 32
                    continue 
                mem[_424 + 68] = mem[_424 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _424 + -mem[64] + 100
            if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_347] = 26
            mem[_347 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * 0 / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _399 = mem[64]
                mem[64] = mem[64] + 64
                mem[_399] = 26
                mem[_399 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _421 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _421 + 68] = mem[idx + _399 + 32]
                    idx = idx + 32
                    continue 
                mem[_421 + 68] = mem[_421 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _421 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _408 = mem[64]
            mem[64] = mem[64] + 64
            mem[_408] = 26
            mem[_408 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _439 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _439 + 68] = mem[idx + _408 + 32]
                idx = idx + 32
                continue 
            mem[_439 + 68] = mem[_439 + 74 len 26]
            revert with memory
              from mem[64]
               len _439 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _308 = mem[64]
            mem[64] = mem[64] + 64
            mem[_308] = 26
            mem[_308 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _314 + 68] = mem[idx + _308 + 32]
                    idx = idx + 32
                    continue 
                mem[_314 + 68] = mem[_314 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _314 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_346] = 26
                mem[_346 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_398] = 26
                    mem[_398 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _418 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _418 + 68] = mem[idx + _398 + 32]
                        idx = idx + 32
                        continue 
                    mem[_418 + 68] = mem[_418 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _418 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _407 = mem[64]
                mem[64] = mem[64] + 64
                mem[_407] = 26
                mem[_407 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _436 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _436 + 68] = mem[idx + _407 + 32]
                    idx = idx + 32
                    continue 
                mem[_436 + 68] = mem[_436 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _436 + -mem[64] + 100
            if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _351 = mem[64]
            mem[64] = mem[64] + 64
            mem[_351] = 26
            mem[_351 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * 0 / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_406] = 26
                mem[_406 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _433 + 68] = mem[idx + _406 + 32]
                    idx = idx + 32
                    continue 
                mem[_433 + 68] = mem[_433 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _433 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _417 = mem[64]
            mem[64] = mem[64] + 64
            mem[_417] = 26
            mem[_417 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _453 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _453 + 68] = mem[idx + _417 + 32]
                idx = idx + 32
                continue 
            mem[_453 + 68] = mem[_453 + 74 len 26]
            revert with memory
              from mem[64]
               len _453 + -mem[64] + 100
        if (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) / block.number - poolInfo[idx].field_512 != sub_3c1f18df:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df):
            _309 = mem[64]
            mem[64] = mem[64] + 64
            mem[_309] = 26
            mem[_309 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _317 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _317 + 68] = mem[idx + _309 + 32]
                    idx = idx + 32
                    continue 
                mem[_317 + 68] = mem[_317 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _317 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _350 = mem[64]
                mem[64] = mem[64] + 64
                mem[_350] = 26
                mem[_350 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _405 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_405] = 26
                    mem[_405 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _430 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _430 + 68] = mem[idx + _405 + 32]
                        idx = idx + 32
                        continue 
                    mem[_430 + 68] = mem[_430 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _430 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _416 = mem[64]
                mem[64] = mem[64] + 64
                mem[_416] = 26
                mem[_416 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _450 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _450 + 68] = mem[idx + _416 + 32]
                    idx = idx + 32
                    continue 
                mem[_450 + 68] = mem[_450 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _450 + -mem[64] + 100
            if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_353] = 26
            mem[_353 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * 0 / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_415] = 26
                mem[_415 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _447 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _447 + 68] = mem[idx + _415 + 32]
                    idx = idx + 32
                    continue 
                mem[_447 + 68] = mem[_447 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _447 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _429 = mem[64]
            mem[64] = mem[64] + 64
            mem[_429] = 26
            mem[_429 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _467 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _467 + 68] = mem[idx + _429 + 32]
                idx = idx + 32
                continue 
            mem[_467 + 68] = mem[_467 + 74 len 26]
            revert with memory
              from mem[64]
               len _467 + -mem[64] + 100
        if (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _313 = mem[64]
        mem[64] = mem[64] + 64
        mem[_313] = 26
        mem[_313 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _321 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _321 + 68] = mem[idx + _313 + 32]
                idx = idx + 32
                continue 
            mem[_321 + 68] = mem[_321 + 74 len 26]
            revert with memory
              from mem[64]
               len _321 + -mem[64] + 100
        if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 26
            mem[_352 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                _414 = mem[64]
                mem[64] = mem[64] + 64
                mem[_414] = 26
                mem[_414 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _444 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _444 + 68] = mem[idx + _414 + 32]
                    idx = idx + 32
                    continue 
                mem[_444 + 68] = mem[_444 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _444 + -mem[64] + 100
            if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _428 = mem[64]
            mem[64] = mem[64] + 64
            mem[_428] = 26
            mem[_428 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _464 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _464 + 68] = mem[idx + _428 + 32]
                idx = idx + 32
                continue 
            mem[_464 + 68] = mem[_464 + 74 len 26]
            revert with memory
              from mem[64]
               len _464 + -mem[64] + 100
        if 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 11:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _354 = mem[64]
        mem[64] = mem[64] + 64
        mem[_354] = 26
        mem[_354 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_40f1ea65Address)
        call sub_40f1ea65Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / 89
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_40f1ea65Address)
        call sub_40f1ea65Address.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
            _427 = mem[64]
            mem[64] = mem[64] + 64
            mem[_427] = 26
            mem[_427 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _461 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _461 + 68] = mem[idx + _427 + 32]
                idx = idx + 32
                continue 
            mem[_461 + 68] = mem[_461 + 74 len 26]
            revert with memory
              from mem[64]
               len _461 + -mem[64] + 100
        if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _443 = mem[64]
        mem[64] = mem[64] + 64
        mem[_443] = 26
        mem[_443 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _481 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _481 + 68] = mem[idx + _443 + 32]
            idx = idx + 32
            continue 
        mem[_481 + 68] = mem[_481 + 74 len 26]
        revert with memory
          from mem[64]
           len _481 + -mem[64] + 100
    sub_3c1f18df = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
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
            _345 = mem[64]
            mem[64] = mem[64] + 64
            mem[_345] = 30
            mem[_345 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _345 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_362] = 26
                mem[_362 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _367 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _367 + 68] = mem[idx + _362 + 32]
                        idx = idx + 32
                        continue 
                    mem[_367 + 68] = mem[_367 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _367 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_400] = 26
                    mem[_400 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_450] = 26
                        mem[_450 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _466 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _466 + 68] = mem[idx + _450 + 32]
                            idx = idx + 32
                            continue 
                        mem[_466 + 68] = mem[_466 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _466 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_457] = 26
                    mem[_457 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _481 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _481 + 68] = mem[idx + _457 + 32]
                        idx = idx + 32
                        continue 
                    mem[_481 + 68] = mem[_481 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _481 + -mem[64] + 100
                if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_404] = 26
                mem[_404 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 11 * 0 / totalAllocPoint / 89
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _456 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_456] = 26
                    mem[_456 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _478 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _478 + 68] = mem[idx + _456 + 32]
                        idx = idx + 32
                        continue 
                    mem[_478 + 68] = mem[_478 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _478 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _465 = mem[64]
                mem[64] = mem[64] + 64
                mem[_465] = 26
                mem[_465 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _496 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _496 + 68] = mem[idx + _465 + 32]
                    idx = idx + 32
                    continue 
                mem[_496 + 68] = mem[_496 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _496 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_365] = 26
                mem[_365 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _371 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _371 + 68] = mem[idx + _365 + 32]
                        idx = idx + 32
                        continue 
                    mem[_371 + 68] = mem[_371 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _371 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_403] = 26
                    mem[_403 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_455] = 26
                        mem[_455 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _475 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _475 + 68] = mem[idx + _455 + 32]
                            idx = idx + 32
                            continue 
                        mem[_475 + 68] = mem[_475 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _475 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_464] = 26
                    mem[_464 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _493 + 68] = mem[idx + _464 + 32]
                        idx = idx + 32
                        continue 
                    mem[_493 + 68] = mem[_493 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _493 + -mem[64] + 100
                if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_408] = 26
                mem[_408 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 11 * 0 / totalAllocPoint / 89
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _463 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_463] = 26
                    mem[_463 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _490 + 68] = mem[idx + _463 + 32]
                        idx = idx + 32
                        continue 
                    mem[_490 + 68] = mem[_490 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _490 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _474 = mem[64]
                mem[64] = mem[64] + 64
                mem[_474] = 26
                mem[_474 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _510 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _510 + 68] = mem[idx + _474 + 32]
                    idx = idx + 32
                    continue 
                mem[_510 + 68] = mem[_510 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _510 + -mem[64] + 100
            if (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) / block.number - poolInfo[idx].field_512 != sub_3c1f18df:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df):
                _366 = mem[64]
                mem[64] = mem[64] + 64
                mem[_366] = 26
                mem[_366 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _374 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _374 + 68] = mem[idx + _366 + 32]
                        idx = idx + 32
                        continue 
                    mem[_374 + 68] = mem[_374 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _374 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_407] = 26
                    mem[_407 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _462 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_462] = 26
                        mem[_462 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _487 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _487 + 68] = mem[idx + _462 + 32]
                            idx = idx + 32
                            continue 
                        mem[_487 + 68] = mem[_487 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _487 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_473] = 26
                    mem[_473 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _507 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _507 + 68] = mem[idx + _473 + 32]
                        idx = idx + 32
                        continue 
                    mem[_507 + 68] = mem[_507 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _507 + -mem[64] + 100
                if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _410 = mem[64]
                mem[64] = mem[64] + 64
                mem[_410] = 26
                mem[_410 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 11 * 0 / totalAllocPoint / 89
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_472] = 26
                    mem[_472 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _504 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _504 + 68] = mem[idx + _472 + 32]
                        idx = idx + 32
                        continue 
                    mem[_504 + 68] = mem[_504 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _504 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _486 = mem[64]
                mem[64] = mem[64] + 64
                mem[_486] = 26
                mem[_486 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _524 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _524 + 68] = mem[idx + _486 + 32]
                    idx = idx + 32
                    continue 
                mem[_524 + 68] = mem[_524 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _524 + -mem[64] + 100
            if (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _370 = mem[64]
            mem[64] = mem[64] + 64
            mem[_370] = 26
            mem[_370 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _378 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _378 + 68] = mem[idx + _370 + 32]
                    idx = idx + 32
                    continue 
                mem[_378 + 68] = mem[_378 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _378 + -mem[64] + 100
            if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = 26
                mem[_409 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                    _471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_471] = 26
                    mem[_471 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _501 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _501 + 68] = mem[idx + _471 + 32]
                        idx = idx + 32
                        continue 
                    mem[_501 + 68] = mem[_501 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _501 + -mem[64] + 100
                if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _485 = mem[64]
                mem[64] = mem[64] + 64
                mem[_485] = 26
                mem[_485 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _521 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _521 + 68] = mem[idx + _485 + 32]
                    idx = idx + 32
                    continue 
                mem[_521 + 68] = mem[_521 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _521 + -mem[64] + 100
            if 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _411 = mem[64]
            mem[64] = mem[64] + 64
            mem[_411] = 26
            mem[_411 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                _484 = mem[64]
                mem[64] = mem[64] + 64
                mem[_484] = 26
                mem[_484 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _518 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _518 + 68] = mem[idx + _484 + 32]
                    idx = idx + 32
                    continue 
                mem[_518 + 68] = mem[_518 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _518 + -mem[64] + 100
            if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _500 = mem[64]
            mem[64] = mem[64] + 64
            mem[_500] = 26
            mem[_500 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _538 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _538 + 68] = mem[idx + _500 + 32]
                idx = idx + 32
                continue 
            mem[_538 + 68] = mem[_538 + 74 len 26]
            revert with memory
              from mem[64]
               len _538 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
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
            _339 = mem[64]
            mem[64] = mem[64] + 64
            mem[_339] = 30
            mem[_339 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _339 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 26
                mem[_355 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _360 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _360 + 68] = mem[idx + _355 + 32]
                        idx = idx + 32
                        continue 
                    mem[_360 + 68] = mem[_360 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _360 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 26
                    mem[_393 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_443] = 26
                        mem[_443 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _459 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _459 + 68] = mem[idx + _443 + 32]
                            idx = idx + 32
                            continue 
                        mem[_459 + 68] = mem[_459 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _459 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _450 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_450] = 26
                    mem[_450 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _474 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _474 + 68] = mem[idx + _450 + 32]
                        idx = idx + 32
                        continue 
                    mem[_474 + 68] = mem[_474 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _474 + -mem[64] + 100
                if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _397 = mem[64]
                mem[64] = mem[64] + 64
                mem[_397] = 26
                mem[_397 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 11 * 0 / totalAllocPoint / 89
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _449 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_449] = 26
                    mem[_449 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _471 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _471 + 68] = mem[idx + _449 + 32]
                        idx = idx + 32
                        continue 
                    mem[_471 + 68] = mem[_471 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _471 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _458 = mem[64]
                mem[64] = mem[64] + 64
                mem[_458] = 26
                mem[_458 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _489 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _489 + 68] = mem[idx + _458 + 32]
                    idx = idx + 32
                    continue 
                mem[_489 + 68] = mem[_489 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _489 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _358 = mem[64]
                mem[64] = mem[64] + 64
                mem[_358] = 26
                mem[_358 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _364 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _364 + 68] = mem[idx + _358 + 32]
                        idx = idx + 32
                        continue 
                    mem[_364 + 68] = mem[_364 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _364 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_396] = 26
                    mem[_396 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_448] = 26
                        mem[_448 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _468 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _468 + 68] = mem[idx + _448 + 32]
                            idx = idx + 32
                            continue 
                        mem[_468 + 68] = mem[_468 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _468 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_457] = 26
                    mem[_457 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _486 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _486 + 68] = mem[idx + _457 + 32]
                        idx = idx + 32
                        continue 
                    mem[_486 + 68] = mem[_486 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _486 + -mem[64] + 100
                if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_401] = 26
                mem[_401 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 11 * 0 / totalAllocPoint / 89
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _456 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_456] = 26
                    mem[_456 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _483 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _483 + 68] = mem[idx + _456 + 32]
                        idx = idx + 32
                        continue 
                    mem[_483 + 68] = mem[_483 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _483 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_467] = 26
                mem[_467 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _503 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _503 + 68] = mem[idx + _467 + 32]
                    idx = idx + 32
                    continue 
                mem[_503 + 68] = mem[_503 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _503 + -mem[64] + 100
            if (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) / block.number - poolInfo[idx].field_512 != sub_3c1f18df:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df):
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = 26
                mem[_359 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _367 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _367 + 68] = mem[idx + _359 + 32]
                        idx = idx + 32
                        continue 
                    mem[_367 + 68] = mem[_367 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _367 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_400] = 26
                    mem[_400 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_40f1ea65Address)
                    call sub_40f1ea65Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_455] = 26
                        mem[_455 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _480 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _480 + 68] = mem[idx + _455 + 32]
                            idx = idx + 32
                            continue 
                        mem[_480 + 68] = mem[_480 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _480 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _466 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_466] = 26
                    mem[_466 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _500 + 68] = mem[idx + _466 + 32]
                        idx = idx + 32
                        continue 
                    mem[_500 + 68] = mem[_500 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _500 + -mem[64] + 100
                if 11 * 0 / totalAllocPoint / 0 / totalAllocPoint != 11:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_403] = 26
                mem[_403 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 11 * 0 / totalAllocPoint / 89
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_465] = 26
                    mem[_465 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _497 + 68] = mem[idx + _465 + 32]
                        idx = idx + 32
                        continue 
                    mem[_497 + 68] = mem[_497 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _497 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _479 = mem[64]
                mem[64] = mem[64] + 64
                mem[_479] = 26
                mem[_479 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _517 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _517 + 68] = mem[idx + _479 + 32]
                    idx = idx + 32
                    continue 
                mem[_517 + 68] = mem[_517 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _517 + -mem[64] + 100
            if (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / (block.number * sub_3c1f18df) - (poolInfo[idx].field_512 * sub_3c1f18df) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _363 = mem[64]
            mem[64] = mem[64] + 64
            mem[_363] = 26
            mem[_363 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _371 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _371 + 68] = mem[idx + _363 + 32]
                    idx = idx + 32
                    continue 
                mem[_371 + 68] = mem[_371 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _371 + -mem[64] + 100
            if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                _402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_402] = 26
                mem[_402 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_40f1ea65Address)
                call sub_40f1ea65Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                    _464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_464] = 26
                    mem[_464 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _494 + 68] = mem[idx + _464 + 32]
                        idx = idx + 32
                        continue 
                    mem[_494 + 68] = mem[_494 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _494 + -mem[64] + 100
                if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _478 = mem[64]
                mem[64] = mem[64] + 64
                mem[_478] = 26
                mem[_478 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _514 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _514 + 68] = mem[idx + _478 + 32]
                    idx = idx + 32
                    continue 
                mem[_514 + 68] = mem[_514 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _514 + -mem[64] + 100
            if 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 11:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _404 = mem[64]
            mem[64] = mem[64] + 64
            mem[_404] = 26
            mem[_404 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 11 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / 89
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_40f1ea65Address)
            call sub_40f1ea65Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint:
                _477 = mem[64]
                mem[64] = mem[64] + 64
                mem[_477] = 26
                mem[_477 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _511 + 68] = mem[idx + _477 + 32]
                    idx = idx + 32
                    continue 
                mem[_511 + 68] = mem[_511 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _511 + -mem[64] + 100
            if 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _493 = mem[64]
            mem[64] = mem[64] + 64
            mem[_493] = 26
            mem[_493 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_3c1f18df * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3c1f18df * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _531 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _531 + 68] = mem[idx + _493 + 32]
                idx = idx + 32
                continue 
            mem[_531 + 68] = mem[_531 + 74 len 26]
            revert with memory
              from mem[64]
               len _531 + -mem[64] + 100
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
    stor36B6[stor5.length] = arg3
}



}
