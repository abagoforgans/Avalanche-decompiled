contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1, uint256 arg2, uint256 arg3)
#
const sub_dc224863(?) = 0x8b8c0776df2c2176edf6f82391c35ea4891146d7a976ee36fd07f1a6fb4ead4c

const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint8 stor0;
address coreAddress; offset 8
uint256 stor1;
uint32 stor2;
address votingEscrowAddress;
uint256 stor2;
address rewardTokenAddress;
uint256 rewardPerBlock;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
uint256 sub_62e0accb;
uint8 stor9;
array of uint256 poolInfo;
mapping of struct userInfo;
mapping of struct sub_3d42eb6c;

function poolLength() payable {
    return poolInfo.length
}

function endBlock() payable {
    return endBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1]
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_3d42eb6c(?) payable {
    require calldata.size - 4 >= 64
    return sub_3d42eb6c[arg1][arg2].field_0, sub_3d42eb6c[arg1][arg2].field_256, sub_3d42eb6c[arg1][arg2].field_512
}

function startBlock() payable {
    return startBlock
}

function votingEscrow() payable {
    return address(votingEscrowAddress)
}

function paused() payable {
    return bool(stor0)
}

function sub_62e0accb(?) payable {
    return sub_62e0accb
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function sub_be145d48(?) payable {
    return bool(stor9)
}

function core() payable {
    return coreAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setCore(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function add(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length] = arg1
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0x8b8c0776df2c2176edf6f82391c35ea4891146d7a976ee36fd07f1a6fb4ead4c, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor9:
        revert with 0, 'cycle already active'
    if arg1 <= block.number:
        revert with 0, 'endBlock less'
    stor9 = 1
    endBlock = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = idx
        mem[32] = sha3(sub_62e0accb, 12)
        sub_3d42eb6c[stor8][idx].field_256 = block.number
        sub_3d42eb6c[stor8][idx].field_512 = 0
        idx = idx + 1
        continue 
    stor1 = 1
}

function pause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function setVotingEscrow(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x72436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    if not arg1:
        revert with 0, 'Zero address'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
    call rewardTokenAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        address(votingEscrowAddress) = arg1
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call rewardTokenAddress with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            address(votingEscrowAddress) = arg1
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call rewardTokenAddress with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                    revert with 0, 
                                32,
                                42,
                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            address(votingEscrowAddress) = arg1
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call rewardTokenAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                    revert with 0, 
                                32,
                                42,
                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePid: Not exist'
    if stor9:
        require arg1 < poolInfo.length
        if block.number > sub_3d42eb6c[stor8][arg1].field_256:
            if sub_3d42eb6c[stor8][arg1].field_256 < endBlock:
                if block.number >= endBlock:
                    if sub_3d42eb6c[stor8][arg1].field_0:
                        if poolInfo[arg1]:
                            if sub_3d42eb6c[stor8][arg1].field_256 > endBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not endBlock - sub_3d42eb6c[stor8][arg1].field_256:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                            else:
                                if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor8][arg1].field_256 != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) != poolInfo[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                    sub_3d42eb6c[stor8][arg1].field_256 = endBlock
                else:
                    if sub_3d42eb6c[stor8][arg1].field_0:
                        if poolInfo[arg1]:
                            if sub_3d42eb6c[stor8][arg1].field_256 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - sub_3d42eb6c[stor8][arg1].field_256:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                            else:
                                if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor8][arg1].field_256 != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) != poolInfo[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                    sub_3d42eb6c[stor8][arg1].field_256 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        if stor9:
            require idx < poolInfo.length
            mem[0] = idx
            mem[32] = sha3(sub_62e0accb, 12)
            if block.number > sub_3d42eb6c[stor8][idx].field_256:
                if sub_3d42eb6c[stor8][idx].field_256 < endBlock:
                    if block.number >= endBlock:
                        if sub_3d42eb6c[stor8][idx].field_0:
                            if poolInfo[idx]:
                                if sub_3d42eb6c[stor8][idx].field_256 > endBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not endBlock - sub_3d42eb6c[stor8][idx].field_256:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                else:
                                    if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                        sub_3d42eb6c[stor8][idx].field_256 = endBlock
                    else:
                        if sub_3d42eb6c[stor8][idx].field_0:
                            if poolInfo[idx]:
                                if sub_3d42eb6c[stor8][idx].field_256 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - sub_3d42eb6c[stor8][idx].field_256:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                else:
                                    if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                        sub_3d42eb6c[stor8][idx].field_256 = block.number
        idx = idx + 1
        continue 
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x72436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    idx = 0
    while idx < poolInfo.length:
        if stor9:
            require idx < poolInfo.length
            mem[0] = idx
            mem[32] = sha3(sub_62e0accb, 12)
            if block.number > sub_3d42eb6c[stor8][idx].field_256:
                if sub_3d42eb6c[stor8][idx].field_256 < endBlock:
                    if block.number >= endBlock:
                        if sub_3d42eb6c[stor8][idx].field_0:
                            if poolInfo[idx]:
                                if sub_3d42eb6c[stor8][idx].field_256 > endBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not endBlock - sub_3d42eb6c[stor8][idx].field_256:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                else:
                                    if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                        sub_3d42eb6c[stor8][idx].field_256 = endBlock
                    else:
                        if sub_3d42eb6c[stor8][idx].field_0:
                            if poolInfo[idx]:
                                if sub_3d42eb6c[stor8][idx].field_256 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - sub_3d42eb6c[stor8][idx].field_256:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                else:
                                    if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                        sub_3d42eb6c[stor8][idx].field_256 = block.number
        idx = idx + 1
        continue 
    rewardPerBlock = arg1
    emit 0x232bc60e: arg1
}

