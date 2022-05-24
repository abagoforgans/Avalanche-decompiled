contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const sub_23dfd790(?) = 10 * 10^18

const sub_ff855c79(?) = 100000000 * 10^18


address owner;
address cakeAddress;
address syrupAddress;
address devaddr;
address sub_f0e85d89Address;
address sub_08e9eef1Address;
uint256 sub_4ae81874;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
mapping of uint8 stor12;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;

function poolLength() payable {
    return poolInfo.length
}

function sub_08e9eef1(?) payable {
    return sub_08e9eef1Address
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_4ae81874(?) payable {
    return sub_4ae81874
}

function startTime() payable {
    return startTime
}

function syrup() payable {
    return syrupAddress
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
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
    return bool(stor12[arg1])
}

function devaddr() payable {
    return devaddr
}

function cake() payable {
    return cakeAddress
}

function sub_f0e85d89(?) payable {
    return sub_f0e85d89Address
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_91b26d24(?) payable {
    require calldata.size - 4 >= 32
    if sub_f0e85d89Address != msg.sender:
        revert with 0, 'ecoaddr: wut?'
    sub_f0e85d89Address = arg1
}

function sub_886525a9(?) payable {
    require calldata.size - 4 >= 32
    if sub_08e9eef1Address != msg.sender:
        revert with 0, 'reserveaddr: wut?'
    sub_08e9eef1Address = arg1
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    BONUS_MULTIPLIER = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(cakeAddress)
    staticcall cakeAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 100000000 * 10^18:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(cakeAddress)
            staticcall cakeAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 100000000 * 10^18:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
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
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args syrupAddress, 0 / totalAllocPoint
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args syrupAddress, 0 / totalAllocPoint
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_4ae81874:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args syrupAddress, 0 / totalAllocPoint
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_f0e85d89Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_08e9eef1Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args syrupAddress, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function pendingCake(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(cakeAddress)
    staticcall cakeAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 100000000 * 10^18:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_4ae81874:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.timestamp <= poolInfo[idx].field_512:
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
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        require ext_code.size(cakeAddress)
        staticcall cakeAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 100000000 * 10^18:
            _256 = mem[64]
            mem[64] = mem[64] + 64
            mem[_256] = 26
            mem[_256 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _257 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _257 + 68] = mem[idx + _256 + 32]
                    idx = idx + 32
                    continue 
                mem[_257 + 68] = mem[_257 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _257 + -mem[64] + 100
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 26
            mem[_265 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _296 = mem[64]
            mem[64] = mem[64] + 64
            mem[_296] = 26
            mem[_296 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[64] = mem[64] + 64
            mem[_319] = 26
            mem[_319 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_345] = 26
                mem[_345 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _355 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _355 + 68] = mem[idx + _345 + 32]
                    idx = idx + 32
                    continue 
                mem[_355 + 68] = mem[_355 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _355 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _350 = mem[64]
            mem[64] = mem[64] + 64
            mem[_350] = 26
            mem[_350 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _360 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _360 + 68] = mem[idx + _350 + 32]
                idx = idx + 32
                continue 
            mem[_360 + 68] = mem[_360 + 74 len 26]
            revert with memory
              from mem[64]
               len _360 + -mem[64] + 100
        _242 = mem[64]
        mem[64] = mem[64] + 64
        mem[_242] = 30
        mem[_242 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _242 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _267 = mem[64]
            mem[64] = mem[64] + 64
            mem[_267] = 26
            mem[_267 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _272 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _272 + 68] = mem[idx + _267 + 32]
                    idx = idx + 32
                    continue 
                mem[_272 + 68] = mem[_272 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _272 + -mem[64] + 100
            _294 = mem[64]
            mem[64] = mem[64] + 64
            mem[_294] = 26
            mem[_294 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _318 = mem[64]
            mem[64] = mem[64] + 64
            mem[_318] = 26
            mem[_318 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[64] = mem[64] + 64
            mem[_335] = 26
            mem[_335 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_379] = 26
                mem[_379 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _390 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _390 + 68] = mem[idx + _379 + 32]
                    idx = idx + 32
                    continue 
                mem[_390 + 68] = mem[_390 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _390 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_385] = 26
            mem[_385 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _398 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _398 + 68] = mem[idx + _385 + 32]
                idx = idx + 32
                continue 
            mem[_398 + 68] = mem[_398 + 74 len 26]
            revert with memory
              from mem[64]
               len _398 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _270 = mem[64]
            mem[64] = mem[64] + 64
            mem[_270] = 26
            mem[_270 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _276 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _276 + 68] = mem[idx + _270 + 32]
                    idx = idx + 32
                    continue 
                mem[_276 + 68] = mem[_276 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _276 + -mem[64] + 100
            _300 = mem[64]
            mem[64] = mem[64] + 64
            mem[_300] = 26
            mem[_300 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _320 = mem[64]
            mem[64] = mem[64] + 64
            mem[_320] = 26
            mem[_320 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_336] = 26
            mem[_336 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _384 = mem[64]
                mem[64] = mem[64] + 64
                mem[_384] = 26
                mem[_384 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _395 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _395 + 68] = mem[idx + _384 + 32]
                    idx = idx + 32
                    continue 
                mem[_395 + 68] = mem[_395 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _395 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _389 = mem[64]
            mem[64] = mem[64] + 64
            mem[_389] = 26
            mem[_389 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
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
        if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_4ae81874:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874):
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _281 + 68] = mem[idx + _271 + 32]
                    idx = idx + 32
                    continue 
                mem[_281 + 68] = mem[_281 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _281 + -mem[64] + 100
            _304 = mem[64]
            mem[64] = mem[64] + 64
            mem[_304] = 26
            mem[_304 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + 64
            mem[_321] = 26
            mem[_321 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_337] = 26
            mem[_337 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _388 = mem[64]
                mem[64] = mem[64] + 64
                mem[_388] = 26
                mem[_388 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _402 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _402 + 68] = mem[idx + _388 + 32]
                    idx = idx + 32
                    continue 
                mem[_402 + 68] = mem[_402 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _402 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _394 = mem[64]
            mem[64] = mem[64] + 64
            mem[_394] = 26
            mem[_394 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _412 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _412 + 68] = mem[idx + _394 + 32]
                idx = idx + 32
                continue 
            mem[_412 + 68] = mem[_412 + 74 len 26]
            revert with memory
              from mem[64]
               len _412 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _275 = mem[64]
        mem[64] = mem[64] + 64
        mem[_275] = 26
        mem[_275 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _285 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _285 + 68] = mem[idx + _275 + 32]
                idx = idx + 32
                continue 
            mem[_285 + 68] = mem[_285 + 74 len 26]
            revert with memory
              from mem[64]
               len _285 + -mem[64] + 100
        _306 = mem[64]
        mem[64] = mem[64] + 64
        mem[_306] = 26
        mem[_306 + 32] = 'SafeMath: division by zero'
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args devaddr, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + 64
        mem[_322] = 26
        mem[_322 + 32] = 'SafeMath: division by zero'
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args sub_f0e85d89Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + 64
        mem[_338] = 26
        mem[_338 + 32] = 'SafeMath: division by zero'
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args sub_08e9eef1Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = syrupAddress
        mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args syrupAddress, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint:
            _393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_393] = 26
            mem[_393 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
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
        if 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _401 = mem[64]
        mem[64] = mem[64] + 64
        mem[_401] = 26
        mem[_401 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _419 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _419 + 68] = mem[idx + _401 + 32]
            idx = idx + 32
            continue 
        mem[_419 + 68] = mem[_419 + 74 len 26]
        revert with memory
          from mem[64]
           len _419 + -mem[64] + 100
}

function sub_09fc66d4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10 * 10^18:
        revert with 0, 'setCakePerSecond: too many HAKU!'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.timestamp <= poolInfo[idx].field_512:
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
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        require ext_code.size(cakeAddress)
        staticcall cakeAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 100000000 * 10^18:
            _262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_262] = 26
            mem[_262 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _263 + 68] = mem[idx + _262 + 32]
                    idx = idx + 32
                    continue 
                mem[_263 + 68] = mem[_263 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _263 + -mem[64] + 100
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + 64
            mem[_302] = 26
            mem[_302 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + 64
            mem[_325] = 26
            mem[_325 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 26
                mem[_351 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _361 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _361 + 68] = mem[idx + _351 + 32]
                    idx = idx + 32
                    continue 
                mem[_361 + 68] = mem[_361 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _361 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _356 = mem[64]
            mem[64] = mem[64] + 64
            mem[_356] = 26
            mem[_356 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _366 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _366 + 68] = mem[idx + _356 + 32]
                idx = idx + 32
                continue 
            mem[_366 + 68] = mem[_366 + 74 len 26]
            revert with memory
              from mem[64]
               len _366 + -mem[64] + 100
        _248 = mem[64]
        mem[64] = mem[64] + 64
        mem[_248] = 30
        mem[_248 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _248 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _273 = mem[64]
            mem[64] = mem[64] + 64
            mem[_273] = 26
            mem[_273 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _278 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _278 + 68] = mem[idx + _273 + 32]
                    idx = idx + 32
                    continue 
                mem[_278 + 68] = mem[_278 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _278 + -mem[64] + 100
            _300 = mem[64]
            mem[64] = mem[64] + 64
            mem[_300] = 26
            mem[_300 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + 64
            mem[_324] = 26
            mem[_324 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_341] = 26
            mem[_341 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _385 = mem[64]
                mem[64] = mem[64] + 64
                mem[_385] = 26
                mem[_385 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _396 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _396 + 68] = mem[idx + _385 + 32]
                    idx = idx + 32
                    continue 
                mem[_396 + 68] = mem[_396 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _396 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _391 = mem[64]
            mem[64] = mem[64] + 64
            mem[_391] = 26
            mem[_391 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _404 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _404 + 68] = mem[idx + _391 + 32]
                idx = idx + 32
                continue 
            mem[_404 + 68] = mem[_404 + 74 len 26]
            revert with memory
              from mem[64]
               len _404 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_276] = 26
            mem[_276 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _282 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _282 + 68] = mem[idx + _276 + 32]
                    idx = idx + 32
                    continue 
                mem[_282 + 68] = mem[_282 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _282 + -mem[64] + 100
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 26
            mem[_306 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[64] = mem[64] + 64
            mem[_326] = 26
            mem[_326 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _342 = mem[64]
            mem[64] = mem[64] + 64
            mem[_342] = 26
            mem[_342 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _390 = mem[64]
                mem[64] = mem[64] + 64
                mem[_390] = 26
                mem[_390 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _401 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _401 + 68] = mem[idx + _390 + 32]
                    idx = idx + 32
                    continue 
                mem[_401 + 68] = mem[_401 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _401 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _395 = mem[64]
            mem[64] = mem[64] + 64
            mem[_395] = 26
            mem[_395 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _411 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _411 + 68] = mem[idx + _395 + 32]
                idx = idx + 32
                continue 
            mem[_411 + 68] = mem[_411 + 74 len 26]
            revert with memory
              from mem[64]
               len _411 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_4ae81874:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874):
            _277 = mem[64]
            mem[64] = mem[64] + 64
            mem[_277] = 26
            mem[_277 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _287 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _287 + 68] = mem[idx + _277 + 32]
                    idx = idx + 32
                    continue 
                mem[_287 + 68] = mem[_287 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _287 + -mem[64] + 100
            _310 = mem[64]
            mem[64] = mem[64] + 64
            mem[_310] = 26
            mem[_310 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _327 = mem[64]
            mem[64] = mem[64] + 64
            mem[_327] = 26
            mem[_327 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_343] = 26
            mem[_343 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, 0 / totalAllocPoint
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
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _408 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _408 + 68] = mem[idx + _394 + 32]
                    idx = idx + 32
                    continue 
                mem[_408 + 68] = mem[_408 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _408 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _400 = mem[64]
            mem[64] = mem[64] + 64
            mem[_400] = 26
            mem[_400 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _418 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _418 + 68] = mem[idx + _400 + 32]
                idx = idx + 32
                continue 
            mem[_418 + 68] = mem[_418 + 74 len 26]
            revert with memory
              from mem[64]
               len _418 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _281 = mem[64]
        mem[64] = mem[64] + 64
        mem[_281] = 26
        mem[_281 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _291 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _291 + 68] = mem[idx + _281 + 32]
                idx = idx + 32
                continue 
            mem[_291 + 68] = mem[_291 + 74 len 26]
            revert with memory
              from mem[64]
               len _291 + -mem[64] + 100
        _312 = mem[64]
        mem[64] = mem[64] + 64
        mem[_312] = 26
        mem[_312 + 32] = 'SafeMath: division by zero'
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args devaddr, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _328 = mem[64]
        mem[64] = mem[64] + 64
        mem[_328] = 26
        mem[_328 + 32] = 'SafeMath: division by zero'
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args sub_f0e85d89Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + 64
        mem[_344] = 26
        mem[_344 + 32] = 'SafeMath: division by zero'
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args sub_08e9eef1Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = syrupAddress
        mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(cakeAddress)
        call cakeAddress.0xda1919b3 with:
             gas gas_remaining wei
            args syrupAddress, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint:
            _399 = mem[64]
            mem[64] = mem[64] + 64
            mem[_399] = 26
            mem[_399 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _415 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _415 + 68] = mem[idx + _399 + 32]
                idx = idx + 32
                continue 
            mem[_415 + 68] = mem[_415 + 74 len 26]
            revert with memory
              from mem[64]
               len _415 + -mem[64] + 100
        if 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _407 = mem[64]
        mem[64] = mem[64] + 64
        mem[_407] = 26
        mem[_407 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _425 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _425 + 68] = mem[idx + _407 + 32]
            idx = idx + 32
            continue 
        mem[_425 + 68] = mem[_425 + 74 len 26]
        revert with memory
          from mem[64]
           len _425 + -mem[64] + 100
    sub_4ae81874 = arg1
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.timestamp <= poolInfo[idx].field_512:
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
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            require ext_code.size(cakeAddress)
            staticcall cakeAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 100000000 * 10^18:
                _315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_315] = 26
                mem[_315 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _316 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _316 + 68] = mem[idx + _315 + 32]
                        idx = idx + 32
                        continue 
                    mem[_316 + 68] = mem[_316 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _316 + -mem[64] + 100
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 26
                mem[_355 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _378 = mem[64]
                mem[64] = mem[64] + 64
                mem[_378] = 26
                mem[_378 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _404 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_404] = 26
                    mem[_404 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _414 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _414 + 68] = mem[idx + _404 + 32]
                        idx = idx + 32
                        continue 
                    mem[_414 + 68] = mem[_414 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _414 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = 26
                mem[_409 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _419 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _419 + 68] = mem[idx + _409 + 32]
                    idx = idx + 32
                    continue 
                mem[_419 + 68] = mem[_419 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _419 + -mem[64] + 100
            _301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_301] = 30
            mem[_301 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _301 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_326] = 26
                mem[_326 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _331 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _331 + 68] = mem[idx + _326 + 32]
                        idx = idx + 32
                        continue 
                    mem[_331 + 68] = mem[_331 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _331 + -mem[64] + 100
                _353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_353] = 26
                mem[_353 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _377 = mem[64]
                mem[64] = mem[64] + 64
                mem[_377] = 26
                mem[_377 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_394] = 26
                mem[_394 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _438 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_438] = 26
                    mem[_438 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _449 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _449 + 68] = mem[idx + _438 + 32]
                        idx = idx + 32
                        continue 
                    mem[_449 + 68] = mem[_449 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _449 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _444 = mem[64]
                mem[64] = mem[64] + 64
                mem[_444] = 26
                mem[_444 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _457 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _457 + 68] = mem[idx + _444 + 32]
                    idx = idx + 32
                    continue 
                mem[_457 + 68] = mem[_457 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _457 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 26
                mem[_329 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _335 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _335 + 68] = mem[idx + _329 + 32]
                        idx = idx + 32
                        continue 
                    mem[_335 + 68] = mem[_335 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _335 + -mem[64] + 100
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = 26
                mem[_359 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_379] = 26
                mem[_379 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _395 = mem[64]
                mem[64] = mem[64] + 64
                mem[_395] = 26
                mem[_395 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
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
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _454 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _454 + 68] = mem[idx + _443 + 32]
                        idx = idx + 32
                        continue 
                    mem[_454 + 68] = mem[_454 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _454 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _448 = mem[64]
                mem[64] = mem[64] + 64
                mem[_448] = 26
                mem[_448 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _464 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _464 + 68] = mem[idx + _448 + 32]
                    idx = idx + 32
                    continue 
                mem[_464 + 68] = mem[_464 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _464 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_4ae81874:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874):
                _330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_330] = 26
                mem[_330 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _340 + 68] = mem[idx + _330 + 32]
                        idx = idx + 32
                        continue 
                    mem[_340 + 68] = mem[_340 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _340 + -mem[64] + 100
                _363 = mem[64]
                mem[64] = mem[64] + 64
                mem[_363] = 26
                mem[_363 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_380] = 26
                mem[_380 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_396] = 26
                mem[_396 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _447 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_447] = 26
                    mem[_447 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _461 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _461 + 68] = mem[idx + _447 + 32]
                        idx = idx + 32
                        continue 
                    mem[_461 + 68] = mem[_461 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _461 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _453 = mem[64]
                mem[64] = mem[64] + 64
                mem[_453] = 26
                mem[_453 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _471 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _471 + 68] = mem[idx + _453 + 32]
                    idx = idx + 32
                    continue 
                mem[_471 + 68] = mem[_471 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _471 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _334 = mem[64]
            mem[64] = mem[64] + 64
            mem[_334] = 26
            mem[_334 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _344 + 68] = mem[idx + _334 + 32]
                    idx = idx + 32
                    continue 
                mem[_344 + 68] = mem[_344 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _344 + -mem[64] + 100
            _365 = mem[64]
            mem[64] = mem[64] + 64
            mem[_365] = 26
            mem[_365 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[64] = mem[64] + 64
            mem[_381] = 26
            mem[_381 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[64] = mem[64] + 64
            mem[_397] = 26
            mem[_397 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint:
                _452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_452] = 26
                mem[_452 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _468 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _468 + 68] = mem[idx + _452 + 32]
                    idx = idx + 32
                    continue 
                mem[_468 + 68] = mem[_468 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _468 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _460 = mem[64]
            mem[64] = mem[64] + 64
            mem[_460] = 26
            mem[_460 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _478 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _478 + 68] = mem[idx + _460 + 32]
                idx = idx + 32
                continue 
            mem[_478 + 68] = mem[_478 + 74 len 26]
            revert with memory
              from mem[64]
               len _478 + -mem[64] + 100
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
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[0] = arg2
    mem[32] = 12
    if stor12[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe6e6f6e4475706c6963617465643a204475706c696361746564204c50546f6b65,
                    mem[197 len 31]
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.timestamp <= poolInfo[idx].field_512:
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
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            require ext_code.size(cakeAddress)
            staticcall cakeAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 100000000 * 10^18:
                _311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_311] = 26
                mem[_311 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _312 + 68] = mem[idx + _311 + 32]
                        idx = idx + 32
                        continue 
                    mem[_312 + 68] = mem[_312 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _312 + -mem[64] + 100
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_320] = 26
                mem[_320 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 26
                mem[_351 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_374] = 26
                mem[_374 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_400] = 26
                    mem[_400 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _410 + 68] = mem[idx + _400 + 32]
                        idx = idx + 32
                        continue 
                    mem[_410 + 68] = mem[_410 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _410 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _405 = mem[64]
                mem[64] = mem[64] + 64
                mem[_405] = 26
                mem[_405 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _415 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _415 + 68] = mem[idx + _405 + 32]
                    idx = idx + 32
                    continue 
                mem[_415 + 68] = mem[_415 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _415 + -mem[64] + 100
            _297 = mem[64]
            mem[64] = mem[64] + 64
            mem[_297] = 30
            mem[_297 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _297 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_322] = 26
                mem[_322 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _327 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _327 + 68] = mem[idx + _322 + 32]
                        idx = idx + 32
                        continue 
                    mem[_327 + 68] = mem[_327 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _327 + -mem[64] + 100
                _349 = mem[64]
                mem[64] = mem[64] + 64
                mem[_349] = 26
                mem[_349 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_373] = 26
                mem[_373 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _390 = mem[64]
                mem[64] = mem[64] + 64
                mem[_390] = 26
                mem[_390 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _434 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_434] = 26
                    mem[_434 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _445 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _445 + 68] = mem[idx + _434 + 32]
                        idx = idx + 32
                        continue 
                    mem[_445 + 68] = mem[_445 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _445 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _440 = mem[64]
                mem[64] = mem[64] + 64
                mem[_440] = 26
                mem[_440 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _453 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _453 + 68] = mem[idx + _440 + 32]
                    idx = idx + 32
                    continue 
                mem[_453 + 68] = mem[_453 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _453 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_325] = 26
                mem[_325 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _331 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _331 + 68] = mem[idx + _325 + 32]
                        idx = idx + 32
                        continue 
                    mem[_331 + 68] = mem[_331 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _331 + -mem[64] + 100
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 26
                mem[_355 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_375] = 26
                mem[_375 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_391] = 26
                mem[_391 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _439 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_439] = 26
                    mem[_439 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _450 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _450 + 68] = mem[idx + _439 + 32]
                        idx = idx + 32
                        continue 
                    mem[_450 + 68] = mem[_450 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _450 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _444 = mem[64]
                mem[64] = mem[64] + 64
                mem[_444] = 26
                mem[_444 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _460 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _460 + 68] = mem[idx + _444 + 32]
                    idx = idx + 32
                    continue 
                mem[_460 + 68] = mem[_460 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _460 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_4ae81874:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874):
                _326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_326] = 26
                mem[_326 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _336 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _336 + 68] = mem[idx + _326 + 32]
                        idx = idx + 32
                        continue 
                    mem[_336 + 68] = mem[_336 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _336 + -mem[64] + 100
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = 26
                mem[_359 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_376] = 26
                mem[_376 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_392] = 26
                mem[_392 + 32] = 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = syrupAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
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
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _457 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _457 + 68] = mem[idx + _443 + 32]
                        idx = idx + 32
                        continue 
                    mem[_457 + 68] = mem[_457 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _457 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _449 = mem[64]
                mem[64] = mem[64] + 64
                mem[_449] = 26
                mem[_449 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _467 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _467 + 68] = mem[idx + _449 + 32]
                    idx = idx + 32
                    continue 
                mem[_467 + 68] = mem[_467 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _467 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 26
            mem[_330 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _340 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _340 + 68] = mem[idx + _330 + 32]
                    idx = idx + 32
                    continue 
                mem[_340 + 68] = mem[_340 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _340 + -mem[64] + 100
            _361 = mem[64]
            mem[64] = mem[64] + 64
            mem[_361] = 26
            mem[_361 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args devaddr, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + 64
            mem[_377] = 26
            mem[_377 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_f0e85d89Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_393] = 26
            mem[_393 + 32] = 'SafeMath: division by zero'
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args sub_08e9eef1Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xda1919b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syrupAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(cakeAddress)
            call cakeAddress.0xda1919b3 with:
                 gas gas_remaining wei
                args syrupAddress, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint:
                _448 = mem[64]
                mem[64] = mem[64] + 64
                mem[_448] = 26
                mem[_448 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _464 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _464 + 68] = mem[idx + _448 + 32]
                    idx = idx + 32
                    continue 
                mem[_464 + 68] = mem[_464 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _464 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _456 = mem[64]
            mem[64] = mem[64] + 64
            mem[_456] = 26
            mem[_456 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _474 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _474 + 68] = mem[idx + _456 + 32]
                idx = idx + 32
                continue 
            mem[_474 + 68] = mem[_474 + 74 len 26]
            revert with memory
              from mem[64]
               len _474 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor12[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF3F7[stor8.length] = arg1
    if block.timestamp > startTime:
        storF3F7[stor8.length] = block.timestamp
    else:
        storF3F7[stor8.length] = startTime
    storF3F7[stor8.length] = 0
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
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
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(syrupAddress)
                    call syrupAddress.0xa2e6ddcc with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(syrupAddress)
                    call syrupAddress.0xa2e6ddcc with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
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
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][msg.sender].field_0:
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(syrupAddress)
                        call syrupAddress.0xa2e6ddcc with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(syrupAddress)
                        call syrupAddress.0xa2e6ddcc with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            require ext_code.size(cakeAddress)
            staticcall cakeAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 100000000 * 10^18:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(cakeAddress)
                call cakeAddress.0xda1919b3 with:
                     gas gas_remaining wei
                    args syrupAddress, 0 / totalAllocPoint
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
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.timestamp
                if not userInfo[arg1][msg.sender].field_0:
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[736 len 4] = 0
                        mem[708 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 714 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(syrupAddress)
                            call syrupAddress.0xa2e6ddcc with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(syrupAddress)
                            call syrupAddress.0xa2e6ddcc with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[864 len 4] = 0
                        mem[836 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 842 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(cakeAddress)
                    call cakeAddress.0xda1919b3 with:
                         gas gas_remaining wei
                        args syrupAddress, 0 / totalAllocPoint
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(cakeAddress)
                        call cakeAddress.0xda1919b3 with:
                             gas gas_remaining wei
                            args syrupAddress, 0 / totalAllocPoint
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_4ae81874:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_f0e85d89Address, 0 / totalAllocPoint / 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_08e9eef1Address, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args syrupAddress, 0 / totalAllocPoint
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args devaddr, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_f0e85d89Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / 5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args sub_08e9eef1Address, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(cakeAddress)
                            call cakeAddress.0xda1919b3 with:
                                 gas gas_remaining wei
                                args syrupAddress, (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_4ae81874 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.timestamp
                if not userInfo[arg1][msg.sender].field_0:
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(syrupAddress)
                            call syrupAddress.0xa2e6ddcc with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                            require ext_code.size(syrupAddress)
                            call syrupAddress.0xa2e6ddcc with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
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
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[836]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 915 len 22]
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 906 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
