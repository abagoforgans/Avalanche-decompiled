contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_c452d126Address;
address devaddr;
uint256 bonusEndBlock;
uint256 sub_6da770bb;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of address stor57762096780731528330405058414938765910932439953606620384872163540286326260488;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260489;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260490;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260491;

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

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function sub_6da770bb(?) payable {
    return sub_6da770bb
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_c452d126(?) payable {
    return sub_c452d126Address
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require block.number < arg1
    startBlock = arg1
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
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if arg2 < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
    return (arg2 - arg1)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if uint8(stor0.field_8):
        sub_c452d126Address = arg1
        devaddr = arg2
        sub_6da770bb = arg3
        bonusEndBlock = arg5
        startBlock = arg4
        totalAllocPoint = 0
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            sub_c452d126Address = arg1
            devaddr = arg2
            sub_6da770bb = arg3
            bonusEndBlock = arg5
            startBlock = arg4
            totalAllocPoint = 0
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            sub_c452d126Address = arg1
            devaddr = arg2
            sub_6da770bb = arg3
            bonusEndBlock = arg5
            startBlock = arg4
            totalAllocPoint = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg6);
    owner = arg6
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
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
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 43 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
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
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 43 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
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
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) / block.number - bonusEndBlock != sub_6da770bb:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_3e44e3b8(?) payable {
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
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
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
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
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    else:
        if poolInfo[arg1].field_512 >= bonusEndBlock:
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
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
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
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        else:
            if bonusEndBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if poolInfo[arg1].field_512 > bonusEndBlock:
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[arg1].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
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
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                if (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) / block.number - bonusEndBlock != sub_6da770bb:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb):
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
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) != poolInfo[arg1].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if block.number < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
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
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
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
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    ('eq', ('div', ('add', ('mul', ('div', ('mul', 1000000000000, ('div', ('add', ('mul', 'number', ('stor', ('name', 'sub_6da770bb', 104)), ('field', 256, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105))))), ('mul', -1, ('field', 512, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105)))), ('stor', ('name', 'sub_6da770bb', 104)), ('field', 256, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105)))))), ('stor', ('name', 'totalAllocPoint', 107)))), ('ext_call.return_data', 0, 32)), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 106)))))), ('mul', ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105)))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 106))))))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userInfo', 106)))))), ('add', ('div', ('mul', 1000000000000, ('div', ('add', ('mul', 'number', ('stor', ('name', 'sub_6da770bb', 104)), ('field', 256, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105))))), ('mul', -1, ('field', 512, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105)))), ('stor', ('name', 'sub_6da770bb', 104)), ('field', 256, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105)))))), ('stor', ('name', 'totalAllocPoint', 107)))), ('ext_call.return_data', 0, 32)), ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'poolInfo', 105))))))
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[352 len 4] = uint32(arg2)
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[338 len 14],
                                uint32(arg2),
                                mem[356 len 4]
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
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[329 len 23],
                                    uint32(arg2),
                                    mem[356 len 4]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 339 len 22]
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
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 330 len 31]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_c452d126Address)
                staticcall sub_c452d126Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c452d126Address)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_c452d126Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call sub_c452d126Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_c452d126Address)
                staticcall sub_c452d126Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c452d126Address)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_c452d126Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_c452d126Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[480 len 4] = uint32(arg2)
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
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
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 458 len 31]
                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
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
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[352 len 4] = uint32(arg2)
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[338 len 14],
                                    uint32(arg2),
                                    mem[356 len 4]
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
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[329 len 23],
                                        uint32(arg2),
                                        mem[356 len 4]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                else:
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 339 len 22]
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
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 330 len 31]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c452d126Address)
                    staticcall sub_c452d126Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c452d126Address)
                    if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_c452d126Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                    else:
                        call sub_c452d126Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_c452d126Address)
                    staticcall sub_c452d126Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c452d126Address)
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        call sub_c452d126Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    else:
                        call sub_c452d126Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[480 len 4] = uint32(arg2)
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
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
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 458 len 31]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
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
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 43 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
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
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[608 len 4] = uint32(arg2)
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[516]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 595 len 22]
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
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 586 len 31]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_c452d126Address)
                        staticcall sub_c452d126Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c452d126Address)
                        if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_c452d126Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256
                        else:
                            call sub_c452d126Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_c452d126Address)
                        staticcall sub_c452d126Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c452d126Address)
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_c452d126Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        else:
                            call sub_c452d126Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[736 len 4] = uint32(arg2)
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
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
                    if not arg2 + userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 714 len 31]
                        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 43 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
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
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[608 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
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
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 586 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_c452d126Address)
                            staticcall sub_c452d126Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c452d126Address)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_c452d126Address)
                            staticcall sub_c452d126Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c452d126Address)
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[736 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
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
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 714 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) / block.number - bonusEndBlock != sub_6da770bb:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock - poolInfo[arg1].field_512 / bonusEndBlock - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 43 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c452d126Address)
                            call sub_c452d126Address.0x40c10f19 with:
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
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) / block.number - poolInfo[arg1].field_512 != sub_6da770bb:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
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
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / (block.number * sub_6da770bb) - (poolInfo[arg1].field_512 * sub_6da770bb) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 43:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    require ext_code.size(sub_c452d126Address)
                                    call sub_c452d126Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c452d126Address)
                                call sub_c452d126Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6da770bb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if not userInfo[arg1][msg.sender].field_0:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[672 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
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
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
                    else:
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_c452d126Address)
                            staticcall sub_c452d126Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c452d126Address)
                            if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_c452d126Address)
                            staticcall sub_c452d126Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c452d126Address)
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            else:
                                call sub_c452d126Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[800 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
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
                        if not arg2 + userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 105
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
        if block.number <= bonusEndBlock:
            _915 = mem[64]
            mem[64] = mem[64] + 64
            mem[_915] = 30
            mem[_915 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _915 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_986] = 26
                mem[_986 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _998 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _998 + 68] = mem[idx + _986 + 32]
                        idx = idx + 32
                        continue 
                    mem[_998 + 68] = mem[_998 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _998 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1062] = 26
                    mem[_1062 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1242 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1242] = 26
                        mem[_1242 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1302 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1302 + 68] = mem[idx + _1242 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1302 + 68] = mem[_1302 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1302 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1269] = 26
                    mem[_1269 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1343 + 68] = mem[idx + _1269 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1343 + 68] = mem[_1343 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1343 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1071] = 26
                mem[_1071 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1268] = 26
                    mem[_1268 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1340 + 68] = mem[idx + _1268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1340 + 68] = mem[_1340 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1340 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1301] = 26
                mem[_1301 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1384 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1384 + 68] = mem[idx + _1301 + 32]
                    idx = idx + 32
                    continue 
                mem[_1384 + 68] = mem[_1384 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1384 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _993 = mem[64]
                mem[64] = mem[64] + 64
                mem[_993] = 26
                mem[_993 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1006 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1006 + 68] = mem[idx + _993 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1006 + 68] = mem[_1006 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1006 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1070 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1070] = 26
                    mem[_1070 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1267] = 26
                        mem[_1267 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1337 + 68] = mem[idx + _1267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1337 + 68] = mem[_1337 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1337 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1300] = 26
                    mem[_1300 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1381 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1381 + 68] = mem[idx + _1300 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1381 + 68] = mem[_1381 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1381 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1084 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1084] = 26
                mem[_1084 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1299] = 26
                    mem[_1299 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1378 + 68] = mem[idx + _1299 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1378 + 68] = mem[_1378 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1378 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1336 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1336] = 26
                mem[_1336 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1421 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1421 + 68] = mem[idx + _1336 + 32]
                    idx = idx + 32
                    continue 
                mem[_1421 + 68] = mem[_1421 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1421 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                _997 = mem[64]
                mem[64] = mem[64] + 64
                mem[_997] = 26
                mem[_997 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1014 + 68] = mem[idx + _997 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1014 + 68] = mem[_1014 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1014 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1083] = 26
                    mem[_1083 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1298] = 26
                        mem[_1298 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1375 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1375 + 68] = mem[idx + _1298 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1375 + 68] = mem[_1375 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1375 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1335 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1335] = 26
                    mem[_1335 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1418 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1418 + 68] = mem[idx + _1335 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1418 + 68] = mem[_1418 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1418 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1097] = 26
                mem[_1097 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1334] = 26
                    mem[_1334 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1415 + 68] = mem[idx + _1334 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1415 + 68] = mem[_1415 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1415 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1374] = 26
                mem[_1374 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1450 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1450 + 68] = mem[idx + _1374 + 32]
                    idx = idx + 32
                    continue 
                mem[_1450 + 68] = mem[_1450 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1450 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1005 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1005] = 26
            mem[_1005 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1021 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1021 + 68] = mem[idx + _1005 + 32]
                    idx = idx + 32
                    continue 
                mem[_1021 + 68] = mem[_1021 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1021 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1096 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1096] = 26
                mem[_1096 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1333] = 26
                    mem[_1333 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1412 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1412 + 68] = mem[idx + _1333 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1412 + 68] = mem[_1412 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1412 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1373] = 26
                mem[_1373 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1447 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1447 + 68] = mem[idx + _1373 + 32]
                    idx = idx + 32
                    continue 
                mem[_1447 + 68] = mem[_1447 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1447 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1111 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1111] = 26
            mem[_1111 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1372 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1372] = 26
                mem[_1372 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1444 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1444 + 68] = mem[idx + _1372 + 32]
                    idx = idx + 32
                    continue 
                mem[_1444 + 68] = mem[_1444 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1444 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1411 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1411] = 26
            mem[_1411 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1471 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1471 + 68] = mem[idx + _1411 + 32]
                idx = idx + 32
                continue 
            mem[_1471 + 68] = mem[_1471 + 74 len 26]
            revert with memory
              from mem[64]
               len _1471 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _917 = mem[64]
            mem[64] = mem[64] + 64
            mem[_917] = 30
            mem[_917 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _917 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _975 = mem[64]
                mem[64] = mem[64] + 64
                mem[_975] = 26
                mem[_975 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _980 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _980 + 68] = mem[idx + _975 + 32]
                        idx = idx + 32
                        continue 
                    mem[_980 + 68] = mem[_980 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _980 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1035 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1035] = 26
                    mem[_1035 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1199] = 26
                        mem[_1199 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1219 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1219 + 68] = mem[idx + _1199 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1219 + 68] = mem[_1219 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1219 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1211] = 26
                    mem[_1211 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1235 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1235 + 68] = mem[idx + _1211 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1235 + 68] = mem[_1235 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1235 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1043] = 26
                mem[_1043 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1210] = 26
                    mem[_1210 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1232 + 68] = mem[idx + _1210 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1232 + 68] = mem[_1232 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1232 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1218] = 26
                mem[_1218 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1259 + 68] = mem[idx + _1218 + 32]
                    idx = idx + 32
                    continue 
                mem[_1259 + 68] = mem[_1259 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1259 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 26
                mem[_978 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _983 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _983 + 68] = mem[idx + _978 + 32]
                        idx = idx + 32
                        continue 
                    mem[_983 + 68] = mem[_983 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _983 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1042 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1042] = 26
                    mem[_1042 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1209] = 26
                        mem[_1209 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1229 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1229 + 68] = mem[idx + _1209 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1229 + 68] = mem[_1229 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1229 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1217 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1217] = 26
                    mem[_1217 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1256 + 68] = mem[idx + _1217 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1256 + 68] = mem[_1256 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1256 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1051 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1051] = 26
                mem[_1051 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1216] = 26
                    mem[_1216 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1253 + 68] = mem[idx + _1216 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1253 + 68] = mem[_1253 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1253 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1228] = 26
                mem[_1228 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1286 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1286 + 68] = mem[idx + _1228 + 32]
                    idx = idx + 32
                    continue 
                mem[_1286 + 68] = mem[_1286 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1286 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _979 = mem[64]
            mem[64] = mem[64] + 64
            mem[_979] = 26
            mem[_979 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _987 + 68] = mem[idx + _979 + 32]
                    idx = idx + 32
                    continue 
                mem[_987 + 68] = mem[_987 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _987 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1050 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1050] = 26
                mem[_1050 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1215] = 26
                    mem[_1215 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1250 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1250 + 68] = mem[idx + _1215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1250 + 68] = mem[_1250 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1250 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1227] = 26
                mem[_1227 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1283 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1283 + 68] = mem[idx + _1227 + 32]
                    idx = idx + 32
                    continue 
                mem[_1283 + 68] = mem[_1283 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1283 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1059 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1059] = 26
            mem[_1059 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1226] = 26
                mem[_1226 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1280 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1280 + 68] = mem[idx + _1226 + 32]
                    idx = idx + 32
                    continue 
                mem[_1280 + 68] = mem[_1280 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1280 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1249 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1249] = 26
            mem[_1249 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1317 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1317 + 68] = mem[idx + _1249 + 32]
                idx = idx + 32
                continue 
            mem[_1317 + 68] = mem[_1317 + 74 len 26]
            revert with memory
              from mem[64]
               len _1317 + -mem[64] + 100
        _916 = mem[64]
        mem[64] = mem[64] + 64
        mem[_916] = 30
        mem[_916 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _916 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _938 = mem[64]
        mem[64] = mem[64] + 64
        mem[_938] = 30
        mem[_938 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _938 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _1049 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1049] = 26
                mem[_1049 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1065 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1065 + 68] = mem[idx + _1049 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1065 + 68] = mem[_1065 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1065 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1169] = 26
                    mem[_1169 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1522 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1522] = 26
                        mem[_1522 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1580 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1580 + 68] = mem[idx + _1522 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1580 + 68] = mem[_1580 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1580 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1553 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1553] = 26
                    mem[_1553 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1608 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1608 + 68] = mem[idx + _1553 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1608 + 68] = mem[_1608 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1608 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1182] = 26
                mem[_1182 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1552 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1552] = 26
                    mem[_1552 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1605 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1605 + 68] = mem[idx + _1552 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1605 + 68] = mem[_1605 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1605 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1579] = 26
                mem[_1579 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1635 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1635 + 68] = mem[idx + _1579 + 32]
                    idx = idx + 32
                    continue 
                mem[_1635 + 68] = mem[_1635 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1635 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) / block.number - bonusEndBlock != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb):
                _1058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1058] = 26
                mem[_1058 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1076 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1076 + 68] = mem[idx + _1058 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1076 + 68] = mem[_1076 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1076 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1181 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1181] = 26
                    mem[_1181 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1551] = 26
                        mem[_1551 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1602 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1602 + 68] = mem[idx + _1551 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1602 + 68] = mem[_1602 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1602 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1578] = 26
                    mem[_1578 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1632 + 68] = mem[idx + _1578 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1632 + 68] = mem[_1632 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1632 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1194] = 26
                mem[_1194 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1577 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1577] = 26
                    mem[_1577 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1629 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1629 + 68] = mem[idx + _1577 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1629 + 68] = mem[_1629 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1629 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 26
                mem[_1601 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1659 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1659 + 68] = mem[idx + _1601 + 32]
                    idx = idx + 32
                    continue 
                mem[_1659 + 68] = mem[_1659 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1659 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1064 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1064] = 26
            mem[_1064 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1088 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1088 + 68] = mem[idx + _1064 + 32]
                    idx = idx + 32
                    continue 
                mem[_1088 + 68] = mem[_1088 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1088 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1193 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1193] = 26
                mem[_1193 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1576 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1576] = 26
                    mem[_1576 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1626 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1626 + 68] = mem[idx + _1576 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1626 + 68] = mem[_1626 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1626 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1600] = 26
                mem[_1600 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1656 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1656 + 68] = mem[idx + _1600 + 32]
                    idx = idx + 32
                    continue 
                mem[_1656 + 68] = mem[_1656 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1656 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1204] = 26
            mem[_1204 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1599] = 26
                mem[_1599 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1653 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1653 + 68] = mem[idx + _1599 + 32]
                    idx = idx + 32
                    continue 
                mem[_1653 + 68] = mem[_1653 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1653 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1625 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1625] = 26
            mem[_1625 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1681 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1681 + 68] = mem[idx + _1625 + 32]
                idx = idx + 32
                continue 
            mem[_1681 + 68] = mem[_1681 + 74 len 26]
            revert with memory
              from mem[64]
               len _1681 + -mem[64] + 100
        if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number < bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - poolInfo[idx].field_512:
            _1057 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1057] = 26
            mem[_1057 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1073 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1073 + 68] = mem[idx + _1057 + 32]
                    idx = idx + 32
                    continue 
                mem[_1073 + 68] = mem[_1073 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1073 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _1178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1178] = 26
                mem[_1178 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1546 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1546] = 26
                    mem[_1546 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1596 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1596 + 68] = mem[idx + _1546 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1596 + 68] = mem[_1596 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1596 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1573 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1573] = 26
                mem[_1573 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1622 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1622 + 68] = mem[idx + _1573 + 32]
                    idx = idx + 32
                    continue 
                mem[_1622 + 68] = mem[_1622 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1622 + -mem[64] + 100
            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1192 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1192] = 26
            mem[_1192 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1572 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1572] = 26
                mem[_1572 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1619 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1619 + 68] = mem[idx + _1572 + 32]
                    idx = idx + 32
                    continue 
                mem[_1619 + 68] = mem[_1619 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1619 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1595 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1595] = 26
            mem[_1595 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1649 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1649 + 68] = mem[idx + _1595 + 32]
                idx = idx + 32
                continue 
            mem[_1649 + 68] = mem[_1649 + 74 len 26]
            revert with memory
              from mem[64]
               len _1649 + -mem[64] + 100
        if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
            _1063 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1063] = 26
            mem[_1063 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1085 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1085 + 68] = mem[idx + _1063 + 32]
                    idx = idx + 32
                    continue 
                mem[_1085 + 68] = mem[_1085 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1085 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _1191 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1191] = 26
                mem[_1191 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1571 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1571] = 26
                    mem[_1571 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1616 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1616 + 68] = mem[idx + _1571 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1616 + 68] = mem[_1616 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1616 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1594 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1594] = 26
                mem[_1594 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1646 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1646 + 68] = mem[idx + _1594 + 32]
                    idx = idx + 32
                    continue 
                mem[_1646 + 68] = mem[_1646 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1646 + -mem[64] + 100
            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1203 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1203] = 26
            mem[_1203 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1593 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1593] = 26
                mem[_1593 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1643 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1643 + 68] = mem[idx + _1593 + 32]
                    idx = idx + 32
                    continue 
                mem[_1643 + 68] = mem[_1643 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1643 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1615 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1615] = 26
            mem[_1615 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1673 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1673 + 68] = mem[idx + _1615 + 32]
                idx = idx + 32
                continue 
            mem[_1673 + 68] = mem[_1673 + 74 len 26]
            revert with memory
              from mem[64]
               len _1673 + -mem[64] + 100
        if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1072 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1072] = 26
        mem[_1072 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _1098 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1098 + 68] = mem[idx + _1072 + 32]
                idx = idx + 32
                continue 
            mem[_1098 + 68] = mem[_1098 + 74 len 26]
            revert with memory
              from mem[64]
               len _1098 + -mem[64] + 100
        if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
            _1202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1202] = 26
            mem[_1202 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1592 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1592] = 26
                mem[_1592 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1640 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1640 + 68] = mem[idx + _1592 + 32]
                    idx = idx + 32
                    continue 
                mem[_1640 + 68] = mem[_1640 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1640 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1614 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1614] = 26
            mem[_1614 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1670 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1670 + 68] = mem[idx + _1614 + 32]
                idx = idx + 32
                continue 
            mem[_1670 + 68] = mem[_1670 + 74 len 26]
            revert with memory
              from mem[64]
               len _1670 + -mem[64] + 100
        if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1212 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1212] = 26
        mem[_1212 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_c452d126Address)
        call sub_c452d126Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_c452d126Address)
        call sub_c452d126Address.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
            _1613 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1613] = 26
            mem[_1613 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1667 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1667 + 68] = mem[idx + _1613 + 32]
                idx = idx + 32
                continue 
            mem[_1667 + 68] = mem[_1667 + 74 len 26]
            revert with memory
              from mem[64]
               len _1667 + -mem[64] + 100
        if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1639 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1639] = 26
        mem[_1639 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1695 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _1695 + 68] = mem[idx + _1639 + 32]
            idx = idx + 32
            continue 
        mem[_1695 + 68] = mem[_1695 + 74 len 26]
        revert with memory
          from mem[64]
           len _1695 + -mem[64] + 100
}