function next(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0x8b8c0776df2c2176edf6f82391c35ea4891146d7a976ee36fd07f1a6fb4ead4c, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor9:
        revert with 0, 'cycle not active'
    idx = 0
    while idx < poolInfo.length:
        if stor9:
            require idx < poolInfo.length
            mem[0] = idx
            mem[32] = sha3(sub_62e0accb, 12)
            if block.number > sub_3d42eb6c[stor8][idx].field_256:
                if sub_3d42eb6c[stor8][idx].field_256 < endBlock:
                    if block.number >= endBlock:
                        if sub_3d42eb6c[stor8][idx].field_0:
                            if poolInfo[idx]:
                                if sub_3d42eb6c[stor8][idx].field_256 > endBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not endBlock - sub_3d42eb6c[stor8][idx].field_256:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                else:
                                    if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                        sub_3d42eb6c[stor8][idx].field_256 = endBlock
                    else:
                        if sub_3d42eb6c[stor8][idx].field_0:
                            if poolInfo[idx]:
                                if sub_3d42eb6c[stor8][idx].field_256 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - sub_3d42eb6c[stor8][idx].field_256:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][idx].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                else:
                                    if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                        sub_3d42eb6c[stor8][idx].field_256 = block.number
        idx = idx + 1
        continue 
    endBlock = block.number + 1
    stor9 = 0
    sub_62e0accb = arg1
    idx = 0
    while idx < poolInfo.length:
        _191 = mem[64]
        mem[64] = mem[64] + 96
        mem[_191] = 0
        mem[_191 + 32] = 0
        mem[_191 + 64] = 0
        mem[0] = idx
        mem[32] = sha3(sub_62e0accb, 12)
        sub_3d42eb6c[stor8][idx].field_0 = 0
        sub_3d42eb6c[stor8][idx].field_256 = 0
        sub_3d42eb6c[stor8][idx].field_512 = 0
        idx = idx + 1
        continue 
    stor1 = 1
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x72436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePid: Not exist'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            if stor9:
                require idx < poolInfo.length
                mem[0] = idx
                mem[32] = sha3(sub_62e0accb, 12)
                if block.number > sub_3d42eb6c[stor8][idx].field_256:
                    if sub_3d42eb6c[stor8][idx].field_256 < endBlock:
                        if block.number >= endBlock:
                            if sub_3d42eb6c[stor8][idx].field_0:
                                if poolInfo[idx]:
                                    if sub_3d42eb6c[stor8][idx].field_256 > endBlock:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not endBlock - sub_3d42eb6c[stor8][idx].field_256:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                            sub_3d42eb6c[stor8][idx].field_256 = endBlock
                        else:
                            if sub_3d42eb6c[stor8][idx].field_0:
                                if poolInfo[idx]:
                                    if sub_3d42eb6c[stor8][idx].field_256 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.number - sub_3d42eb6c[stor8][idx].field_256:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                            sub_3d42eb6c[stor8][idx].field_256 = block.number
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    poolInfo[arg1] = arg2
    if arg2 != poolInfo[arg1]:
        if poolInfo[arg1] > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1]
}

