contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
address owner;
address sub_7a33d2acAddress;
uint256 sub_ada3d292;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint32 stor7;
address dispatcherAddress;
uint256 stor7;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

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

function startBlock() payable {
    return startBlock
}

function sub_7a33d2ac(?) payable {
    return sub_7a33d2acAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_ada3d292(?) payable {
    return sub_ada3d292
}

function dispatcher() payable {
    return address(dispatcherAddress)
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setDispatcher(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(dispatcherAddress) = arg1
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][msg.sender].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
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
        mem[0] = 3
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
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
                    if (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) / block.number - poolInfo[idx].field_512 != sub_ada3d292:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
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
                        if (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function updateRewardPerBlock(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
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
                        if (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) / block.number - poolInfo[idx].field_512 != sub_ada3d292:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
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
                            if (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    sub_ada3d292 = arg1
    emit NewRewardPerBlock(arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
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
                if (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292) / block.number - poolInfo[arg1].field_512 != sub_ada3d292:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
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
                    if (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
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
                        if (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) / block.number - poolInfo[idx].field_512 != sub_ada3d292:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
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
                            if (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
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
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
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
                        if (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) / block.number - poolInfo[idx].field_512 != sub_ada3d292:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
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
                            if (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / (block.number * sub_ada3d292) - (poolInfo[idx].field_512 * sub_ada3d292) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_ada3d292 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ada3d292 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC257[stor3.length] = arg1
    if block.number > startBlock:
        storC257[stor3.length] = block.number
    else:
        storC257[stor3.length] = startBlock
    storC257[stor3.length] = 0
}

function pendingBoring(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
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
    if (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292) / block.number - poolInfo[arg1].field_512 != sub_ada3d292:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292):
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
    if (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(sub_7a33d2acAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call sub_7a33d2acAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                    Mask(224, 0, stor7),
                                    uint32(stor7),
                                    msg.sender,
                                    -userInfo[arg1][msg.sender].field_256
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[612 len 4] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args arg2, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                        Mask(224, 0, stor7),
                                        uint32(stor7),
                                        msg.sender,
                                        -userInfo[arg1][msg.sender].field_256
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                            mem[ceil32(return_data.size) + 590 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                            Mask(224, 0, stor7),
                                            uint32(stor7),
                                            msg.sender,
                                            -userInfo[arg1][msg.sender].field_256
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                mem[ceil32(return_data.size) + 590 len 23],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                            Mask(224, 0, stor7),
                                            uint32(stor7),
                                            msg.sender,
                                            -userInfo[arg1][msg.sender].field_256
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                mem[ceil32(return_data.size) + 590 len 23],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                emit Deposit(arg2, msg.sender, arg1);
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(sub_7a33d2acAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                mem[416 len 4] = 0
                call sub_7a33d2acAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                    Mask(224, 0, stor7),
                                    uint32(stor7),
                                    msg.sender,
                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[612 len 4] = 0
                    mem[584 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                        Mask(224, 0, stor7),
                                        uint32(stor7),
                                        msg.sender,
                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                            mem[ceil32(return_data.size) + 590 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                            Mask(224, 0, stor7),
                                            uint32(stor7),
                                            msg.sender,
                                            (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                mem[ceil32(return_data.size) + 590 len 23],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                         arg2,
                                         mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                                         arg1,
                    else:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 595 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        mem[ceil32(return_data.size) + 585 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                            Mask(224, 0, stor7),
                                            uint32(stor7),
                                            msg.sender,
                                            (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                mem[ceil32(return_data.size) + 590 len 23],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
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
                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(sub_7a33d2acAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call sub_7a33d2acAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                        Mask(224, 0, stor7),
                                        uint32(stor7),
                                        msg.sender,
                                        -userInfo[arg1][msg.sender].field_256
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[612 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args arg2, mem[424 len 60], mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                            Mask(224, 0, stor7),
                                            uint32(stor7),
                                            msg.sender,
                                            -userInfo[arg1][msg.sender].field_256
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[598 len 14],
                                            0,
                                            mem[616 len 4]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[520]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 22]
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
                                                mem[ceil32(return_data.size) + 590 len 31]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                -userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
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
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if not arg2 + userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                -userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
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
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(sub_7a33d2acAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                    mem[416 len 4] = 0
                    call sub_7a33d2acAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                        Mask(224, 0, stor7),
                                        uint32(stor7),
                                        msg.sender,
                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[612 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                            Mask(224, 0, stor7),
                                            uint32(stor7),
                                            msg.sender,
                                            (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[598 len 14],
                                            0,
                                            mem[616 len 4]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[520]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 22]
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
                                                mem[ceil32(return_data.size) + 590 len 31]
                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
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
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if not arg2 + userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                             arg2,
                                             mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                                             arg1,
                        else:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
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
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
        else:
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
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[416 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(sub_7a33d2acAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                            mem[416 len 4] = 0
                            call sub_7a33d2acAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                -userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[612 len 4] = 0
                                mem[584 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    -userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
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
                                                        mem[ceil32(return_data.size) + 590 len 31]
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
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                mem[ceil32(return_data.size) + 585 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    -userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
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
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                        mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(sub_7a33d2acAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call sub_7a33d2acAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[612 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args arg2, mem[424 len 60], mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
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
                                                        mem[ceil32(return_data.size) + 590 len 31]
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
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
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
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
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
                        mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(sub_7a33d2acAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call sub_7a33d2acAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                -userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[612 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args arg2, mem[424 len 60], mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    -userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
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
                                                        mem[ceil32(return_data.size) + 590 len 31]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
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
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                            mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
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
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(sub_7a33d2acAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call sub_7a33d2acAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                Mask(224, 0, stor7),
                                                uint32(stor7),
                                                msg.sender,
                                                (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[612 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args arg2, mem[424 len 60], mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
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
                                                        mem[ceil32(return_data.size) + 590 len 31]
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
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
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
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                emit Deposit(arg2, msg.sender, arg1);
            else:
                if (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292) / block.number - poolInfo[arg1].field_512 != sub_ada3d292:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292):
                    if (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / (block.number * sub_ada3d292) - (poolInfo[arg1].field_512 * sub_ada3d292) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint:
                        if 10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ada3d292 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ada3d292 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][msg.sender].field_0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
                        else:
                            if not userInfo[arg1][msg.sender].field_0:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    -userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
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
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
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
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                     arg2,
                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                                                     arg1,
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    mem[584 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        mem[ceil32(return_data.size) + 585 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        emit Deposit(arg2, msg.sender, arg1);
                                    else:
                                        require return_data.size >= 32
                                        if not mem[324]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 403 len 22]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                            emit Deposit(arg2, msg.sender, arg1);
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][msg.sender].field_0 += arg2
                                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                                userInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                            emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                         arg2,
                                                         mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                                                         arg1,
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
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
                        else:
                            if not userInfo[arg1][msg.sender].field_0:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    -userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[424 len 60], mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            -userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][msg.sender].field_0 += arg2
                                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                                userInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[324]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 403 len 22]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            -userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[424 len 60], mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
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
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
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
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
                else:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
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
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
                        else:
                            if not userInfo[arg1][msg.sender].field_0:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    -userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[424 len 60], mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
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
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
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
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    mem[584 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
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
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    mem[ceil32(return_data.size) + 585 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
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
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                            mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
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
                            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
                        else:
                            if not userInfo[arg1][msg.sender].field_0:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, -userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    -userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[424 len 60], mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        -userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            -userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[324]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 403 len 22]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            -userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][msg.sender].field_0 += arg2
                                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                                userInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(sub_7a33d2acAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call sub_7a33d2acAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                    Mask(224, 0, stor7),
                                                    uint32(stor7),
                                                    msg.sender,
                                                    (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                    mem[612 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                         gas gas_remaining wei
                                        args arg2, mem[424 len 60], mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                        Mask(224, 0, stor7),
                                                        uint32(stor7),
                                                        msg.sender,
                                                        (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[arg1][msg.sender].field_0 += arg2
                                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                                            userInfo[arg1][msg.sender].field_256 = 0
                                        else:
                                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
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
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                else:
                                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[arg1][msg.sender].field_0 += arg2
                                            if not arg2 + userInfo[arg1][msg.sender].field_0:
                                                userInfo[arg1][msg.sender].field_256 = 0
                                            else:
                                                if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[324]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 403 len 22]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call poolInfo[arg1].field_0 with:
                                             gas gas_remaining wei
                                            args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with transferFrom(address arg1, address arg2, uint256 arg3), 
                                                            Mask(224, 0, stor7),
                                                            uint32(stor7),
                                                            msg.sender,
                                                            (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor7):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
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
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
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
                                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    emit Deposit(arg2, msg.sender, arg1);
}



}
