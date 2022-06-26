contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - withdrawAll(uint256 arg1)
#
address owner;
uint256 stor1;
address sub_75d5c239Address;
address sub_9db9203eAddress;
address burnAddress;
uint256 sub_8e5b2121;
uint256 startBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;

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

function startBlock() payable {
    return startBlock
}

function burnAddress() payable {
    return burnAddress
}

function sub_75d5c239(?) payable {
    return sub_75d5c239Address
}

function owner() payable {
    return owner
}

function sub_8e5b2121(?) payable {
    return sub_8e5b2121
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9db9203e(?) payable {
    return sub_9db9203eAddress
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

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_75d5c239Address:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
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
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x42da4eb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x42da4eb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][address(msg.sender)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.0xf3fef3a3 with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        require userInfo[arg1][address(msg.sender)].field_0
        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.0xf3fef3a3 with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.0x44a3955e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[arg1].field_512 > 0:
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_9db9203eAddress)
                    call sub_9db9203eAddress.0x4d0392a8 with:
                         gas gas_remaining wei
                        args (0 / totalAllocPoint)
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
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121) / block.number - poolInfo[arg1].field_512 != sub_8e5b2121:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_9db9203eAddress)
                        call sub_9db9203eAddress.0x4d0392a8 with:
                             gas gas_remaining wei
                            args (0 / totalAllocPoint)
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121)
                        if (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_9db9203eAddress)
                        call sub_9db9203eAddress.0x4d0392a8 with:
                             gas gas_remaining wei
                            args ((block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_1024)
        staticcall poolInfo[idx].field_1024.0x44a3955e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[64] = mem[64] + 64
        mem[_119] = 30
        mem[_119 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _120 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_120 + idx + 68] = mem[_119 + idx + 32]
                idx = idx + 32
                continue 
            mem[_120 + 68] = mem[_120 + 70 len 30]
            revert with memory
              from mem[64]
               len _120 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 <= 0:
            idx = idx + 1
            continue 
        if not block.number - poolInfo[idx].field_512:
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 26
            mem[_129 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_133 + idx + 68] = mem[_129 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_133 + 68] = mem[_133 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _133 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0 / totalAllocPoint
            require ext_code.size(sub_9db9203eAddress)
            call sub_9db9203eAddress.0x4d0392a8 with:
                 gas gas_remaining wei
                args (0 / totalAllocPoint)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_163] = 26
                mem[_163 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _168 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_168 + idx + 68] = mem[_163 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_168 + 68] = mem[_168 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _168 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 26
            mem[_167 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _178 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_178 + idx + 68] = mem[_167 + idx + 32]
                idx = idx + 32
                continue 
            mem[_178 + 68] = mem[_178 + 74 len 26]
            revert with memory
              from mem[64]
               len _178 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) / block.number - poolInfo[idx].field_512 != sub_8e5b2121:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121):
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = 26
            mem[_132 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _137 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_137 + idx + 68] = mem[_132 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_137 + 68] = mem[_137 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _137 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0 / totalAllocPoint
            require ext_code.size(sub_9db9203eAddress)
            call sub_9db9203eAddress.0x4d0392a8 with:
                 gas gas_remaining wei
                args (0 / totalAllocPoint)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _175 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_175 + idx + 68] = mem[_166 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_175 + 68] = mem[_175 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _175 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _188 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_188 + idx + 68] = mem[_174 + idx + 32]
                idx = idx + 32
                continue 
            mem[_188 + 68] = mem[_188 + 74 len 26]
            revert with memory
              from mem[64]
               len _188 + -mem[64] + 100
        require (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121)
        if (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _136 = mem[64]
        mem[64] = mem[64] + 64
        mem[_136] = 26
        mem[_136 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _145 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_145 + idx + 68] = mem[_136 + idx + 32]
                idx = idx + 32
                continue 
            mem[_145 + 68] = mem[_145 + 74 len 26]
            revert with memory
              from mem[64]
               len _145 + -mem[64] + 100
        require totalAllocPoint
        mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_9db9203eAddress)
        call sub_9db9203eAddress.0x4d0392a8 with:
             gas gas_remaining wei
            args ((block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint:
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 26
            mem[_173 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _185 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_185 + idx + 68] = mem[_173 + idx + 32]
                idx = idx + 32
                continue 
            mem[_185 + 68] = mem[_185 + 74 len 26]
            revert with memory
              from mem[64]
               len _185 + -mem[64] + 100
        require (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _184 = mem[64]
        mem[64] = mem[64] + 64
        mem[_184] = 26
        mem[_184 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _200 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_200 + idx + 68] = mem[_184 + idx + 32]
            idx = idx + 32
            continue 
        mem[_200 + 68] = mem[_200 + 74 len 26]
        revert with memory
          from mem[64]
           len _200 + -mem[64] + 100
}

function sub_dfd5c2e4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x44a3955e with:
            gas gas_remaining wei
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121) / block.number - poolInfo[arg1].field_512 != sub_8e5b2121:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121):
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121)
    if (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function sub_54f39748(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_1024)
        staticcall poolInfo[idx].field_1024.0x44a3955e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _125 = mem[64]
        mem[64] = mem[64] + 64
        mem[_125] = 30
        mem[_125 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_126 + idx + 68] = mem[_125 + idx + 32]
                idx = idx + 32
                continue 
            mem[_126 + 68] = mem[_126 + 70 len 30]
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 <= 0:
            idx = idx + 1
            continue 
        if not block.number - poolInfo[idx].field_512:
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 26
            mem[_135 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _139 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_139 + idx + 68] = mem[_135 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_139 + 68] = mem[_139 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _139 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0 / totalAllocPoint
            require ext_code.size(sub_9db9203eAddress)
            call sub_9db9203eAddress.0x4d0392a8 with:
                 gas gas_remaining wei
                args (0 / totalAllocPoint)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _169 = mem[64]
                mem[64] = mem[64] + 64
                mem[_169] = 26
                mem[_169 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _174 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_174 + idx + 68] = mem[_169 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_174 + 68] = mem[_174 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _174 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 26
            mem[_173 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_184 + idx + 68] = mem[_173 + idx + 32]
                idx = idx + 32
                continue 
            mem[_184 + 68] = mem[_184 + 74 len 26]
            revert with memory
              from mem[64]
               len _184 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) / block.number - poolInfo[idx].field_512 != sub_8e5b2121:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121):
            _138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_138] = 26
            mem[_138 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_143 + idx + 68] = mem[_138 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_143 + 68] = mem[_143 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _143 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0 / totalAllocPoint
            require ext_code.size(sub_9db9203eAddress)
            call sub_9db9203eAddress.0x4d0392a8 with:
                 gas gas_remaining wei
                args (0 / totalAllocPoint)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_172] = 26
                mem[_172 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_181 + idx + 68] = mem[_172 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_181 + 68] = mem[_181 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _181 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_180] = 26
            mem[_180 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _194 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_194 + idx + 68] = mem[_180 + idx + 32]
                idx = idx + 32
                continue 
            mem[_194 + 68] = mem[_194 + 74 len 26]
            revert with memory
              from mem[64]
               len _194 + -mem[64] + 100
        require (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121)
        if (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _142 = mem[64]
        mem[64] = mem[64] + 64
        mem[_142] = 26
        mem[_142 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _151 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_151 + idx + 68] = mem[_142 + idx + 32]
                idx = idx + 32
                continue 
            mem[_151 + 68] = mem[_151 + 74 len 26]
            revert with memory
              from mem[64]
               len _151 + -mem[64] + 100
        require totalAllocPoint
        mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_9db9203eAddress)
        call sub_9db9203eAddress.0x4d0392a8 with:
             gas gas_remaining wei
            args ((block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint:
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = 26
            mem[_179 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _191 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_191 + idx + 68] = mem[_179 + idx + 32]
                idx = idx + 32
                continue 
            mem[_191 + 68] = mem[_191 + 74 len 26]
            revert with memory
              from mem[64]
               len _191 + -mem[64] + 100
        require (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _190 = mem[64]
        mem[64] = mem[64] + 64
        mem[_190] = 26
        mem[_190 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_206 + idx + 68] = mem[_190 + idx + 32]
            idx = idx + 32
            continue 
        mem[_206 + 68] = mem[_206 + 74 len 26]
        revert with memory
          from mem[64]
           len _206 + -mem[64] + 100
    sub_8e5b2121 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.0x44a3955e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 30
            mem[_157 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _161 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_161 + idx + 68] = mem[_157 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_161 + 68] = mem[_161 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _161 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_512:
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _175 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_175 + idx + 68] = mem[_171 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_175 + 68] = mem[_175 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _175 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0 / totalAllocPoint
                require ext_code.size(sub_9db9203eAddress)
                call sub_9db9203eAddress.0x4d0392a8 with:
                     gas gas_remaining wei
                    args (0 / totalAllocPoint)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_205] = 26
                    mem[_205 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _210 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_210 + idx + 68] = mem[_205 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_210 + 68] = mem[_210 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _210 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _209 = mem[64]
                mem[64] = mem[64] + 64
                mem[_209] = 26
                mem[_209 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _220 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_220 + idx + 68] = mem[_209 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_220 + 68] = mem[_220 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _220 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) / block.number - poolInfo[idx].field_512 != sub_8e5b2121:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121):
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 26
                mem[_174 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _179 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_179 + idx + 68] = mem[_174 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_179 + 68] = mem[_179 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _179 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0 / totalAllocPoint
                require ext_code.size(sub_9db9203eAddress)
                call sub_9db9203eAddress.0x4d0392a8 with:
                     gas gas_remaining wei
                    args (0 / totalAllocPoint)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 26
                    mem[_208 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _217 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_217 + idx + 68] = mem[_208 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_217 + 68] = mem[_217 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _217 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_216] = 26
                mem[_216 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _230 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_230 + idx + 68] = mem[_216 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_230 + 68] = mem[_230 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _230 + -mem[64] + 100
            require (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121)
            if (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _187 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_187 + idx + 68] = mem[_178 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_187 + 68] = mem[_187 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _187 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_9db9203eAddress)
            call sub_9db9203eAddress.0x4d0392a8 with:
                 gas gas_remaining wei
                args ((block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint:
                _215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_215] = 26
                mem[_215 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_227 + idx + 68] = mem[_215 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_227 + 68] = mem[_227 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _227 + -mem[64] + 100
            require (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _226 = mem[64]
            mem[64] = mem[64] + 64
            mem[_226] = 26
            mem[_226 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _242 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_242 + idx + 68] = mem[_226 + idx + 32]
                idx = idx + 32
                continue 
            mem[_242 + 68] = mem[_242 + 74 len 26]
            revert with memory
              from mem[64]
               len _242 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, address arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.0x44a3955e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_175] = 30
            mem[_175 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_176 + idx + 68] = mem[_175 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_512:
                _185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_185] = 26
                mem[_185 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_189 + idx + 68] = mem[_185 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_189 + 68] = mem[_189 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _189 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0 / totalAllocPoint
                require ext_code.size(sub_9db9203eAddress)
                call sub_9db9203eAddress.0x4d0392a8 with:
                     gas gas_remaining wei
                    args (0 / totalAllocPoint)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _219 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_219] = 26
                    mem[_219 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _224 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_224 + idx + 68] = mem[_219 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_224 + 68] = mem[_224 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _224 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_223] = 26
                mem[_223 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _234 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_234 + idx + 68] = mem[_223 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_234 + 68] = mem[_234 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _234 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) / block.number - poolInfo[idx].field_512 != sub_8e5b2121:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121):
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 26
                mem[_188 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _193 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_193 + idx + 68] = mem[_188 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_193 + 68] = mem[_193 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _193 + -mem[64] + 100
                require totalAllocPoint
                mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0 / totalAllocPoint
                require ext_code.size(sub_9db9203eAddress)
                call sub_9db9203eAddress.0x4d0392a8 with:
                     gas gas_remaining wei
                    args (0 / totalAllocPoint)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _222 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_222] = 26
                    mem[_222 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _231 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_231 + idx + 68] = mem[_222 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_231 + 68] = mem[_231 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _231 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_244 + idx + 68] = mem[_230 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_244 + 68] = mem[_244 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _244 + -mem[64] + 100
            require (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121)
            if (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / (block.number * sub_8e5b2121) - (poolInfo[idx].field_512 * sub_8e5b2121) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _192 = mem[64]
            mem[64] = mem[64] + 64
            mem[_192] = 26
            mem[_192 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _201 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_201 + idx + 68] = mem[_192 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_201 + 68] = mem[_201 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _201 + -mem[64] + 100
            require totalAllocPoint
            mem[mem[64]] = 0x4d0392a800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_9db9203eAddress)
            call sub_9db9203eAddress.0x4d0392a8 with:
                 gas gas_remaining wei
                args ((block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint:
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _241 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_241 + idx + 68] = mem[_229 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_241 + 68] = mem[_241 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _241 + -mem[64] + 100
            require (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _240 = mem[64]
            mem[64] = mem[64] + 64
            mem[_240] = 26
            mem[_240 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_8e5b2121 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8e5b2121 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _256 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_256 + idx + 68] = mem[_240 + idx + 32]
                idx = idx + 32
                continue 
            mem[_256 + 68] = mem[_256 + 74 len 26]
            revert with memory
              from mem[64]
               len _256 + -mem[64] + 100
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
    poolInfo[poolInfo.length].field_1024 = arg4
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        require arg1 < poolInfo.length
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
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
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
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), poolInfo[arg1].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct poolInfo[arg1].field_1024
                         gas gas_remaining wei
                        args ext_call.return_data[0] + arg2, mem[392 len 24], 0, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_1024)
                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_1024)
                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 558 len 31]
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
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), poolInfo[arg1].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                    mem[ceil32(return_data.size) + 549 len 4] = 0
                    call poolInfo[arg1].field_0 with:
                       funct poolInfo[arg1].field_1024
                         gas gas_remaining wei
                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_1024)
                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 558 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_1024)
                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                             gas gas_remaining wei
                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            emit Deposit(arg2, msg.sender, arg1);
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), poolInfo[arg1].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 691 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct poolInfo[arg1].field_1024
                             gas gas_remaining wei
                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_1024)
                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 687 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    require ext_code.size(sub_75d5c239Address)
                    staticcall sub_75d5c239Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_75d5c239Address)
                    if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                        call sub_75d5c239Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[544 len 4] = 0
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
                            if return_data.size <= 0:
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 691 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 649 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 691 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 677 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                             arg2,
                                             mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                                             arg1,
                    else:
                        call sub_75d5c239Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), poolInfo[arg1].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 691 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                            mem[ceil32(return_data.size) + 677 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                               funct poolInfo[arg1].field_1024
                                 gas gas_remaining wei
                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                        if return_data.size <= 0:
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), poolInfo[arg1].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 691 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                            mem[ceil32(return_data.size) + 677 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                               funct poolInfo[arg1].field_1024
                                 gas gas_remaining wei
                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), poolInfo[arg1].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 691 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct poolInfo[arg1].field_1024
                                 gas gas_remaining wei
                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    require ext_code.size(sub_75d5c239Address)
                    staticcall sub_75d5c239Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_75d5c239Address)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_75d5c239Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[544 len 4] = 0
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
                            if return_data.size <= 0:
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 691 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 649 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 691 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 677 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                             arg2,
                                             mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                                             arg1,
                    else:
                        call sub_75d5c239Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), poolInfo[arg1].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 691 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                            mem[ceil32(return_data.size) + 677 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                               funct poolInfo[arg1].field_1024
                                 gas gas_remaining wei
                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
    else:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.0x44a3955e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            require arg1 < poolInfo.length
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
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
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
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), poolInfo[arg1].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                        mem[520 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct poolInfo[arg1].field_1024
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[488]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 31]
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
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), poolInfo[arg1].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                        mem[ceil32(return_data.size) + 521 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct poolInfo[arg1].field_1024
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                emit Deposit(arg2, msg.sender, arg1);
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
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                            if return_data.size <= 0:
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 691 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 691 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 677 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
                    else:
                        require ext_code.size(sub_75d5c239Address)
                        staticcall sub_75d5c239Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_75d5c239Address)
                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                            call sub_75d5c239Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[544 len 4] = 0
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
                                if return_data.size <= 0:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 691 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 649 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 696 len 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 691 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 677 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                 arg2,
                                                 mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                                                 arg1,
                        else:
                            call sub_75d5c239Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 691 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 677 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
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
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), poolInfo[arg1].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 691 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                            mem[ceil32(return_data.size) + 677 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                               funct poolInfo[arg1].field_1024
                                 gas gas_remaining wei
                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_1024)
                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                 gas gas_remaining wei
                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
                    else:
                        require ext_code.size(sub_75d5c239Address)
                        staticcall sub_75d5c239Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_75d5c239Address)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                            call sub_75d5c239Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[544 len 4] = 0
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
                                if return_data.size <= 0:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 691 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 649 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 696 len 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 691 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 677 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                 arg2,
                                                 mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                                                 arg1,
                        else:
                            call sub_75d5c239Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
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
                                if return_data.size <= 0:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 691 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 696 len 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 691 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 677 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 521 len 28], mem[ceil32(return_data.size) + 649 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 617]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
        else:
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[arg1].field_512 <= 0:
                require arg1 < poolInfo.length
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[480 len 4] = 0
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), poolInfo[arg1].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                           funct poolInfo[arg1].field_1024
                             gas gas_remaining wei
                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_1024)
                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                             gas gas_remaining wei
                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 623 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    emit Deposit(arg2, msg.sender, arg1);
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
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[608 len 4] = 0
                                mem[580 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 755 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 741 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 681]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
                        else:
                            require ext_code.size(sub_75d5c239Address)
                            staticcall sub_75d5c239Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_75d5c239Address)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_75d5c239Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 755 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 741 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                 arg2,
                                                 mem[(2 * ceil32(return_data.size)) + 746 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                                                 arg1,
                            else:
                                call sub_75d5c239Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 741 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[608 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 755 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 713 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 681]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            require ext_code.size(sub_75d5c239Address)
                            staticcall sub_75d5c239Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_75d5c239Address)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                call sub_75d5c239Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 741 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                call sub_75d5c239Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 755 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 741 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
            else:
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_9db9203eAddress)
                    call sub_9db9203eAddress.0x4d0392a8 with:
                         gas gas_remaining wei
                        args (0 / totalAllocPoint)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        require arg1 < poolInfo.length
                        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[608 len 4] = 0
                                mem[580 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 755 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 755 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 741 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
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
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                        if return_data.size <= 0:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 869 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(sub_75d5c239Address)
                                    staticcall sub_75d5c239Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_75d5c239Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            if return_data.size <= 0:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 841 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                             arg2,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                                             arg1,
                                    else:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 841 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
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
                                        if return_data.size <= 0:
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 841 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 869 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                         arg2,
                                                         mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                                                         arg1,
                                else:
                                    require ext_code.size(sub_75d5c239Address)
                                    staticcall sub_75d5c239Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_75d5c239Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 883 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 809]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        require arg1 < poolInfo.length
                        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[608 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), poolInfo[arg1].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 755 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                mem[ceil32(return_data.size) + 713 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct poolInfo[arg1].field_1024
                                     gas gas_remaining wei
                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 681]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                require arg1 < poolInfo.length
                                require ext_code.size(poolInfo[arg1].field_1024)
                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
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
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 883 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 869 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 809]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    require ext_code.size(sub_75d5c239Address)
                                    staticcall sub_75d5c239Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_75d5c239Address)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[736 len 4] = 0
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
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 883 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 841 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 809]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 883 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 869 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 809]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require ext_code.size(sub_75d5c239Address)
                                    staticcall sub_75d5c239Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_75d5c239Address)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 869 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                         arg2,
                                                         mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                                                         arg1,
                                    else:
                                        call sub_75d5c239Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                            if return_data.size <= 0:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121) / block.number - poolInfo[arg1].field_512 != sub_8e5b2121:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_9db9203eAddress)
                        call sub_9db9203eAddress.0x4d0392a8 with:
                             gas gas_remaining wei
                            args (0 / totalAllocPoint)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            require arg1 < poolInfo.length
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 741 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
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
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 841 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            if return_data.size <= 0:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                             arg2,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                                             arg1,
                                            else:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 841 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                if return_data.size <= 0:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 869 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            require arg1 < poolInfo.length
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 755 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 649 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 585 len 28], mem[ceil32(return_data.size) + 713 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
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
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 841 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                             arg2,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                                             arg1,
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
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
                                                if return_data.size <= 0:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 869 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                                 arg2,
                                                                 mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                 msg.sender,
                                                                 arg1,
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 841 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                            if return_data.size <= 0:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                if return_data.size <= 0:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 869 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                    else:
                        require (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121)
                        if (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / (block.number * sub_8e5b2121) - (poolInfo[arg1].field_512 * sub_8e5b2121) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_9db9203eAddress)
                        call sub_9db9203eAddress.0x4d0392a8 with:
                             gas gas_remaining wei
                            args ((block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            require arg1 < poolInfo.length
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), poolInfo[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 755 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                    mem[ceil32(return_data.size) + 713 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct poolInfo[arg1].field_1024
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                    require arg1 < poolInfo.length
                                    require ext_code.size(poolInfo[arg1].field_1024)
                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
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
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 869 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                if return_data.size <= 0:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 869 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                if return_data.size <= 0:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 869 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            if return_data.size <= 0:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 841 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                             arg2,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                                             arg1,
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                             arg2,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                                             arg1,
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                        else:
                            require (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_8e5b2121 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8e5b2121 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            require arg1 < poolInfo.length
                            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[608 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 741 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                     arg2,
                                                     mem[(2 * ceil32(return_data.size)) + 746 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                                                     arg1,
                                    else:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                        require ext_code.size(poolInfo[arg1].field_0)
                                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args address(this.address), poolInfo[arg1].field_1024
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 755 len 26]
                                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 649 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                        mem[ceil32(return_data.size) + 713 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct poolInfo[arg1].field_1024
                                             gas gas_remaining wei
                                            args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 681]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 760 len 22]
                                        require arg1 < poolInfo.length
                                        require ext_code.size(poolInfo[arg1].field_1024)
                                        call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 751 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
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
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                            if return_data.size <= 0:
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                emit Deposit(arg2, msg.sender, arg1);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
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
                                                if return_data.size <= 0:
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 841 len 0] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    emit Deposit(arg2, msg.sender, arg1);
                                                else:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                    require ext_code.size(poolInfo[arg1].field_0)
                                                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args address(this.address), poolInfo[arg1].field_1024
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 883 len 26]
                                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                    mem[ceil32(return_data.size) + 869 len 4] = 0
                                                    call poolInfo[arg1].field_0 with:
                                                       funct poolInfo[arg1].field_1024
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require arg1 < poolInfo.length
                                                    require ext_code.size(poolInfo[arg1].field_1024)
                                                    call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[arg1][address(msg.sender)].field_0
                                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                                 arg2,
                                                                 mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                 msg.sender,
                                                                 arg1,
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                            mem[736 len 4] = 0
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
                                            require ext_code.size(poolInfo[arg1].field_0)
                                            staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args address(this.address), poolInfo[arg1].field_1024
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 883 len 26]
                                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                            mem[ceil32(return_data.size) + 869 len 4] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct poolInfo[arg1].field_1024
                                                 gas gas_remaining wei
                                                args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            require arg1 < poolInfo.length
                                            require ext_code.size(poolInfo[arg1].field_1024)
                                            call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                         arg2,
                                                         mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                                                         arg1,
                                    else:
                                        require ext_code.size(sub_75d5c239Address)
                                        staticcall sub_75d5c239Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_75d5c239Address)
                                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                                mem[736 len 4] = 0
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_1024, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 841 len 0] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        else:
                                            call sub_75d5c239Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if arg2 <= 0:
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
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
                                                require ext_code.size(poolInfo[arg1].field_0)
                                                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args address(this.address), poolInfo[arg1].field_1024
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 883 len 26]
                                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 64] = 0, poolInfo[arg1].field_1024, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                                                mem[ceil32(return_data.size) + 869 len 4] = 0
                                                call poolInfo[arg1].field_0 with:
                                                   funct poolInfo[arg1].field_1024
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require arg1 < poolInfo.length
                                                require ext_code.size(poolInfo[arg1].field_1024)
                                                call poolInfo[arg1].field_1024.0x47e7ef24 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                                                if not userInfo[arg1][address(msg.sender)].field_0:
                                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[arg1][address(msg.sender)].field_0
                                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}



}
