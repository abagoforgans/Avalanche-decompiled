contract main {




// =====================  Runtime code  =====================


#
#  - add(uint256 arg1, address arg2, bool arg3)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address bambooAddress;
address devaddr1;
address sub_f19987fcAddress;
address sub_5e671c0fAddress;
address sub_4979c1f1Address;
address sub_0bb07ce2Address;
address sub_9d21d4b0Address;
uint256 bonusEndBlock;
uint256 sub_ce7410bd;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
}

function sub_0bb07ce2(?) payable {
    return sub_0bb07ce2Address
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

function bamboo() payable {
    return bambooAddress
}

function startBlock() payable {
    return startBlock
}

function sub_4979c1f1(?) payable {
    return sub_4979c1f1Address
}

function sub_5e671c0f(?) payable {
    return sub_5e671c0fAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9d21d4b0(?) payable {
    return sub_9d21d4b0Address
}

function sub_ce7410bd(?) payable {
    return sub_ce7410bd
}

function sub_f19987fc(?) payable {
    return sub_f19987fcAddress
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

function sub_458aae5c(?) payable {
    require calldata.size - 4 >= 32
    if sub_0bb07ce2Address != msg.sender:
        revert with 0, 'dev: wut?'
    sub_0bb07ce2Address = arg1
}

function sub_d08c252b(?) payable {
    require calldata.size - 4 >= 32
    if sub_9d21d4b0Address != msg.sender:
        revert with 0, 'dev: wut?'
    sub_9d21d4b0Address = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dev4(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_4979c1f1Address != msg.sender:
        revert with 0, 'dev: wut?'
    sub_4979c1f1Address = arg1
}

function dev2(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_f19987fcAddress != msg.sender:
        revert with 0, 'dev: wut?'
    sub_f19987fcAddress = arg1
}

function dev3(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_5e671c0fAddress != msg.sender:
        revert with 0, 'dev: wut?'
    sub_5e671c0fAddress = arg1
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        if arg2 - arg1 / arg2 - arg1 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
    else:
        if arg1 >= bonusEndBlock:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if bonusEndBlock > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 > bonusEndBlock:
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - arg1:
                if arg2 - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 - bonusEndBlock)
            if bonusEndBlock - arg1 / bonusEndBlock - arg1 != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg2 < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
    return (arg2 - arg1)
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

function pendingBamboo(uint256 arg1, address arg2) payable {
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
        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
    else:
        if poolInfo[arg1].field_512 >= bonusEndBlock:
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
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
                if (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) / block.number - bonusEndBlock != sub_ce7410bd:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd):
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
                if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) != poolInfo[arg1].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
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
                if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.number < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
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
    if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
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
    if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
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
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                        else:
                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr1, 22 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_f19987fcAddress, 0
                        else:
                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_5e671c0fAddress, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_4979c1f1Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_0bb07ce2Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_9d21d4b0Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) / block.number - bonusEndBlock != sub_ce7410bd:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                    if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if block.number < bonusEndBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                    if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
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
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                    if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                    if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                    if (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) / block.number - bonusEndBlock != sub_ce7410bd:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 0
                                        else:
                                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 0
                                        else:
                                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                        if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 0
                                        else:
                                            if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 0
                                        else:
                                            if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if block.number < bonusEndBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 0
                                    else:
                                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 0
                                    else:
                                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                    if (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) / block.number - poolInfo[idx].field_512 != sub_ce7410bd:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 0
                                        else:
                                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 0
                                        else:
                                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 0
                                        else:
                                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                        if (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / (block.number * sub_ce7410bd) - (poolInfo[idx].field_512 * sub_ce7410bd) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 0
                                        else:
                                            if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 0
                                        else:
                                            if 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 22:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 0
                                        else:
                                            if 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 14:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            require ext_code.size(bambooAddress)
                                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / 1000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(bambooAddress)
                                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_ce7410bd * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr1, 0
                    else:
                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devaddr1, 22 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_f19987fcAddress, 0
                    else:
                        if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_5e671c0fAddress, 0
                    else:
                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_4979c1f1Address, 0
                    else:
                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_0bb07ce2Address, 0
                    else:
                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_9d21d4b0Address, 0
                    else:
                        if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(bambooAddress)
                    call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                        else:
                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr1, 22 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_f19987fcAddress, 0
                        else:
                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_5e671c0fAddress, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_4979c1f1Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_0bb07ce2Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_9d21d4b0Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                        if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr1, 0
                        else:
                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devaddr1, 22 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_f19987fcAddress, 0
                        else:
                            if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_5e671c0fAddress, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_4979c1f1Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_0bb07ce2Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_9d21d4b0Address, 0
                        else:
                            if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(bambooAddress)
                        call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                        if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) / block.number - bonusEndBlock != sub_ce7410bd:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (bonusEndBlock * sub_ce7410bd) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (bonusEndBlock * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devaddr1, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 0
                            else:
                                if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 0
                            else:
                                if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(bambooAddress)
                            call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                            if (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) / block.number - poolInfo[arg1].field_512 != sub_ce7410bd:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * 0 / totalAllocPoint / 0 / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * 0 / totalAllocPoint / 0 / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * 0 / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
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
                                if (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / (block.number * sub_ce7410bd) - (poolInfo[arg1].field_512 * sub_ce7410bd) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devaddr1, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 0
                                else:
                                    if 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 22:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_f19987fcAddress, 22 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_5e671c0fAddress, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_4979c1f1Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_0bb07ce2Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 0
                                else:
                                    if 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 14:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require ext_code.size(bambooAddress)
                                    call bambooAddress.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sub_9d21d4b0Address, 14 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(bambooAddress)
                                call bambooAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_ce7410bd * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_ce7410bd * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}



}