function sub_5cead5e5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 105
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
        if block.number <= bonusEndBlock:
            _923 = mem[64]
            mem[64] = mem[64] + 64
            mem[_923] = 30
            mem[_923 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _923 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _994 = mem[64]
                mem[64] = mem[64] + 64
                mem[_994] = 26
                mem[_994 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1006 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1006 + 68] = mem[idx + _994 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1006 + 68] = mem[_1006 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1006 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1070 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1070] = 26
                    mem[_1070 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1250] = 26
                        mem[_1250 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1310 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1310 + 68] = mem[idx + _1250 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1310 + 68] = mem[_1310 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1310 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1277] = 26
                    mem[_1277 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1351 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1351 + 68] = mem[idx + _1277 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1351 + 68] = mem[_1351 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1351 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1079 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1079] = 26
                mem[_1079 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1276 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1276] = 26
                    mem[_1276 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1348 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1348 + 68] = mem[idx + _1276 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1348 + 68] = mem[_1348 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1348 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1309] = 26
                mem[_1309 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1392 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1392 + 68] = mem[idx + _1309 + 32]
                    idx = idx + 32
                    continue 
                mem[_1392 + 68] = mem[_1392 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1392 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _1001 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1001] = 26
                mem[_1001 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1014 + 68] = mem[idx + _1001 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1014 + 68] = mem[_1014 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1014 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1078 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1078] = 26
                    mem[_1078 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1275] = 26
                        mem[_1275 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1345 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1345 + 68] = mem[idx + _1275 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1345 + 68] = mem[_1345 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1345 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1308 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1308] = 26
                    mem[_1308 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1389 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1389 + 68] = mem[idx + _1308 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1389 + 68] = mem[_1389 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1389 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1092 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1092] = 26
                mem[_1092 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1307] = 26
                    mem[_1307 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1386 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1386 + 68] = mem[idx + _1307 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1386 + 68] = mem[_1386 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1386 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1344 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1344] = 26
                mem[_1344 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1429 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1429 + 68] = mem[idx + _1344 + 32]
                    idx = idx + 32
                    continue 
                mem[_1429 + 68] = mem[_1429 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1429 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                _1005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1005] = 26
                mem[_1005 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1022 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1022 + 68] = mem[idx + _1005 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1022 + 68] = mem[_1022 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1022 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1091] = 26
                    mem[_1091 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1306 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1306] = 26
                        mem[_1306 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1383 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1383 + 68] = mem[idx + _1306 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1383 + 68] = mem[_1383 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1383 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1343] = 26
                    mem[_1343 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1426 + 68] = mem[idx + _1343 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1426 + 68] = mem[_1426 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1426 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1105] = 26
                mem[_1105 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1342] = 26
                    mem[_1342 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1423 + 68] = mem[idx + _1342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1423 + 68] = mem[_1423 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1423 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1382] = 26
                mem[_1382 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1458 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1458 + 68] = mem[idx + _1382 + 32]
                    idx = idx + 32
                    continue 
                mem[_1458 + 68] = mem[_1458 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1458 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1013 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1013] = 26
            mem[_1013 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1029 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1029 + 68] = mem[idx + _1013 + 32]
                    idx = idx + 32
                    continue 
                mem[_1029 + 68] = mem[_1029 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1029 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1104] = 26
                mem[_1104 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1341 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1341] = 26
                    mem[_1341 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1420 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1420 + 68] = mem[idx + _1341 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1420 + 68] = mem[_1420 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1420 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1381 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1381] = 26
                mem[_1381 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1455 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1455 + 68] = mem[idx + _1381 + 32]
                    idx = idx + 32
                    continue 
                mem[_1455 + 68] = mem[_1455 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1455 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1119 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1119] = 26
            mem[_1119 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1380] = 26
                mem[_1380 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1452 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1452 + 68] = mem[idx + _1380 + 32]
                    idx = idx + 32
                    continue 
                mem[_1452 + 68] = mem[_1452 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1452 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1419 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1419] = 26
            mem[_1419 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1479 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1479 + 68] = mem[idx + _1419 + 32]
                idx = idx + 32
                continue 
            mem[_1479 + 68] = mem[_1479 + 74 len 26]
            revert with memory
              from mem[64]
               len _1479 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _925 = mem[64]
            mem[64] = mem[64] + 64
            mem[_925] = 30
            mem[_925 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _925 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _983 = mem[64]
                mem[64] = mem[64] + 64
                mem[_983] = 26
                mem[_983 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _988 + 68] = mem[idx + _983 + 32]
                        idx = idx + 32
                        continue 
                    mem[_988 + 68] = mem[_988 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _988 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1043] = 26
                    mem[_1043 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1207 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1207] = 26
                        mem[_1207 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1227 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1227 + 68] = mem[idx + _1207 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1227 + 68] = mem[_1227 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1227 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1219 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1219] = 26
                    mem[_1219 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1243 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1243 + 68] = mem[idx + _1219 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1243 + 68] = mem[_1243 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1243 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1051 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1051] = 26
                mem[_1051 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1218 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1218] = 26
                    mem[_1218 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1240 + 68] = mem[idx + _1218 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1240 + 68] = mem[_1240 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1240 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1226] = 26
                mem[_1226 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1267 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1267 + 68] = mem[idx + _1226 + 32]
                    idx = idx + 32
                    continue 
                mem[_1267 + 68] = mem[_1267 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1267 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                _986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_986] = 26
                mem[_986 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _991 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _991 + 68] = mem[idx + _986 + 32]
                        idx = idx + 32
                        continue 
                    mem[_991 + 68] = mem[_991 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _991 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1050 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1050] = 26
                    mem[_1050 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1217] = 26
                        mem[_1217 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1237 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1237 + 68] = mem[idx + _1217 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1237 + 68] = mem[_1237 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1237 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1225] = 26
                    mem[_1225 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1264 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1264 + 68] = mem[idx + _1225 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1264 + 68] = mem[_1264 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1264 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1059 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1059] = 26
                mem[_1059 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1224] = 26
                    mem[_1224 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1261 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1261 + 68] = mem[idx + _1224 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1261 + 68] = mem[_1261 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1261 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1236] = 26
                mem[_1236 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1294 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1294 + 68] = mem[idx + _1236 + 32]
                    idx = idx + 32
                    continue 
                mem[_1294 + 68] = mem[_1294 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1294 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _987 = mem[64]
            mem[64] = mem[64] + 64
            mem[_987] = 26
            mem[_987 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _995 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _995 + 68] = mem[idx + _987 + 32]
                    idx = idx + 32
                    continue 
                mem[_995 + 68] = mem[_995 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _995 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1058] = 26
                mem[_1058 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1223] = 26
                    mem[_1223 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1258 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1258 + 68] = mem[idx + _1223 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1258 + 68] = mem[_1258 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1258 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1235] = 26
                mem[_1235 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1291 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1291 + 68] = mem[idx + _1235 + 32]
                    idx = idx + 32
                    continue 
                mem[_1291 + 68] = mem[_1291 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1291 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1067 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1067] = 26
            mem[_1067 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1234] = 26
                mem[_1234 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1288 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1288 + 68] = mem[idx + _1234 + 32]
                    idx = idx + 32
                    continue 
                mem[_1288 + 68] = mem[_1288 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1288 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1257] = 26
            mem[_1257 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1325 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1325 + 68] = mem[idx + _1257 + 32]
                idx = idx + 32
                continue 
            mem[_1325 + 68] = mem[_1325 + 74 len 26]
            revert with memory
              from mem[64]
               len _1325 + -mem[64] + 100
        _924 = mem[64]
        mem[64] = mem[64] + 64
        mem[_924] = 30
        mem[_924 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _924 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _946 = mem[64]
        mem[64] = mem[64] + 64
        mem[_946] = 30
        mem[_946 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _946 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _1057 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1057] = 26
                mem[_1057 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1073 + 68] = mem[idx + _1057 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1073 + 68] = mem[_1073 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1073 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1177] = 26
                    mem[_1177 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1530] = 26
                        mem[_1530 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1588 + 68] = mem[idx + _1530 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1588 + 68] = mem[_1588 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1588 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1561] = 26
                    mem[_1561 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1616 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1616 + 68] = mem[idx + _1561 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1616 + 68] = mem[_1616 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1616 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1190] = 26
                mem[_1190 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1560] = 26
                    mem[_1560 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1613 + 68] = mem[idx + _1560 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1613 + 68] = mem[_1613 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1613 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1587 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1587] = 26
                mem[_1587 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1643 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1643 + 68] = mem[idx + _1587 + 32]
                    idx = idx + 32
                    continue 
                mem[_1643 + 68] = mem[_1643 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1643 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) / block.number - bonusEndBlock != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb):
                _1066 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1066] = 26
                mem[_1066 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1084 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1084 + 68] = mem[idx + _1066 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1084 + 68] = mem[_1084 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1084 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1189] = 26
                    mem[_1189 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1559 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1559] = 26
                        mem[_1559 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1610 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1610 + 68] = mem[idx + _1559 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1610 + 68] = mem[_1610 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1610 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1586 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1586] = 26
                    mem[_1586 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1640 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1640 + 68] = mem[idx + _1586 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1640 + 68] = mem[_1640 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1640 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1202] = 26
                mem[_1202 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1585 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1585] = 26
                    mem[_1585 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1637 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1637 + 68] = mem[idx + _1585 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1637 + 68] = mem[_1637 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1637 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1609] = 26
                mem[_1609 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1667 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1667 + 68] = mem[idx + _1609 + 32]
                    idx = idx + 32
                    continue 
                mem[_1667 + 68] = mem[_1667 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1667 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1072 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1072] = 26
            mem[_1072 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1096 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1096 + 68] = mem[idx + _1072 + 32]
                    idx = idx + 32
                    continue 
                mem[_1096 + 68] = mem[_1096 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1096 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1201] = 26
                mem[_1201 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1584 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1584] = 26
                    mem[_1584 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1634 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1634 + 68] = mem[idx + _1584 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1634 + 68] = mem[_1634 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1634 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1608 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1608] = 26
                mem[_1608 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1664 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1664 + 68] = mem[idx + _1608 + 32]
                    idx = idx + 32
                    continue 
                mem[_1664 + 68] = mem[_1664 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1664 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1212] = 26
            mem[_1212 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1607 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1607] = 26
                mem[_1607 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1661 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1661 + 68] = mem[idx + _1607 + 32]
                    idx = idx + 32
                    continue 
                mem[_1661 + 68] = mem[_1661 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1661 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1633 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1633] = 26
            mem[_1633 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1689 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1689 + 68] = mem[idx + _1633 + 32]
                idx = idx + 32
                continue 
            mem[_1689 + 68] = mem[_1689 + 74 len 26]
            revert with memory
              from mem[64]
               len _1689 + -mem[64] + 100
        if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number < bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - poolInfo[idx].field_512:
            _1065 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1065] = 26
            mem[_1065 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1081 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1081 + 68] = mem[idx + _1065 + 32]
                    idx = idx + 32
                    continue 
                mem[_1081 + 68] = mem[_1081 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1081 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _1186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1186] = 26
                mem[_1186 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1554 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1554] = 26
                    mem[_1554 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1604 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1604 + 68] = mem[idx + _1554 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1604 + 68] = mem[_1604 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1604 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1581 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1581] = 26
                mem[_1581 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1630 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1630 + 68] = mem[idx + _1581 + 32]
                    idx = idx + 32
                    continue 
                mem[_1630 + 68] = mem[_1630 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1630 + -mem[64] + 100
            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1200 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1200] = 26
            mem[_1200 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1580] = 26
                mem[_1580 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1627 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1627 + 68] = mem[idx + _1580 + 32]
                    idx = idx + 32
                    continue 
                mem[_1627 + 68] = mem[_1627 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1627 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1603 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1603] = 26
            mem[_1603 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1657 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1657 + 68] = mem[idx + _1603 + 32]
                idx = idx + 32
                continue 
            mem[_1657 + 68] = mem[_1657 + 74 len 26]
            revert with memory
              from mem[64]
               len _1657 + -mem[64] + 100
        if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
            _1071 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1071] = 26
            mem[_1071 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1093 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1093 + 68] = mem[idx + _1071 + 32]
                    idx = idx + 32
                    continue 
                mem[_1093 + 68] = mem[_1093 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1093 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _1199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1199] = 26
                mem[_1199 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1579 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1579] = 26
                    mem[_1579 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1624 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1624 + 68] = mem[idx + _1579 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1624 + 68] = mem[_1624 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1624 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1602] = 26
                mem[_1602 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1654 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1654 + 68] = mem[idx + _1602 + 32]
                    idx = idx + 32
                    continue 
                mem[_1654 + 68] = mem[_1654 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1654 + -mem[64] + 100
            if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1211 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1211] = 26
            mem[_1211 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 26
                mem[_1601 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1651 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1651 + 68] = mem[idx + _1601 + 32]
                    idx = idx + 32
                    continue 
                mem[_1651 + 68] = mem[_1651 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1651 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1623 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1623] = 26
            mem[_1623 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1681 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1681 + 68] = mem[idx + _1623 + 32]
                idx = idx + 32
                continue 
            mem[_1681 + 68] = mem[_1681 + 74 len 26]
            revert with memory
              from mem[64]
               len _1681 + -mem[64] + 100
        if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1080 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1080] = 26
        mem[_1080 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _1106 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1106 + 68] = mem[idx + _1080 + 32]
                idx = idx + 32
                continue 
            mem[_1106 + 68] = mem[_1106 + 74 len 26]
            revert with memory
              from mem[64]
               len _1106 + -mem[64] + 100
        if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
            _1210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1210] = 26
            mem[_1210 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1600] = 26
                mem[_1600 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1648 + 68] = mem[idx + _1600 + 32]
                    idx = idx + 32
                    continue 
                mem[_1648 + 68] = mem[_1648 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1648 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1622 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1622] = 26
            mem[_1622 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1678 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1678 + 68] = mem[idx + _1622 + 32]
                idx = idx + 32
                continue 
            mem[_1678 + 68] = mem[_1678 + 74 len 26]
            revert with memory
              from mem[64]
               len _1678 + -mem[64] + 100
        if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1220 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1220] = 26
        mem[_1220 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_c452d126Address)
        call sub_c452d126Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_c452d126Address)
        call sub_c452d126Address.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
            _1621 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1621] = 26
            mem[_1621 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1675 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1675 + 68] = mem[idx + _1621 + 32]
                idx = idx + 32
                continue 
            mem[_1675 + 68] = mem[_1675 + 74 len 26]
            revert with memory
              from mem[64]
               len _1675 + -mem[64] + 100
        if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1647 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1647] = 26
        mem[_1647 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1703 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _1703 + 68] = mem[idx + _1647 + 32]
            idx = idx + 32
            continue 
        mem[_1703 + 68] = mem[_1703 + 74 len 26]
        revert with memory
          from mem[64]
           len _1703 + -mem[64] + 100
    sub_6da770bb = arg1
    emit 0x955963fc: arg1
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 105
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
            if block.number <= bonusEndBlock:
                _970 = mem[64]
                mem[64] = mem[64] + 64
                mem[_970] = 30
                mem[_970 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _970 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1042 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1042] = 26
                    mem[_1042 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1054 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1054 + 68] = mem[idx + _1042 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1054 + 68] = mem[_1054 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1054 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1118 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1118] = 26
                        mem[_1118 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1298] = 26
                            mem[_1298 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1358 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1358 + 68] = mem[idx + _1298 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1358 + 68] = mem[_1358 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1358 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1325] = 26
                        mem[_1325 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1399 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1399 + 68] = mem[idx + _1325 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1399 + 68] = mem[_1399 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1399 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1127] = 26
                    mem[_1127 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1324] = 26
                        mem[_1324 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1396 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1396 + 68] = mem[idx + _1324 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1396 + 68] = mem[_1396 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1396 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1357] = 26
                    mem[_1357 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1440 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1440 + 68] = mem[idx + _1357 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1440 + 68] = mem[_1440 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1440 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1049] = 26
                    mem[_1049 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1062 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1062 + 68] = mem[idx + _1049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1062 + 68] = mem[_1062 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1062 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1126 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1126] = 26
                        mem[_1126 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1323 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1323] = 26
                            mem[_1323 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1393 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1393 + 68] = mem[idx + _1323 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1393 + 68] = mem[_1393 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1393 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1356] = 26
                        mem[_1356 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1437 + 68] = mem[idx + _1356 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1437 + 68] = mem[_1437 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1437 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1140 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1140] = 26
                    mem[_1140 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1355] = 26
                        mem[_1355 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1434 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1434 + 68] = mem[idx + _1355 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1434 + 68] = mem[_1434 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1434 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1392 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1392] = 26
                    mem[_1392 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1477 + 68] = mem[idx + _1392 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1477 + 68] = mem[_1477 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1477 + -mem[64] + 100
                if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                    _1053 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1053] = 26
                    mem[_1053 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1070 + 68] = mem[idx + _1053 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1070 + 68] = mem[_1070 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1070 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1139 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1139] = 26
                        mem[_1139 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1354 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1354] = 26
                            mem[_1354 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1431 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1431 + 68] = mem[idx + _1354 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1431 + 68] = mem[_1431 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1431 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1391 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1391] = 26
                        mem[_1391 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1474 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1474 + 68] = mem[idx + _1391 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1474 + 68] = mem[_1474 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1474 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1153] = 26
                    mem[_1153 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1390] = 26
                        mem[_1390 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1471 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1471 + 68] = mem[idx + _1390 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1471 + 68] = mem[_1471 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1471 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1430 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1430] = 26
                    mem[_1430 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1506 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1506 + 68] = mem[idx + _1430 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1506 + 68] = mem[_1506 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1506 + -mem[64] + 100
                if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1061 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1061] = 26
                mem[_1061 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1077 + 68] = mem[idx + _1061 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1077 + 68] = mem[_1077 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1077 + -mem[64] + 100
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1152] = 26
                    mem[_1152 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                        _1389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1389] = 26
                        mem[_1389 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1468 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1468 + 68] = mem[idx + _1389 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1468 + 68] = mem[_1468 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1468 + -mem[64] + 100
                    if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1429 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1429] = 26
                    mem[_1429 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1503 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1503 + 68] = mem[idx + _1429 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1503 + 68] = mem[_1503 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1503 + -mem[64] + 100
                if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1167] = 26
                mem[_1167 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1428 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1428] = 26
                    mem[_1428 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1500 + 68] = mem[idx + _1428 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1500 + 68] = mem[_1500 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1500 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1467] = 26
                mem[_1467 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1527 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1527 + 68] = mem[idx + _1467 + 32]
                    idx = idx + 32
                    continue 
                mem[_1527 + 68] = mem[_1527 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1527 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _973 = mem[64]
                mem[64] = mem[64] + 64
                mem[_973] = 30
                mem[_973 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _973 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1031 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1031] = 26
                    mem[_1031 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1036 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1036 + 68] = mem[idx + _1031 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1036 + 68] = mem[_1036 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1036 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1091 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1091] = 26
                        mem[_1091 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1255 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1255] = 26
                            mem[_1255 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1275 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1275 + 68] = mem[idx + _1255 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1275 + 68] = mem[_1275 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1275 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1267] = 26
                        mem[_1267 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1291 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1291 + 68] = mem[idx + _1267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1291 + 68] = mem[_1291 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1291 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1099 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1099] = 26
                    mem[_1099 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1266 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1266] = 26
                        mem[_1266 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1288 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1288 + 68] = mem[idx + _1266 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1288 + 68] = mem[_1288 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1288 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1274] = 26
                    mem[_1274 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1315 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1315 + 68] = mem[idx + _1274 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1315 + 68] = mem[_1315 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1315 + -mem[64] + 100
                if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                    _1034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1034] = 26
                    mem[_1034 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1039 + 68] = mem[idx + _1034 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1039 + 68] = mem[_1039 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1039 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1098 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1098] = 26
                        mem[_1098 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1265 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1265] = 26
                            mem[_1265 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1285 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1285 + 68] = mem[idx + _1265 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1285 + 68] = mem[_1285 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1285 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1273] = 26
                        mem[_1273 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1312 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1312 + 68] = mem[idx + _1273 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1312 + 68] = mem[_1312 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1312 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1107] = 26
                    mem[_1107 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1272] = 26
                        mem[_1272 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1309 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1309 + 68] = mem[idx + _1272 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1309 + 68] = mem[_1309 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1309 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1284] = 26
                    mem[_1284 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1342 + 68] = mem[idx + _1284 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1342 + 68] = mem[_1342 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1342 + -mem[64] + 100
                if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1035 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1035] = 26
                mem[_1035 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1043 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1043 + 68] = mem[idx + _1035 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1043 + 68] = mem[_1043 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1043 + -mem[64] + 100
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1106] = 26
                    mem[_1106 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                        _1271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1271] = 26
                        mem[_1271 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1306 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1306 + 68] = mem[idx + _1271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1306 + 68] = mem[_1306 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1306 + -mem[64] + 100
                    if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1283] = 26
                    mem[_1283 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1339 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1339 + 68] = mem[idx + _1283 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1339 + 68] = mem[_1339 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1339 + -mem[64] + 100
                if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1115] = 26
                mem[_1115 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1282] = 26
                    mem[_1282 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1336 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1336 + 68] = mem[idx + _1282 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1336 + 68] = mem[_1336 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1336 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1305] = 26
                mem[_1305 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1373 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1373 + 68] = mem[idx + _1305 + 32]
                    idx = idx + 32
                    continue 
                mem[_1373 + 68] = mem[_1373 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1373 + -mem[64] + 100
            _972 = mem[64]
            mem[64] = mem[64] + 64
            mem[_972] = 30
            mem[_972 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _972 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _994 = mem[64]
            mem[64] = mem[64] + 64
            mem[_994] = 30
            mem[_994 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _994 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _1105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1105] = 26
                    mem[_1105 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1121 + 68] = mem[idx + _1105 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1121 + 68] = mem[_1121 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1121 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1225] = 26
                        mem[_1225 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1578 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1578] = 26
                            mem[_1578 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1636 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1636 + 68] = mem[idx + _1578 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1636 + 68] = mem[_1636 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1636 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1609] = 26
                        mem[_1609 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1664 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1664 + 68] = mem[idx + _1609 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1664 + 68] = mem[_1664 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1664 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1238] = 26
                    mem[_1238 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1608 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1608] = 26
                        mem[_1608 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1661 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1661 + 68] = mem[idx + _1608 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1661 + 68] = mem[_1661 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1661 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1635 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1635] = 26
                    mem[_1635 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1691 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1691 + 68] = mem[idx + _1635 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1691 + 68] = mem[_1691 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1691 + -mem[64] + 100
                if (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) / block.number - bonusEndBlock != sub_6da770bb:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb):
                    _1114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1114] = 26
                    mem[_1114 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1132 + 68] = mem[idx + _1114 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1132 + 68] = mem[_1132 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1132 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1237] = 26
                        mem[_1237 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1607 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1607] = 26
                            mem[_1607 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1658 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1658 + 68] = mem[idx + _1607 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1658 + 68] = mem[_1658 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1658 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1634 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1634] = 26
                        mem[_1634 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1688 + 68] = mem[idx + _1634 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1688 + 68] = mem[_1688 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1688 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1250 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1250] = 26
                    mem[_1250 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1633 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1633] = 26
                        mem[_1633 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1685 + 68] = mem[idx + _1633 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1685 + 68] = mem[_1685 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1685 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1657] = 26
                    mem[_1657 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1715 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1715 + 68] = mem[idx + _1657 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1715 + 68] = mem[_1715 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1715 + -mem[64] + 100
                if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1120] = 26
                mem[_1120 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1144 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1144 + 68] = mem[idx + _1120 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1144 + 68] = mem[_1144 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1144 + -mem[64] + 100
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1249] = 26
                    mem[_1249 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                        _1632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1632] = 26
                        mem[_1632 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1682 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1682 + 68] = mem[idx + _1632 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1682 + 68] = mem[_1682 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1682 + -mem[64] + 100
                    if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1656] = 26
                    mem[_1656 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1712 + 68] = mem[idx + _1656 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1712 + 68] = mem[_1712 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1712 + -mem[64] + 100
                if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1260] = 26
                mem[_1260 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1655] = 26
                    mem[_1655 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1709 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1709 + 68] = mem[idx + _1655 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1709 + 68] = mem[_1709 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1709 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1681 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1681] = 26
                mem[_1681 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1737 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1737 + 68] = mem[idx + _1681 + 32]
                    idx = idx + 32
                    continue 
                mem[_1737 + 68] = mem[_1737 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1737 + -mem[64] + 100
            if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - poolInfo[idx].field_512:
                _1113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1113] = 26
                mem[_1113 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1129 + 68] = mem[idx + _1113 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1129 + 68] = mem[_1129 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1129 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1234] = 26
                    mem[_1234 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1602 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1602] = 26
                        mem[_1602 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1652 + 68] = mem[idx + _1602 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1652 + 68] = mem[_1652 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1652 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1629] = 26
                    mem[_1629 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1678 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1678 + 68] = mem[idx + _1629 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1678 + 68] = mem[_1678 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1678 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1248] = 26
                mem[_1248 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1628 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1628] = 26
                    mem[_1628 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1675 + 68] = mem[idx + _1628 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1675 + 68] = mem[_1675 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1675 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1651 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1651] = 26
                mem[_1651 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1705 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1705 + 68] = mem[idx + _1651 + 32]
                    idx = idx + 32
                    continue 
                mem[_1705 + 68] = mem[_1705 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1705 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                _1119 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1119] = 26
                mem[_1119 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1141 + 68] = mem[idx + _1119 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1141 + 68] = mem[_1141 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1141 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1247] = 26
                    mem[_1247 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1627 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1627] = 26
                        mem[_1627 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1672 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1672 + 68] = mem[idx + _1627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1672 + 68] = mem[_1672 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1672 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1650 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1650] = 26
                    mem[_1650 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1702 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1702 + 68] = mem[idx + _1650 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1702 + 68] = mem[_1702 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1702 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1259 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1259] = 26
                mem[_1259 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1649] = 26
                    mem[_1649 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1699 + 68] = mem[idx + _1649 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1699 + 68] = mem[_1699 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1699 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1671] = 26
                mem[_1671 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1729 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1729 + 68] = mem[idx + _1671 + 32]
                    idx = idx + 32
                    continue 
                mem[_1729 + 68] = mem[_1729 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1729 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1128] = 26
            mem[_1128 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1154 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1154 + 68] = mem[idx + _1128 + 32]
                    idx = idx + 32
                    continue 
                mem[_1154 + 68] = mem[_1154 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1154 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1258] = 26
                mem[_1258 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1648 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1648] = 26
                    mem[_1648 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1696 + 68] = mem[idx + _1648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1696 + 68] = mem[_1696 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1696 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1670 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1670] = 26
                mem[_1670 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1726 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1726 + 68] = mem[idx + _1670 + 32]
                    idx = idx + 32
                    continue 
                mem[_1726 + 68] = mem[_1726 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1726 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1268] = 26
            mem[_1268 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1669 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1669] = 26
                mem[_1669 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1723 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1723 + 68] = mem[idx + _1669 + 32]
                    idx = idx + 32
                    continue 
                mem[_1723 + 68] = mem[_1723 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1723 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1695 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1695] = 26
            mem[_1695 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1751 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1751 + 68] = mem[idx + _1695 + 32]
                idx = idx + 32
                continue 
            mem[_1751 + 68] = mem[_1751 + 74 len 26]
            revert with memory
              from mem[64]
               len _1751 + -mem[64] + 100
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
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 105
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
            if block.number <= bonusEndBlock:
                _961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_961] = 30
                mem[_961 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _961 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1032 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1032] = 26
                    mem[_1032 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1044 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1044 + 68] = mem[idx + _1032 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1044 + 68] = mem[_1044 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1044 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1108 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1108] = 26
                        mem[_1108 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1288 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1288] = 26
                            mem[_1288 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1348 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1348 + 68] = mem[idx + _1288 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1348 + 68] = mem[_1348 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1348 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1315] = 26
                        mem[_1315 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1389 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1389 + 68] = mem[idx + _1315 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1389 + 68] = mem[_1389 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1389 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1117] = 26
                    mem[_1117 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1314] = 26
                        mem[_1314 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1386 + 68] = mem[idx + _1314 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1386 + 68] = mem[_1386 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1386 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1347] = 26
                    mem[_1347 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1430 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1430 + 68] = mem[idx + _1347 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1430 + 68] = mem[_1430 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1430 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _1039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1039] = 26
                    mem[_1039 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1052 + 68] = mem[idx + _1039 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1052 + 68] = mem[_1052 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1052 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1116] = 26
                        mem[_1116 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1313 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1313] = 26
                            mem[_1313 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1383 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1383 + 68] = mem[idx + _1313 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1383 + 68] = mem[_1383 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1383 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1346] = 26
                        mem[_1346 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1427 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1427 + 68] = mem[idx + _1346 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1427 + 68] = mem[_1427 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1427 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1130 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1130] = 26
                    mem[_1130 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1345] = 26
                        mem[_1345 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1424 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1424 + 68] = mem[idx + _1345 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1424 + 68] = mem[_1424 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1424 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1382] = 26
                    mem[_1382 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1467 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1467 + 68] = mem[idx + _1382 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1467 + 68] = mem[_1467 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1467 + -mem[64] + 100
                if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                    _1043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1043] = 26
                    mem[_1043 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1060 + 68] = mem[idx + _1043 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1060 + 68] = mem[_1060 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1060 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1129 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1129] = 26
                        mem[_1129 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1344 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1344] = 26
                            mem[_1344 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1421 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1421 + 68] = mem[idx + _1344 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1421 + 68] = mem[_1421 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1421 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1381 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1381] = 26
                        mem[_1381 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1464 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1464 + 68] = mem[idx + _1381 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1464 + 68] = mem[_1464 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1464 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1143] = 26
                    mem[_1143 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1380] = 26
                        mem[_1380 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1461 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1461 + 68] = mem[idx + _1380 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1461 + 68] = mem[_1461 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1461 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1420 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1420] = 26
                    mem[_1420 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1496 + 68] = mem[idx + _1420 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1496 + 68] = mem[_1496 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1496 + -mem[64] + 100
                if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1051 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1051] = 26
                mem[_1051 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1067 + 68] = mem[idx + _1051 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1067 + 68] = mem[_1067 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1067 + -mem[64] + 100
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1142] = 26
                    mem[_1142 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                        _1379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1379] = 26
                        mem[_1379 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1458 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1458 + 68] = mem[idx + _1379 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1458 + 68] = mem[_1458 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1458 + -mem[64] + 100
                    if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1419] = 26
                    mem[_1419 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1493 + 68] = mem[idx + _1419 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1493 + 68] = mem[_1493 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1493 + -mem[64] + 100
                if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1157 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1157] = 26
                mem[_1157 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1418 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1418] = 26
                    mem[_1418 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1490 + 68] = mem[idx + _1418 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1490 + 68] = mem[_1490 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1490 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1457 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1457] = 26
                mem[_1457 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1517 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1517 + 68] = mem[idx + _1457 + 32]
                    idx = idx + 32
                    continue 
                mem[_1517 + 68] = mem[_1517 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1517 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _963 = mem[64]
                mem[64] = mem[64] + 64
                mem[_963] = 30
                mem[_963 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _963 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _1021 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1021] = 26
                    mem[_1021 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1026 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1026 + 68] = mem[idx + _1021 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1026 + 68] = mem[_1026 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1026 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1081 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1081] = 26
                        mem[_1081 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1245 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1245] = 26
                            mem[_1245 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1265 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1265 + 68] = mem[idx + _1245 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1265 + 68] = mem[_1265 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1265 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1257 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1257] = 26
                        mem[_1257 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1281 + 68] = mem[idx + _1257 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1281 + 68] = mem[_1281 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1281 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1089] = 26
                    mem[_1089 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1256 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1256] = 26
                        mem[_1256 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1278 + 68] = mem[idx + _1256 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1278 + 68] = mem[_1278 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1278 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1264] = 26
                    mem[_1264 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1305 + 68] = mem[idx + _1264 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1305 + 68] = mem[_1305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1305 + -mem[64] + 100
                if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                    _1024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1024] = 26
                    mem[_1024 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1029 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1029 + 68] = mem[idx + _1024 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1029 + 68] = mem[_1029 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1029 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1088] = 26
                        mem[_1088 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1255 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1255] = 26
                            mem[_1255 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1275 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1275 + 68] = mem[idx + _1255 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1275 + 68] = mem[_1275 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1275 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1263 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1263] = 26
                        mem[_1263 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1302 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1302 + 68] = mem[idx + _1263 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1302 + 68] = mem[_1302 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1302 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1097] = 26
                    mem[_1097 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1262] = 26
                        mem[_1262 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1299 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1299 + 68] = mem[idx + _1262 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1299 + 68] = mem[_1299 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1299 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1274] = 26
                    mem[_1274 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1332 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1332 + 68] = mem[idx + _1274 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1332 + 68] = mem[_1332 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1332 + -mem[64] + 100
                if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1025] = 26
                mem[_1025 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1033 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1033 + 68] = mem[idx + _1025 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1033 + 68] = mem[_1033 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1033 + -mem[64] + 100
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1096 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1096] = 26
                    mem[_1096 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                        _1261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1261] = 26
                        mem[_1261 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1296 + 68] = mem[idx + _1261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1296 + 68] = mem[_1296 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1296 + -mem[64] + 100
                    if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1273 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1273] = 26
                    mem[_1273 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1329 + 68] = mem[idx + _1273 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1329 + 68] = mem[_1329 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1329 + -mem[64] + 100
                if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1105] = 26
                mem[_1105 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1272] = 26
                    mem[_1272 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1326 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1326 + 68] = mem[idx + _1272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1326 + 68] = mem[_1326 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1326 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1295] = 26
                mem[_1295 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1363 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1363 + 68] = mem[idx + _1295 + 32]
                    idx = idx + 32
                    continue 
                mem[_1363 + 68] = mem[_1363 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1363 + -mem[64] + 100
            _962 = mem[64]
            mem[64] = mem[64] + 64
            mem[_962] = 30
            mem[_962 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _962 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _984 = mem[64]
            mem[64] = mem[64] + 64
            mem[_984] = 30
            mem[_984 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _984 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _1095 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1095] = 26
                    mem[_1095 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1111 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1111 + 68] = mem[idx + _1095 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1111 + 68] = mem[_1111 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1111 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1215 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1215] = 26
                        mem[_1215 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1568 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1568] = 26
                            mem[_1568 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1626 + 68] = mem[idx + _1568 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1626 + 68] = mem[_1626 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1626 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1599] = 26
                        mem[_1599 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1654 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1654 + 68] = mem[idx + _1599 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1654 + 68] = mem[_1654 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1654 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1228] = 26
                    mem[_1228 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1598 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1598] = 26
                        mem[_1598 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1651 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1651 + 68] = mem[idx + _1598 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1651 + 68] = mem[_1651 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1651 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1625] = 26
                    mem[_1625 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1681 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1681 + 68] = mem[idx + _1625 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1681 + 68] = mem[_1681 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1681 + -mem[64] + 100
                if (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) / block.number - bonusEndBlock != sub_6da770bb:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb):
                    _1104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1104] = 26
                    mem[_1104 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _1122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1122 + 68] = mem[idx + _1104 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1122 + 68] = mem[_1122 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1122 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _1227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1227] = 26
                        mem[_1227 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c452d126Address)
                        call sub_c452d126Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1597 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1597] = 26
                            mem[_1597 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1648 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1648 + 68] = mem[idx + _1597 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1648 + 68] = mem[_1648 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1648 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1624 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1624] = 26
                        mem[_1624 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1678 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1678 + 68] = mem[idx + _1624 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1678 + 68] = mem[_1678 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1678 + -mem[64] + 100
                    if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1240] = 26
                    mem[_1240 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 43 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1623 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1623] = 26
                        mem[_1623 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1675 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1675 + 68] = mem[idx + _1623 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1675 + 68] = mem[_1675 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1675 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1647] = 26
                    mem[_1647 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1705 + 68] = mem[idx + _1647 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1705 + 68] = mem[_1705 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1705 + -mem[64] + 100
                if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (bonusEndBlock * sub_6da770bb) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1110] = 26
                mem[_1110 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1134 + 68] = mem[idx + _1110 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1134 + 68] = mem[_1134 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1134 + -mem[64] + 100
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1239 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1239] = 26
                    mem[_1239 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                        _1622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1622] = 26
                        mem[_1622 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1672 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1672 + 68] = mem[idx + _1622 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1672 + 68] = mem[_1672 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1672 + -mem[64] + 100
                    if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1646] = 26
                    mem[_1646 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1702 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1702 + 68] = mem[idx + _1646 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1702 + 68] = mem[_1702 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1702 + -mem[64] + 100
                if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1250] = 26
                mem[_1250 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1645 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1645] = 26
                    mem[_1645 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1699 + 68] = mem[idx + _1645 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1699 + 68] = mem[_1699 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1699 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1671] = 26
                mem[_1671 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (bonusEndBlock * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1727 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1727 + 68] = mem[idx + _1671 + 32]
                    idx = idx + 32
                    continue 
                mem[_1727 + 68] = mem[_1727 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1727 + -mem[64] + 100
            if bonusEndBlock - poolInfo[idx].field_512 / bonusEndBlock - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number < bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - poolInfo[idx].field_512:
                _1103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1103] = 26
                mem[_1103 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1119 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1119 + 68] = mem[idx + _1103 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1119 + 68] = mem[_1119 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1119 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1224] = 26
                    mem[_1224 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1592] = 26
                        mem[_1592 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1642 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1642 + 68] = mem[idx + _1592 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1642 + 68] = mem[_1642 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1642 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1619 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1619] = 26
                    mem[_1619 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1668 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1668 + 68] = mem[idx + _1619 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1668 + 68] = mem[_1668 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1668 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1238] = 26
                mem[_1238 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1618] = 26
                    mem[_1618 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1665 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1665 + 68] = mem[idx + _1618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1665 + 68] = mem[_1665 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1665 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1641 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1641] = 26
                mem[_1641 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1695 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1695 + 68] = mem[idx + _1641 + 32]
                    idx = idx + 32
                    continue 
                mem[_1695 + 68] = mem[_1695 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1695 + -mem[64] + 100
            if (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) / block.number - poolInfo[idx].field_512 != sub_6da770bb:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb):
                _1109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1109] = 26
                mem[_1109 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _1131 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1131 + 68] = mem[idx + _1109 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1131 + 68] = mem[_1131 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1131 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _1237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1237] = 26
                    mem[_1237 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_c452d126Address)
                    call sub_c452d126Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1617 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1617] = 26
                        mem[_1617 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1662 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1662 + 68] = mem[idx + _1617 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1662 + 68] = mem[_1662 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1662 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1640] = 26
                    mem[_1640 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1692 + 68] = mem[idx + _1640 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1692 + 68] = mem[_1692 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1692 + -mem[64] + 100
                if 43 * 0 / totalAllocPoint / 0 / totalAllocPoint != 43:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1249] = 26
                mem[_1249 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 43 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1639] = 26
                    mem[_1639 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1689 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1689 + 68] = mem[idx + _1639 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1689 + 68] = mem[_1689 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1689 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1661] = 26
                mem[_1661 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1719 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1719 + 68] = mem[idx + _1661 + 32]
                    idx = idx + 32
                    continue 
                mem[_1719 + 68] = mem[_1719 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1719 + -mem[64] + 100
            if (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / (block.number * sub_6da770bb) - (poolInfo[idx].field_512 * sub_6da770bb) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1118] = 26
            mem[_1118 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _1144 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1144 + 68] = mem[idx + _1118 + 32]
                    idx = idx + 32
                    continue 
                mem[_1144 + 68] = mem[_1144 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1144 + -mem[64] + 100
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1248] = 26
                mem[_1248 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_c452d126Address)
                call sub_c452d126Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                    _1638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1638] = 26
                    mem[_1638 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1686 + 68] = mem[idx + _1638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1686 + 68] = mem[_1686 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1686 + -mem[64] + 100
                if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1660 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1660] = 26
                mem[_1660 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1716 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1716 + 68] = mem[idx + _1660 + 32]
                    idx = idx + 32
                    continue 
                mem[_1716 + 68] = mem[_1716 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1716 + -mem[64] + 100
            if 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 43:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1258] = 26
            mem[_1258 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 43 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_c452d126Address)
            call sub_c452d126Address.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint:
                _1659 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1659] = 26
                mem[_1659 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1713 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1713 + 68] = mem[idx + _1659 + 32]
                    idx = idx + 32
                    continue 
                mem[_1713 + 68] = mem[_1713 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1713 + -mem[64] + 100
            if 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1685 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1685] = 26
            mem[_1685 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_6da770bb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6da770bb * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1741 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1741 + 68] = mem[idx + _1685 + 32]
                idx = idx + 32
                continue 
            mem[_1741 + 68] = mem[_1741 + 74 len 26]
            revert with memory
              from mem[64]
               len _1741 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor7FB4[stor105.length] = arg2
    stor7FB4[stor105.length] = arg1
    if block.number > startBlock:
        stor7FB4[stor105.length] = block.number
    else:
        stor7FB4[stor105.length] = startBlock
    stor7FB4[stor105.length] = 0
}



}
