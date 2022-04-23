contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
uint256 stor1;
address HALLOWEENAddress;
address devaddr;
uint256 hALLOWEENPerSec;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
mapping of uint8 stor10;

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
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function HALLOWEENPerSec() payable {
    return hALLOWEENPerSec
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function HALLOWEEN() payable {
    return HALLOWEENAddress
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function devaddr() payable {
    return devaddr
}

function startTimestamp() payable {
    return startTimestamp
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, '!nonzero'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x7363616e6e6f74206368616e67652073746172742074696d657374616d70206966206661726d2068617320616c726561647920737461727465,
                    mem[221 len 7]
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7363616e6e6f74207365742073746172742074696d657374616d7020696e2074686520706173,
                    mem[202 len 26]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
    startTimestamp = arg1
    emit UpdateStartTimestamp(startTimestamp);
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if poolInfo[arg1].field_1280 < userInfo[arg1][address(msg.sender)].field_0:
        poolInfo[arg1].field_1280 = 0
    else:
        if userInfo[arg1][address(msg.sender)].field_0 > poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_1280 -= userInfo[arg1][address(msg.sender)].field_0
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(HALLOWEENAddress)
                    call HALLOWEENAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(HALLOWEENAddress)
                    call HALLOWEENAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1280
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1280
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec) / block.timestamp - poolInfo[arg1].field_512 != hALLOWEENPerSec:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        require (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec)
                        if (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            require (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) / block.timestamp - poolInfo[idx].field_512 != hALLOWEENPerSec:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec)
                            if (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) / block.timestamp - poolInfo[idx].field_512 != hALLOWEENPerSec:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec)
                            if (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    hALLOWEENPerSec = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) / block.timestamp - poolInfo[idx].field_512 != hALLOWEENPerSec:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec)
                                if (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
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
    poolInfo[arg1].field_1024 = arg3
    emit setPool(poolInfo[arg1].field_0, arg2, arg3, arg1);
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x646164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(HALLOWEENAddress)
                            call HALLOWEENAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) / block.timestamp - poolInfo[idx].field_512 != hALLOWEENPerSec:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec)
                                if (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / (block.timestamp * hALLOWEENPerSec) - (poolInfo[idx].field_512 * hALLOWEENPerSec) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(HALLOWEENAddress)
                                call HALLOWEENAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * hALLOWEENPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor10[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTimestamp:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTimestamp
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = 0
    emit addPool(address(arg2), arg1, arg3, poolInfo.length - 1);
}

function pendingHALLOWEEN(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if totalAllocPoint <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
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
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.timestamp - poolInfo[arg1].field_512
    if (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec) / block.timestamp - poolInfo[arg1].field_512 != hALLOWEENPerSec:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec)
    if (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg1].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1280
    if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                require ext_code.size(HALLOWEENAddress)
                staticcall HALLOWEENAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(HALLOWEENAddress)
                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call HALLOWEENAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                else:
                    call HALLOWEENAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                mem[202 len 26]
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if arg2 > poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    poolInfo[arg1].field_1280 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if arg2 > poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    poolInfo[arg1].field_1280 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if arg2 > poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_1280 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if arg2 > poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_1280 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                require ext_code.size(HALLOWEENAddress)
                staticcall HALLOWEENAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(HALLOWEENAddress)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call HALLOWEENAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call HALLOWEENAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                mem[202 len 26]
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if arg2 > poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_1280 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if arg2 > poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_1280 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    else:
        if not poolInfo[arg1].field_1280:
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if arg2 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1280 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if arg2 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1280 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    require ext_code.size(HALLOWEENAddress)
                    staticcall HALLOWEENAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(HALLOWEENAddress)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call HALLOWEENAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                        mem[202 len 26]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        call HALLOWEENAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                        mem[202 len 26]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if arg2 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1280 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if arg2 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1280 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    require ext_code.size(HALLOWEENAddress)
                    staticcall HALLOWEENAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(HALLOWEENAddress)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call HALLOWEENAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                        mem[202 len 26]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        call HALLOWEENAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                        mem[202 len 26]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.timestamp
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require ext_code.size(HALLOWEENAddress)
                        staticcall HALLOWEENAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(HALLOWEENAddress)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call HALLOWEENAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call HALLOWEENAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                        mem[202 len 26]
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if arg2 > poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1280 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(HALLOWEENAddress)
                        staticcall HALLOWEENAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(HALLOWEENAddress)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call HALLOWEENAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call HALLOWEENAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                        mem[202 len 26]
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if arg2 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1280 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if arg2 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1280 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(HALLOWEENAddress)
                    call HALLOWEENAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(HALLOWEENAddress)
                    call HALLOWEENAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1280
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[324 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require ext_code.size(HALLOWEENAddress)
                                staticcall HALLOWEENAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(HALLOWEENAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(HALLOWEENAddress)
                                staticcall HALLOWEENAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(HALLOWEENAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                mem[202 len 26]
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if arg2 > poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1280 -= arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if arg2 > poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1280 -= arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1280
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(HALLOWEENAddress)
                                staticcall HALLOWEENAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(HALLOWEENAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                mem[202 len 26]
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if arg2 > poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1280 -= arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if arg2 > poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1280 -= arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require ext_code.size(HALLOWEENAddress)
                                staticcall HALLOWEENAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(HALLOWEENAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    call HALLOWEENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec) / block.timestamp - poolInfo[arg1].field_512 != hALLOWEENPerSec:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        require (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec)
                        if (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / (block.timestamp * hALLOWEENPerSec) - (poolInfo[arg1].field_512 * hALLOWEENPerSec) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(HALLOWEENAddress)
                        call HALLOWEENAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeBEP20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if arg2 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1280 -= arg2
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[202 len 26]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeBEP20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[292]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if arg2 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                poolInfo[arg1].field_1280 -= arg2
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                        if arg2 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1280 -= arg2
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * hALLOWEENPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * hALLOWEENPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(HALLOWEENAddress)
                                    staticcall HALLOWEENAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(HALLOWEENAddress)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call HALLOWEENAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0xfe7361666548414c4c4f5745454e5472616e736665723a207472616e73666572206661696c65,
                                                    mem[202 len 26]
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if arg2 > poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1280 -= arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                    if arg2 > poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1280 -= arg2
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
