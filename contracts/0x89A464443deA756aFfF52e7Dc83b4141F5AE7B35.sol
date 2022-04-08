contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address singAddress;
address devaddr;
address stor4;
uint256 sub_c2200d4b;
address sub_75983a09Address;
address sub_9b9fb0b8Address;
address sub_c12f857fAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;

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
           poolInfo[arg1].field_1280,
           bool(poolInfo[arg1].field_1536),
           poolInfo[arg1].field_1792,
           poolInfo[arg1].field_2048,
           poolInfo[arg1].field_2304,
           poolInfo[arg1].field_2560
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_75983a09(?) payable {
    return sub_75983a09Address
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_9b9fb0b8(?) payable {
    return sub_9b9fb0b8Address
}

function sing() payable {
    return singAddress
}

function sub_c12f857f(?) payable {
    return sub_c12f857fAddress
}

function sub_c2200d4b(?) payable {
    return sub_c2200d4b
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

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    stor4 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function initiate(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg5 <= block.timestamp:
        if poolInfo.length:
            revert with 0, 'start block passed'
    startTime = arg5
    singAddress = arg1
    devaddr = arg2
    stor4 = arg3
    sub_c2200d4b = arg4
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        poolInfo[idx].field_512 = startTime
        idx = idx + 1
        continue 
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
                    require ext_code.size(singAddress)
                    call singAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(singAddress)
                    call singAddress.0x40c10f19 with:
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
                    if (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b) / block.timestamp - poolInfo[arg1].field_512 != sub_c2200d4b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
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
                        require (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b)
                        if (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            require (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.timestamp > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
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
                        if (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) / block.timestamp - poolInfo[idx].field_512 != sub_c2200d4b:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
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
                            require (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b)
                            if (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10^18:
        revert with 0, 'too large'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.timestamp > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(singAddress)
                        call singAddress.0x40c10f19 with:
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
                        if (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) / block.timestamp - poolInfo[idx].field_512 != sub_c2200d4b:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
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
                            require (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b)
                            if (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    sub_c2200d4b = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4, uint256 arg5, uint256 arg6, bool arg7) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0, 'max 4%'
    if arg7:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
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
                            if (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) / block.timestamp - poolInfo[idx].field_512 != sub_c2200d4b:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
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
                                require (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b)
                                if (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1536 = uint8(arg4)
    poolInfo[arg1].field_1792 = arg5
    poolInfo[arg1].field_2304 = arg6
}

function sub_44c52704(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0, 'max 4%'
    if arg7:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(singAddress)
                            call singAddress.0x40c10f19 with:
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
                            if (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) / block.timestamp - poolInfo[idx].field_512 != sub_c2200d4b:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
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
                                require (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b)
                                if (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / (block.timestamp * sub_c2200d4b) - (poolInfo[idx].field_512 * sub_c2200d4b) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(singAddress)
                                call singAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c2200d4b * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTime
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = 0
    poolInfo[poolInfo.length].field_1536 = uint8(arg4)
    poolInfo[poolInfo.length].field_1792 = arg5
    poolInfo[poolInfo.length].field_2048 = 0
    poolInfo[poolInfo.length].field_2304 = arg6
    poolInfo[poolInfo.length].field_2560 = 0
}

function pendingEarned(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_1536:
        return 0
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_2560 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_2560:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_2560 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_2560 / 10^12) - userInfo[arg1][address(arg2)].field_512)
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = poolInfo[arg1].field_1792
    mem[132] = this.address
    require ext_code.size(sub_75983a09Address)
    staticcall sub_75983a09Address.pendingTokens(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolInfo[arg1].field_1792, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _9 = mem[96 len 4], poolInfo[arg1].field_1824
    _11 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= 4294967296
    require 0, mem[164 len 28] + 32 <= return_data.size
    require mem[0, mem[164 len 28] + 96] <= 4294967296 and 0, mem[164 len 28] + mem[0, mem[164 len 28] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[0, mem[164 len 28] + 96]
    _16 = mem[_11 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_11 + 96])] = mem[_11 + 128 len ceil32(mem[_11 + 96])]
    if not _16 % 32:
        if not _9:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_2560:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_16 + ceil32(return_data.size) + 229 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
        require _9
        if (100 * _9) - (poolInfo[arg1].field_2304 * _9) / _9 != -poolInfo[arg1].field_2304 + 100:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_16 + ceil32(return_data.size) + 229 len 31]
        if not (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_2560:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[_16 + ceil32(return_data.size) + 229 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
        require (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100
        if 10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 != 10^12:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_16 + ceil32(return_data.size) + 229 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_2560 + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_2560:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_2560 + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280):
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[_16 + ceil32(return_data.size) + 229 len 31]
    else:
        if not _9:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_2560:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_16) + ceil32(return_data.size) + 261 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
        require _9
        if (100 * _9) - (poolInfo[arg1].field_2304 * _9) / _9 != -poolInfo[arg1].field_2304 + 100:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_16) + ceil32(return_data.size) + 261 len 31]
        if not (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_2560:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_2560 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_16) + ceil32(return_data.size) + 261 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
        require (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100
        if 10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 != 10^12:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_16) + ceil32(return_data.size) + 261 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_2560 + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_2560:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_2560 + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280):
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[floor32(_16) + ceil32(return_data.size) + 261 len 31]
    ('eq', ('div', ('add', ('mul', ('field', 2560, ('stor', ('array', ('mul', 11, ('param', 'arg1')), ('name', 'poolInfo', 9)))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 10)))))), ('mul', ('div', ('mul', 1000000000000, ('div', ('add', ('mul', 100, ('var', '_9')), ('mul', -1, ('field', 2304, ('stor', ('array', ('mul', 11, ('param', 'arg1')), ('name', 'poolInfo', 9)))), ('var', '_9'))), 100)), ('field', 1280, ('stor', ('array', ('mul', 11, ('param', 'arg1')), ('name', 'poolInfo', 9))))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 10))))))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 10)))))), ('add', ('field', 2560, ('stor', ('array', ('mul', 11, ('param', 'arg1')), ('name', 'poolInfo', 9)))), ('div', ('mul', 1000000000000, ('div', ('add', ('mul', 100, ('var', '_9')), ('mul', -1, ('field', 2304, ('stor', ('array', ('mul', 11, ('param', 'arg1')), ('name', 'poolInfo', 9)))), ('var', '_9'))), 100)), ('field', 1280, ('stor', ('array', ('mul', 11, ('param', 'arg1')), ('name', 'poolInfo', 9)))))))
    if userInfo[arg1][address(arg2)].field_512 > (poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_2560 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (100 * _9) - (poolInfo[arg1].field_2304 * _9) / 100 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
}

function pendingSing(uint256 arg1, address arg2) payable {
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
    if (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b) / block.timestamp - poolInfo[arg1].field_512 != sub_c2200d4b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b):
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
    require (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b)
    if (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / (block.timestamp * sub_c2200d4b) - (poolInfo[arg1].field_512 * sub_c2200d4b) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint:
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
    require (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg1].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1280
    if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_c2200d4b * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c2200d4b * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}



}