function sub_15c2fdc9(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0x8b8c0776df2c2176edf6f82391c35ea4891146d7a976ee36fd07f1a6fb4ead4c, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePid: Not exist'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'validatePid: Not exist'
    if stor9:
        require arg1 < poolInfo.length
        if block.number > sub_3d42eb6c[stor8][arg1].field_256:
            if sub_3d42eb6c[stor8][arg1].field_256 < endBlock:
                if block.number >= endBlock:
                    if sub_3d42eb6c[stor8][arg1].field_0:
                        if poolInfo[arg1]:
                            if sub_3d42eb6c[stor8][arg1].field_256 > endBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not endBlock - sub_3d42eb6c[stor8][arg1].field_256:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                            else:
                                if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor8][arg1].field_256 != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) != poolInfo[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * (endBlock * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                    sub_3d42eb6c[stor8][arg1].field_256 = endBlock
                else:
                    if sub_3d42eb6c[stor8][arg1].field_0:
                        if poolInfo[arg1]:
                            if sub_3d42eb6c[stor8][arg1].field_256 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - sub_3d42eb6c[stor8][arg1].field_256:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_3d42eb6c[stor8][arg1].field_0
                                    if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                            else:
                                if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor8][arg1].field_256 != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                                else:
                                    if (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock) != poolInfo[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint:
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (0 / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 0 / sub_3d42eb6c[stor8][arg1].field_0
                                    else:
                                        if 10^12 * (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if sub_3d42eb6c[stor8][arg1].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_3d42eb6c[stor8][arg1].field_0
                                        if (10^12 * (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0) + sub_3d42eb6c[stor8][arg1].field_512 < sub_3d42eb6c[stor8][arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_3d42eb6c[stor8][arg1].field_512 += 10^12 * (block.number * rewardPerBlock * poolInfo[arg1]) - (sub_3d42eb6c[stor8][arg1].field_256 * rewardPerBlock * poolInfo[arg1]) / totalAllocPoint / sub_3d42eb6c[stor8][arg1].field_0
                    sub_3d42eb6c[stor8][arg1].field_256 = block.number
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[arg1][address(arg2)].field_256:
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_768 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(arg2)].field_768 -= userInfo[arg1][address(arg2)].field_256
    else:
        if sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256:
            if (sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_768 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(arg2)].field_768 = (sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_768
    if sub_62e0accb != userInfo[arg1][address(arg2)].field_512:
        if arg3 + sub_3d42eb6c[stor8][arg1].field_0 < sub_3d42eb6c[stor8][arg1].field_0:
            revert with 0, 'SafeMath: addition overflow'
        sub_3d42eb6c[stor8][arg1].field_0 += arg3
        userInfo[arg1][address(arg2)].field_0 = arg3
        userInfo[arg1][address(arg2)].field_512 = sub_62e0accb
        if not arg3:
            userInfo[arg1][address(arg2)].field_256 = 0
        else:
            if sub_3d42eb6c[stor8][arg1].field_512 * arg3 / arg3 != sub_3d42eb6c[stor8][arg1].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[arg1][address(arg2)].field_256 = sub_3d42eb6c[stor8][arg1].field_512 * arg3 / 10^12
    else:
        if userInfo[arg1][address(arg2)].field_0 > sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_0 = arg3 + sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_0 - userInfo[arg1][address(arg2)].field_0
        userInfo[arg1][address(arg2)].field_0 = arg3
        if not arg3:
            userInfo[arg1][address(arg2)].field_256 = 0
        else:
            if sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512 * arg3 / arg3 != sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[arg1][address(arg2)].field_256 = sub_3d42eb6c[stor11[arg1][address(arg2)].field_512][arg1].field_512 * arg3 / 10^12
    stor1 = 1
}

function sub_469d79d0(?) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    s = 0
    while idx < poolInfo.length:
        mem[0] = idx
        mem[32] = sha3(userInfo[idx][msg.sender].field_512, 12)
        if userInfo[idx][msg.sender].field_512 == sub_62e0accb:
            if idx >= poolInfo.length:
                revert with 0, 'validatePid: Not exist'
            if stor9:
                require idx < poolInfo.length
                mem[0] = idx
                mem[32] = sha3(sub_62e0accb, 12)
                if block.number > sub_3d42eb6c[stor8][idx].field_256:
                    if sub_3d42eb6c[stor8][idx].field_256 < endBlock:
                        if block.number >= endBlock:
                            if sub_3d42eb6c[stor8][idx].field_0:
                                if poolInfo[idx]:
                                    if sub_3d42eb6c[stor8][idx].field_256 > endBlock:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not endBlock - sub_3d42eb6c[stor8][idx].field_256:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (endBlock * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                            sub_3d42eb6c[stor8][idx].field_256 = endBlock
                        else:
                            if sub_3d42eb6c[stor8][idx].field_0:
                                if poolInfo[idx]:
                                    if sub_3d42eb6c[stor8][idx].field_256 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.number - sub_3d42eb6c[stor8][idx].field_256:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_3d42eb6c[stor8][idx].field_0
                                            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                    else:
                                        if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor8][idx].field_256 != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                                        else:
                                            if (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock) != poolInfo[idx]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint:
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (0 / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 0 / sub_3d42eb6c[stor8][idx].field_0
                                            else:
                                                if 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if sub_3d42eb6c[stor8][idx].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_3d42eb6c[stor8][idx].field_0
                                                if (10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0) + sub_3d42eb6c[stor8][idx].field_512 < sub_3d42eb6c[stor8][idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_3d42eb6c[stor8][idx].field_512 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx]) - (sub_3d42eb6c[stor8][idx].field_256 * rewardPerBlock * poolInfo[idx]) / totalAllocPoint / sub_3d42eb6c[stor8][idx].field_0
                            sub_3d42eb6c[stor8][idx].field_256 = block.number
        if not userInfo[idx][msg.sender].field_768:
            if not userInfo[idx][msg.sender].field_0:
                if userInfo[idx][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if s - userInfo[idx][msg.sender].field_256 < -userInfo[idx][msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[idx][msg.sender].field_0:
                    userInfo[idx][msg.sender].field_256 = 0
                else:
                    if sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[idx][msg.sender].field_256 = sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12
                idx = idx + 1
                s = s - userInfo[idx][msg.sender].field_256
                continue 
            if sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[idx][msg.sender].field_256 > sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if s < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[idx][msg.sender].field_0:
                userInfo[idx][msg.sender].field_256 = 0
            else:
                if sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[idx][msg.sender].field_256 = sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12
            idx = idx + 1
            s = s + (sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
            continue 
        if userInfo[idx][msg.sender].field_768 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[idx][msg.sender].field_768 = 0
        if not userInfo[idx][msg.sender].field_0:
            if userInfo[idx][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[idx][msg.sender].field_768 + s - userInfo[idx][msg.sender].field_256 < -userInfo[idx][msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[idx][msg.sender].field_0:
                userInfo[idx][msg.sender].field_256 = 0
            else:
                if sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[idx][msg.sender].field_256 = sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12
            idx = idx + 1
            s = userInfo[idx][msg.sender].field_768 + s - userInfo[idx][msg.sender].field_256
            continue 
        if sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[idx][msg.sender].field_256 > sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[idx][msg.sender].field_768 + s < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[idx][msg.sender].field_0:
            userInfo[idx][msg.sender].field_256 = 0
        else:
            if sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[idx][msg.sender].field_256 = sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12
        idx = idx + 1
        s = userInfo[idx][msg.sender].field_768 + s + (sub_3d42eb6c[stor11[idx][msg.sender].field_512][idx].field_512 * userInfo[idx][msg.sender].field_0 / 10^12) - userInfo[idx][msg.sender].field_256
        continue 
    if s:
        if s <= 0:
            revert with 0, 'WTF Reward is zero'
        require ext_code.size(address(votingEscrowAddress))
        staticcall address(votingEscrowAddress).getLockedAmount(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg1 <= 0:
                revert with 0, 'Lock duration can't be zero'
            require ext_code.size(address(votingEscrowAddress))
            call address(votingEscrowAddress).createLockFor(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, s, arg1
        else:
            require ext_code.size(address(votingEscrowAddress))
            staticcall address(votingEscrowAddress).0xb9d50832 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x6c4e6577206c6f636b206578706972792074696d657374616d702063616e2774206265207a6572,
                                mem[203 len 25]
            require ext_code.size(address(votingEscrowAddress))
            call address(votingEscrowAddress).0xff5f200a with:
                 gas gas_remaining wei
                args msg.sender, s, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ClaimAll(s, msg.sender);
    stor1 = 1
}

function pendingReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= poolInfo.length:
        revert with 0, 'validatePid: Not exist'
    if userInfo[arg2][address(arg1)].field_512 != sub_62e0accb:
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if not stor9:
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if block.number <= sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256:
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if not sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0:
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if block.number >= endBlock:
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 > endBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not endBlock - sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
                if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg2][address(arg1)].field_0:
                    if userInfo[arg2][address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
                if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg2][address(arg1)].field_256 > (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg2][address(arg1)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg2][address(arg1)].field_768 + ((0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg2][address(arg1)].field_0:
                if userInfo[arg2][address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg2][address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 + ((10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
        if (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock) / endBlock - sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
                if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg2][address(arg1)].field_0:
                    if userInfo[arg2][address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
                if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg2][address(arg1)].field_256 > (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg2][address(arg1)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg2][address(arg1)].field_768 + ((0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg2][address(arg1)].field_0:
                if userInfo[arg2][address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
            if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg2][address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 + ((10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
        if (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / (endBlock * rewardPerBlock) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock) != poolInfo[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint:
            if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
            if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg2][address(arg1)].field_0:
                if userInfo[arg2][address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
            if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg2][address(arg1)].field_256 > (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 + ((0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
        if 10^12 * (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
        if (10^12 * (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if (10^12 * (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (10^12 * (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > (10^12 * (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + ((10^12 * (endBlock * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
            if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg2][address(arg1)].field_0:
                if userInfo[arg2][address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
            if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg2][address(arg1)].field_256 > (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 + ((0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + ((10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if (block.number * rewardPerBlock) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock) / block.number - sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * rewardPerBlock) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
            if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg2][address(arg1)].field_0:
                if userInfo[arg2][address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
            if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg2][address(arg1)].field_256 > (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 + ((0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + ((10^12 * 0 / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / (block.number * rewardPerBlock) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock) != poolInfo[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint:
        if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
        if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
        if (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > (0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 + ((0 / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if 10^12 * (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0
    if (10^12 * (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 < sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg2][address(arg1)].field_0:
        if userInfo[arg2][address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256 < -userInfo[arg2][address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg2][address(arg1)].field_768 - userInfo[arg2][address(arg1)].field_256)
    if (10^12 * (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (10^12 * (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0) + sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg2][address(arg1)].field_256 > (10^12 * (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg2][address(arg1)].field_768 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg2][address(arg1)].field_768 + ((10^12 * (block.number * rewardPerBlock * poolInfo[arg2]) - (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_256 * rewardPerBlock * poolInfo[arg2]) / totalAllocPoint / sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_0 * userInfo[arg2][address(arg1)].field_0) + (sub_3d42eb6c[stor11[arg2][address(arg1)].field_512][arg2].field_512 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
}



}
