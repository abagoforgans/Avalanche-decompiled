contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const MAX_EMISSION_RATE = 5 * 10^16


address owner;
uint256 stor1;
address sub_e1d9dd19Address;
address devaddr;
uint256 sub_e2dff859;
uint32 stor5;
address feeAddress;
uint256 stor5;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
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
    return address(feeAddress)
}

function startTime() payable {
    return startTime
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
    return bool(stor10[arg1])
}

function devaddr() payable {
    return devaddr
}

function sub_e1d9dd19(?) payable {
    return sub_e1d9dd19Address
}

function sub_e2dff859(?) payable {
    return sub_e2dff859
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
    if not arg1:
        revert with 0, '!nonzero'
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(feeAddress) != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, '!nonzero'
    address(feeAddress) = arg1
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

function updateStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x7463616e6e6f74206368616e67652073746172742074696d65206966206661726d2068617320616c726561647920737461727465,
                    mem[216 len 12]
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c63616e6e6f74207365742073746172742074696d6520696e2074686520706173,
                    mem[197 len 31]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
    startTime = arg1
    emit UpdateStartTime(startTime);
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
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
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
            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(sub_e1d9dd19Address)
                    staticcall sub_e1d9dd19Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / totalAllocPoint < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(sub_e1d9dd19Address)
                    if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                        call sub_e1d9dd19Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_e1d9dd19Address)
                        call sub_e1d9dd19Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 50000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        call sub_e1d9dd19Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -ext_call.return_data[0] + 50000 * 10^18:
                            require -ext_call.return_data[0] + 50000 * 10^18
                            if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859) / block.timestamp - poolInfo[arg1].field_512 != sub_e2dff859:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / totalAllocPoint < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 50000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -ext_call.return_data[0] + 50000 * 10^18:
                                require -ext_call.return_data[0] + 50000 * 10^18
                                if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280
                    else:
                        require (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859)
                        if (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10) + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint) <= 50000 * 10^18:
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint:
                                require (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 50000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -ext_call.return_data[0] + 50000 * 10^18:
                                require -ext_call.return_data[0] + 50000 * 10^18
                                if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280
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
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / totalAllocPoint < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 50000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -ext_call.return_data[0] + 50000 * 10^18:
                                require -ext_call.return_data[0] + 50000 * 10^18
                                if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) / block.timestamp - poolInfo[idx].field_512 != sub_e2dff859:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if -ext_call.return_data[0] + 50000 * 10^18:
                                    require -ext_call.return_data[0] + 50000 * 10^18
                                    if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                        else:
                            require (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859)
                            if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint) <= 50000 * 10^18:
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if -ext_call.return_data[0] + 50000 * 10^18:
                                    require -ext_call.return_data[0] + 50000 * 10^18
                                    if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5 * 10^16:
        revert with 0, 'Emission too high'
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
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / totalAllocPoint < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 50000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -ext_call.return_data[0] + 50000 * 10^18:
                                require -ext_call.return_data[0] + 50000 * 10^18
                                if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) / block.timestamp - poolInfo[idx].field_512 != sub_e2dff859:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if -ext_call.return_data[0] + 50000 * 10^18:
                                    require -ext_call.return_data[0] + 50000 * 10^18
                                    if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                        else:
                            require (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859)
                            if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint) <= 50000 * 10^18:
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if -ext_call.return_data[0] + 50000 * 10^18:
                                    require -ext_call.return_data[0] + 50000 * 10^18
                                    if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    sub_e2dff859 = arg1
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
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if -ext_call.return_data[0] + 50000 * 10^18:
                                    require -ext_call.return_data[0] + 50000 * 10^18
                                    if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) / block.timestamp - poolInfo[idx].field_512 != sub_e2dff859:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_e1d9dd19Address)
                                if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    staticcall sub_e1d9dd19Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 50000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if -ext_call.return_data[0] + 50000 * 10^18:
                                        require -ext_call.return_data[0] + 50000 * 10^18
                                        if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859)
                                if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_e1d9dd19Address)
                                if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint) <= 50000 * 10^18:
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint:
                                        require (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    staticcall sub_e1d9dd19Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 50000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if -ext_call.return_data[0] + 50000 * 10^18:
                                        require -ext_call.return_data[0] + 50000 * 10^18
                                        if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
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
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
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
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                require ext_code.size(sub_e1d9dd19Address)
                                call sub_e1d9dd19Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if -ext_call.return_data[0] + 50000 * 10^18:
                                    require -ext_call.return_data[0] + 50000 * 10^18
                                    if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) / block.timestamp - poolInfo[idx].field_512 != sub_e2dff859:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_e1d9dd19Address)
                                if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    staticcall sub_e1d9dd19Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 50000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if -ext_call.return_data[0] + 50000 * 10^18:
                                        require -ext_call.return_data[0] + 50000 * 10^18
                                        if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
                            else:
                                require (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859)
                                if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / (block.timestamp * sub_e2dff859) - (poolInfo[idx].field_512 * sub_e2dff859) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_e1d9dd19Address)
                                staticcall sub_e1d9dd19Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_e1d9dd19Address)
                                if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10) + ((block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint) <= 50000 * 10^18:
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint:
                                        require (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_e2dff859 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    staticcall sub_e1d9dd19Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 50000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 50000 * 10^18
                                    require ext_code.size(sub_e1d9dd19Address)
                                    call sub_e1d9dd19Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if -ext_call.return_data[0] + 50000 * 10^18:
                                        require -ext_call.return_data[0] + 50000 * 10^18
                                        if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[idx].field_1280
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
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTime
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = 0
    emit addPool(address(arg2), arg1, arg3, poolInfo.length - 1);
}

function sub_83c4e75d(?) payable {
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        require ext_code.size(sub_e1d9dd19Address)
        staticcall sub_e1d9dd19Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / totalAllocPoint < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
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
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    else:
        require block.timestamp - poolInfo[arg1].field_512
        if (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859) / block.timestamp - poolInfo[arg1].field_512 != sub_e2dff859:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            require ext_code.size(sub_e1d9dd19Address)
            staticcall sub_e1d9dd19Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / totalAllocPoint < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
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
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if poolInfo[arg1].field_1280 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1280
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        else:
            require (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859)
            if (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859) != poolInfo[arg1].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            require ext_code.size(sub_e1d9dd19Address)
            staticcall sub_e1d9dd19Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10) < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10) + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint) <= 50000 * 10^18:
                if not (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint:
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
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint
                if 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if poolInfo[arg1].field_1280 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1280
                if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(sub_e1d9dd19Address)
    staticcall sub_e1d9dd19Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 50000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -ext_call.return_data[0] + 50000 * 10^18:
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require -ext_call.return_data[0] + 50000 * 10^18
    if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg1].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1280
    if poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 > 0:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_e1d9dd19Address)
                    staticcall sub_e1d9dd19Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_e1d9dd19Address)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_e1d9dd19Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_e1d9dd19Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                    mem[210 len 18]
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_e1d9dd19Address)
                    staticcall sub_e1d9dd19Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_e1d9dd19Address)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_e1d9dd19Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_e1d9dd19Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                    mem[210 len 18]
        if arg2 <= 0:
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
            emit Deposit(arg2, msg.sender, arg1);
        else:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if poolInfo[arg1].field_1024 <= 0:
                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                mem[324 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
            emit Deposit(0, msg.sender, arg1);
    else:
        if not poolInfo[arg1].field_1280:
            poolInfo[arg1].field_512 = block.timestamp
            if userInfo[arg1][address(msg.sender)].field_0 > 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_e1d9dd19Address)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_e1d9dd19Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_e1d9dd19Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                        mem[210 len 18]
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_e1d9dd19Address)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_e1d9dd19Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_e1d9dd19Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                        mem[210 len 18]
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                emit Deposit(arg2, msg.sender, arg1);
            else:
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolInfo[arg1].field_0)
                call poolInfo[arg1].field_0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if poolInfo[arg1].field_1024 <= 0:
                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                    mem[324 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                emit Deposit(0, msg.sender, arg1);
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.timestamp
                if userInfo[arg1][address(msg.sender)].field_0 > 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_e1d9dd19Address)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_e1d9dd19Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_e1d9dd19Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                            mem[210 len 18]
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_e1d9dd19Address)
                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_e1d9dd19Address)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_e1d9dd19Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_e1d9dd19Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                            mem[210 len 18]
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolInfo[arg1].field_0)
                    call poolInfo[arg1].field_0.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_1024 <= 0:
                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                        mem[324 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                    emit Deposit(0, msg.sender, arg1);
            else:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_e1d9dd19Address)
                    staticcall sub_e1d9dd19Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / totalAllocPoint < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(sub_e1d9dd19Address)
                    if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                        call sub_e1d9dd19Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_e1d9dd19Address)
                        call sub_e1d9dd19Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            poolInfo[arg1].field_512 = block.timestamp
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(stor5)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(0, msg.sender, arg1);
                            else:
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args 0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[210 len 18]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                        else:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_512 = block.timestamp
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(stor5)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(0, msg.sender, arg1);
                            else:
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args 0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[210 len 18]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[210 len 18]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                    else:
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 50000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        call sub_e1d9dd19Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not -ext_call.return_data[0] + 50000 * 10^18:
                            poolInfo[arg1].field_512 = block.timestamp
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(stor5)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(0, msg.sender, arg1);
                            else:
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args 0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[210 len 18]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[210 len 18]
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                        else:
                            require -ext_call.return_data[0] + 50000 * 10^18
                            if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_512 = block.timestamp
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(stor5)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(0, msg.sender, arg1);
                            else:
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
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args 0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args 0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859) / block.timestamp - poolInfo[arg1].field_512 != sub_e2dff859:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / totalAllocPoint < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        if ext_call.return_data[0] + (0 / totalAllocPoint / 10) + (0 / totalAllocPoint) <= 50000 * 10^18:
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            poolInfo[arg1].field_512 = block.timestamp
                            if userInfo[arg1][address(msg.sender)].field_0 > 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[210 len 18]
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                        require ext_code.size(sub_e1d9dd19Address)
                                        staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_e1d9dd19Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_e1d9dd19Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                        mem[210 len 18]
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(poolInfo[arg1].field_0)
                                call poolInfo[arg1].field_0.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if poolInfo[arg1].field_1024 <= 0:
                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                    mem[324 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(stor5)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0 > poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                emit Deposit(0, msg.sender, arg1);
                        else:
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 50000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not -ext_call.return_data[0] + 50000 * 10^18:
                                poolInfo[arg1].field_512 = block.timestamp
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                                else:
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                                mem[210 len 18]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(arg2, msg.sender, arg1);
                                                else:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if poolInfo[arg1].field_1024 <= 0:
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[197 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    else:
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        call poolInfo[arg1].field_0 with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args 0, mem[324 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[ceil32(return_data.size) + 371 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(0, msg.sender, arg1);
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                                mem[210 len 18]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(arg2, msg.sender, arg1);
                                                else:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if poolInfo[arg1].field_1024 <= 0:
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[197 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    else:
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        mem[324 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[ceil32(return_data.size) + 371 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                            else:
                                require -ext_call.return_data[0] + 50000 * 10^18
                                if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280
                                poolInfo[arg1].field_512 = block.timestamp
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args 0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                                else:
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args 0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                    else:
                        require (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859)
                        if (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / (block.timestamp * sub_e2dff859) - (poolInfo[arg1].field_512 * sub_e2dff859) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_e1d9dd19Address)
                        staticcall sub_e1d9dd19Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_e1d9dd19Address)
                        if ext_call.return_data[0] + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10) + ((block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint) <= 50000 * 10^18:
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint:
                                poolInfo[arg1].field_512 = block.timestamp
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                                else:
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                                mem[210 len 18]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(arg2, msg.sender, arg1);
                                                else:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if poolInfo[arg1].field_1024 <= 0:
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[197 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    else:
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        call poolInfo[arg1].field_0 with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args 0, mem[324 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[ceil32(return_data.size) + 371 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(0, msg.sender, arg1);
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                                mem[210 len 18]
                                                if arg2 <= 0:
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(arg2, msg.sender, arg1);
                                                else:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if poolInfo[arg1].field_1024 <= 0:
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[197 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    else:
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        mem[324 len 0] = 0
                                                        call poolInfo[arg1].field_0 with:
                                                           funct uint32(stor5)
                                                             gas gas_remaining wei
                                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[ceil32(return_data.size) + 371 len 22]
                                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > poolInfo[arg1].field_1280:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                                            else:
                                                                require userInfo[arg1][address(msg.sender)].field_0
                                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                    emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                            else:
                                require (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_e2dff859 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_e2dff859 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                poolInfo[arg1].field_512 = block.timestamp
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                                else:
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args 0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                        else:
                            staticcall sub_e1d9dd19Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 50000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_e1d9dd19Address)
                            call sub_e1d9dd19Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not -ext_call.return_data[0] + 50000 * 10^18:
                                poolInfo[arg1].field_512 = block.timestamp
                                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        call poolInfo[arg1].field_0.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            mem[324 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(stor5)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                    revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                    0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                        emit Deposit(0, msg.sender, arg1);
                                else:
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
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args 0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                        else:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                call poolInfo[arg1].field_0.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if poolInfo[arg1].field_1024 <= 0:
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                else:
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    mem[324 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct uint32(stor5)
                                                         gas gas_remaining wei
                                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > poolInfo[arg1].field_1280:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                                        else:
                                                            require userInfo[arg1][address(msg.sender)].field_0
                                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                                emit Deposit(0, msg.sender, arg1);
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            call poolInfo[arg1].field_0.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                mem[324 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct uint32(stor5)
                                                     gas gas_remaining wei
                                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                        revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                        0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                    if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > poolInfo[arg1].field_1280:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                            emit Deposit(0, msg.sender, arg1);
                            else:
                                require -ext_call.return_data[0] + 50000 * 10^18
                                if (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / -ext_call.return_data[0] + 50000 * 10^18 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + ((-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (-1 * 10^18 * ext_call.return_data[0]) + 50000000000000000000000 * 10^18 / poolInfo[arg1].field_1280
                                poolInfo[arg1].field_512 = block.timestamp
                                if userInfo[arg1][address(msg.sender)].field_0 > 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                            require ext_code.size(sub_e1d9dd19Address)
                                            staticcall sub_e1d9dd19Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_e1d9dd19Address)
                                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                            else:
                                                call sub_e1d9dd19Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73736166655969656c64626f6f73746572546f6b656e5472616e736665723a207472616e73666572206661696c65,
                                                            mem[210 len 18]
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                        mem[324 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(stor5)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
                                                revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
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
                                                                0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                            if poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[arg1][address(msg.sender)].field_0 < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
                                    emit Deposit(0, msg.sender, arg1);
    stor1 = 1
}



}
