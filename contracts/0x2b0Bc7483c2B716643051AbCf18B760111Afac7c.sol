contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2, uint8 arg3)
#  - unstake(uint256 arg1)
#
address owner;
uint256 stor2;
address libAddress;
address devaddr;
uint256 sub_b1700503;
address uniRouterAddress;
address sub_71663c8aAddress;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint8 stor10;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalStaked;
address WETHAddress;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of uint8 stor110349606679412691172957834289542550319383271247755660854362242977991410020072;

function sub_0e00389f(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           uint256(poolInfo[arg1].field_256),
           uint256(poolInfo[arg1].field_512),
           uint256(poolInfo[arg1].field_1024),
           bool(uint8(poolInfo[arg1].field_1280))
}

function totalAllocPoint() {
    return totalAllocPoint
}

function startBlock() {
    return startBlock
}

function sub_71663c8a(?) {
    return sub_71663c8aAddress
}

function totalStaked() {
    return totalStaked
}

function owner() {
    return owner
}

function lib() {
    return libAddress
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return uint256(userInfo[arg1][arg2].field_0), uint256(userInfo[arg1][arg2].field_256)
}

function uniRouter() {
    return uniRouterAddress
}

function WETH() {
    return WETHAddress
}

function sub_b1700503(?) {
    return sub_b1700503
}

function devaddr() {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_83f1d681(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '_uniRouter cannot be 0'
    if not arg2:
        uniRouterAddress = arg1
    else:
        if 1 == arg2:
            sub_71663c8aAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3abb7810(?) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if uint256(poolInfo[arg1].field_768):
        mem[128] = stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0
        idx = 128
        s = 0
        while (32 * uint256(poolInfo[arg1].field_768)) + 96 > idx:
            mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * uint256(poolInfo[arg1].field_768)) + 256 len floor32(uint256(poolInfo[arg1].field_768))] = mem[128 len floor32(uint256(poolInfo[arg1].field_768))]
    return poolInfo[arg1].field_0, 
           Array(len=uint256(poolInfo[arg1].field_768), data=mem[128 len floor32(uint256(poolInfo[arg1].field_768))], mem[(32 * uint256(poolInfo[arg1].field_768)) + floor32(uint256(poolInfo[arg1].field_768)) + 256 len (32 * uint256(poolInfo[arg1].field_768)) - floor32(uint256(poolInfo[arg1].field_768))]),
           uint256(poolInfo[arg1].field_256)
}

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor2 = 2
    require arg1 < poolInfo.length
    if arg1:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, userInfo[arg1][msg.sender].field_32)
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, userInfo[arg1][msg.sender].field_0), mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, uint256(userInfo[arg1][msg.sender].field_0)
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(libAddress)
        staticcall libAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(libAddress)
        if uint256(userInfo[arg1][msg.sender].field_0) <= ext_call.return_data[0]:
            call libAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, uint256(userInfo[arg1][msg.sender].field_0)
        else:
            call libAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(userInfo[arg1][msg.sender].field_0) > totalStaked:
            revert with 0, 'SafeMath: subtraction overflow'
        totalStaked -= uint256(userInfo[arg1][msg.sender].field_0)
    emit EmergencyWithdraw(uint256(userInfo[arg1][msg.sender].field_0), msg.sender, arg1);
    uint256(userInfo[arg1][msg.sender].field_0) = 0
    uint256(userInfo[arg1][msg.sender].field_256) = 0
    stor2 = 1
}

function pendingLib(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= uint256(poolInfo[arg1].field_512):
        if not uint256(userInfo[arg1][address(arg2)].field_0):
            if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[arg1][address(arg2)].field_256)
        if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0) / uint256(userInfo[arg1][address(arg2)].field_0) != uint256(poolInfo[arg1].field_1024):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[arg1][address(arg2)].field_256) > uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
    if not ext_call.return_data[0]:
        if not uint256(userInfo[arg1][address(arg2)].field_0):
            if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[arg1][address(arg2)].field_256)
        if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0) / uint256(userInfo[arg1][address(arg2)].field_0) != uint256(poolInfo[arg1].field_1024):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[arg1][address(arg2)].field_256) > uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
    if uint256(poolInfo[arg1].field_512) < startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b,
                    mem[199 len 29]
    if uint256(poolInfo[arg1].field_512) > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - uint256(poolInfo[arg1].field_512):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(userInfo[arg1][address(arg2)].field_0):
                if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -uint256(userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / uint256(userInfo[arg1][address(arg2)].field_0) != (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024):
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if uint256(userInfo[arg1][address(arg2)].field_256) > (0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(userInfo[arg1][address(arg2)].field_0):
            if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / uint256(userInfo[arg1][address(arg2)].field_0) != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024):
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if uint256(userInfo[arg1][address(arg2)].field_256) > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
    if (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) / block.number - uint256(poolInfo[arg1].field_512) != sub_b1700503:
        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(userInfo[arg1][address(arg2)].field_0):
                if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -uint256(userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / uint256(userInfo[arg1][address(arg2)].field_0) != (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024):
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if uint256(userInfo[arg1][address(arg2)].field_256) > (0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(userInfo[arg1][address(arg2)].field_0):
            if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / uint256(userInfo[arg1][address(arg2)].field_0) != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024):
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if uint256(userInfo[arg1][address(arg2)].field_256) > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
    if (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) != uint256(poolInfo[arg1].field_256):
        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(userInfo[arg1][address(arg2)].field_0):
            if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[arg1][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / uint256(userInfo[arg1][address(arg2)].field_0) != (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024):
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if uint256(userInfo[arg1][address(arg2)].field_256) > (0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
    if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
        revert with 0, 'SafeMath: addition overflow'
    if not uint256(userInfo[arg1][address(arg2)].field_0):
        if uint256(userInfo[arg1][address(arg2)].field_256) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -uint256(userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / uint256(userInfo[arg1][address(arg2)].field_0) != (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024):
        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if uint256(userInfo[arg1][address(arg2)].field_256) > (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[arg1][address(arg2)].field_0)) + (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][address(arg2)].field_0)) / 10^12) - uint256(userInfo[arg1][address(arg2)].field_256))
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if block.number > uint256(poolInfo[arg1].field_512):
        if not arg1:
            if totalStaked:
                if uint256(poolInfo[arg1].field_512) < startBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b,
                                mem[199 len 29]
                if uint256(poolInfo[arg1].field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[arg1].field_512):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 0 / totalStaked
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                else:
                    if (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) / block.number - uint256(poolInfo[arg1].field_512) != sub_b1700503:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / totalStaked
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                    else:
                        if (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) != uint256(poolInfo[arg1].field_256):
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint:
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / totalStaked
                        else:
                            if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / totalStaked
        else:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if uint256(poolInfo[arg1].field_512) < startBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b,
                                mem[199 len 29]
                if uint256(poolInfo[arg1].field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[arg1].field_512):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) / block.number - uint256(poolInfo[arg1].field_512) != sub_b1700503:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) != uint256(poolInfo[arg1].field_256):
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0]
        uint256(poolInfo[arg1].field_512) = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= uint256(poolInfo[idx].field_512):
            idx = idx + 1
            continue 
        if not idx:
            if not totalStaked:
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            if uint256(poolInfo[idx].field_512) < startBlock:
                revert with 0, 32, 35, 0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b, mem[mem[64] + 103 len 29]
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 30
            mem[_123 + 32] = 'SafeMath: subtraction overflow'
            if uint256(poolInfo[idx].field_512) > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _123 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo[idx].field_512):
                _153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_153] = 26
                mem[_153 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _157 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _157 + 68] = mem[idx + _153 + 32]
                        idx = idx + 32
                        continue 
                    mem[_157 + 68] = mem[_157 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _157 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_216] = 26
                    mem[_216 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _224 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _224 + 68] = mem[idx + _216 + 32]
                        idx = idx + 32
                        continue 
                    mem[_224 + 68] = mem[_224 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _224 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_223] = 26
                mem[_223 + 32] = 'SafeMath: division by zero'
                if totalStaked:
                    if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _237 + 68] = mem[idx + _223 + 32]
                    idx = idx + 32
                    continue 
                mem[_237 + 68] = mem[_237 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _237 + -mem[64] + 100
            if (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) / block.number - uint256(poolInfo[idx].field_512) != sub_b1700503:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503):
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 26
                mem[_156 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _162 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _162 + 68] = mem[idx + _156 + 32]
                        idx = idx + 32
                        continue 
                    mem[_162 + 68] = mem[_162 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _162 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _222 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_222] = 26
                    mem[_222 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _234 + 68] = mem[idx + _222 + 32]
                        idx = idx + 32
                        continue 
                    mem[_234 + 68] = mem[_234 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _234 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = 26
                mem[_233 + 32] = 'SafeMath: division by zero'
                if totalStaked:
                    if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _254 + 68] = mem[idx + _233 + 32]
                    idx = idx + 32
                    continue 
                mem[_254 + 68] = mem[_254 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _254 + -mem[64] + 100
            if (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) != uint256(poolInfo[idx].field_256):
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _174 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _174 + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
                mem[_174 + 68] = mem[_174 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _174 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
            require ext_code.size(libAddress)
            call libAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint:
                _232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_232] = 26
                mem[_232 + 32] = 'SafeMath: division by zero'
                if totalStaked:
                    if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _251 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _251 + 68] = mem[idx + _232 + 32]
                    idx = idx + 32
                    continue 
                mem[_251 + 68] = mem[_251 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _251 + -mem[64] + 100
            if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_250] = 26
            mem[_250 + 32] = 'SafeMath: division by zero'
            if totalStaked:
                if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(poolInfo[idx].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / totalStaked
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            _275 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _275 + 68] = mem[idx + _250 + 32]
                idx = idx + 32
                continue 
            mem[_275 + 68] = mem[_275 + 74 len 26]
            revert with memory
              from mem[64]
               len _275 + -mem[64] + 100
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
            uint256(poolInfo[idx].field_512) = block.number
            idx = idx + 1
            continue 
        if uint256(poolInfo[idx].field_512) < startBlock:
            revert with 0, 32, 35, 0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b, mem[mem[64] + 103 len 29]
        _130 = mem[64]
        mem[64] = mem[64] + 64
        mem[_130] = 30
        mem[_130 + 32] = 'SafeMath: subtraction overflow'
        if uint256(poolInfo[idx].field_512) > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _130 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - uint256(poolInfo[idx].field_512):
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = 26
            mem[_160 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _171 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _171 + 68] = mem[idx + _160 + 32]
                    idx = idx + 32
                    continue 
                mem[_171 + 68] = mem[_171 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _171 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(libAddress)
            call libAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_231] = 26
                mem[_231 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _247 + 68] = mem[idx + _231 + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            _271 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _271 + 68] = mem[idx + _246 + 32]
                idx = idx + 32
                continue 
            mem[_271 + 68] = mem[_271 + 74 len 26]
            revert with memory
              from mem[64]
               len _271 + -mem[64] + 100
        if (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) / block.number - uint256(poolInfo[idx].field_512) != sub_b1700503:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503):
            _170 = mem[64]
            mem[64] = mem[64] + 64
            mem[_170] = 26
            mem[_170 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _184 + 68] = mem[idx + _170 + 32]
                    idx = idx + 32
                    continue 
                mem[_184 + 68] = mem[_184 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _184 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(libAddress)
            call libAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_245] = 26
                mem[_245 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _268 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _268 + 68] = mem[idx + _245 + 32]
                    idx = idx + 32
                    continue 
                mem[_268 + 68] = mem[_268 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _268 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _267 = mem[64]
            mem[64] = mem[64] + 64
            mem[_267] = 26
            mem[_267 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            _294 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _294 + 68] = mem[idx + _267 + 32]
                idx = idx + 32
                continue 
            mem[_294 + 68] = mem[_294 + 74 len 26]
            revert with memory
              from mem[64]
               len _294 + -mem[64] + 100
        if (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) != uint256(poolInfo[idx].field_256):
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _183 = mem[64]
        mem[64] = mem[64] + 64
        mem[_183] = 26
        mem[_183 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _196 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _196 + 68] = mem[idx + _183 + 32]
                idx = idx + 32
                continue 
            mem[_196 + 68] = mem[_196 + 74 len 26]
            revert with memory
              from mem[64]
               len _196 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
        require ext_code.size(libAddress)
        call libAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint:
            _266 = mem[64]
            mem[64] = mem[64] + 64
            mem[_266] = 26
            mem[_266 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            _291 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _291 + 68] = mem[idx + _266 + 32]
                idx = idx + 32
                continue 
            mem[_291 + 68] = mem[_291 + 74 len 26]
            revert with memory
              from mem[64]
               len _291 + -mem[64] + 100
        if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _290 = mem[64]
        mem[64] = mem[64] + 64
        mem[_290] = 26
        mem[_290 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                revert with 0, 'SafeMath: addition overflow'
            uint256(poolInfo[idx].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / ext_call.return_data[0]
            uint256(poolInfo[idx].field_512) = block.number
            idx = idx + 1
            continue 
        _313 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _313 + 68] = mem[idx + _290 + 32]
            idx = idx + 32
            continue 
        mem[_313 + 68] = mem[_313 + 74 len 26]
        revert with memory
          from mem[64]
           len _313 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= uint256(poolInfo[idx].field_512):
                idx = idx + 1
                continue 
            if not idx:
                if not totalStaked:
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                if uint256(poolInfo[idx].field_512) < startBlock:
                    revert with 0, 32, 35, 0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b, mem[mem[64] + 103 len 29]
                _180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_180] = 30
                mem[_180 + 32] = 'SafeMath: subtraction overflow'
                if uint256(poolInfo[idx].field_512) > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _180 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[idx].field_512):
                    _211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_211] = 26
                    mem[_211 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _215 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _215 + 68] = mem[idx + _211 + 32]
                            idx = idx + 32
                            continue 
                        mem[_215 + 68] = mem[_215 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _215 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_274] = 26
                        mem[_274 + 32] = 'SafeMath: division by zero'
                        if totalStaked:
                            if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                            uint256(poolInfo[idx].field_512) = block.number
                            idx = idx + 1
                            continue 
                        _282 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _282 + 68] = mem[idx + _274 + 32]
                            idx = idx + 32
                            continue 
                        mem[_282 + 68] = mem[_282 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _282 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _281 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_281] = 26
                    mem[_281 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _295 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _295 + 68] = mem[idx + _281 + 32]
                        idx = idx + 32
                        continue 
                    mem[_295 + 68] = mem[_295 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _295 + -mem[64] + 100
                if (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) / block.number - uint256(poolInfo[idx].field_512) != sub_b1700503:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503):
                    _214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_214] = 26
                    mem[_214 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _220 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _220 + 68] = mem[idx + _214 + 32]
                            idx = idx + 32
                            continue 
                        mem[_220 + 68] = mem[_220 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _220 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_280] = 26
                        mem[_280 + 32] = 'SafeMath: division by zero'
                        if totalStaked:
                            if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                            uint256(poolInfo[idx].field_512) = block.number
                            idx = idx + 1
                            continue 
                        _292 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _292 + 68] = mem[idx + _280 + 32]
                            idx = idx + 32
                            continue 
                        mem[_292 + 68] = mem[_292 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _292 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_291] = 26
                    mem[_291 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _312 + 68] = mem[idx + _291 + 32]
                        idx = idx + 32
                        continue 
                    mem[_312 + 68] = mem[_312 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _312 + -mem[64] + 100
                if (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) != uint256(poolInfo[idx].field_256):
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _232 + 68] = mem[idx + _219 + 32]
                        idx = idx + 32
                        continue 
                    mem[_232 + 68] = mem[_232 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _232 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint:
                    _290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_290] = 26
                    mem[_290 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _309 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _309 + 68] = mem[idx + _290 + 32]
                        idx = idx + 32
                        continue 
                    mem[_309 + 68] = mem[_309 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _309 + -mem[64] + 100
                if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _308 = mem[64]
                mem[64] = mem[64] + 64
                mem[_308] = 26
                mem[_308 + 32] = 'SafeMath: division by zero'
                if totalStaked:
                    if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / totalStaked
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _333 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _333 + 68] = mem[idx + _308 + 32]
                    idx = idx + 32
                    continue 
                mem[_333 + 68] = mem[_333 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _333 + -mem[64] + 100
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
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            if uint256(poolInfo[idx].field_512) < startBlock:
                revert with 0, 32, 35, 0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b, mem[mem[64] + 103 len 29]
            _188 = mem[64]
            mem[64] = mem[64] + 64
            mem[_188] = 30
            mem[_188 + 32] = 'SafeMath: subtraction overflow'
            if uint256(poolInfo[idx].field_512) > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _188 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo[idx].field_512):
                _218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_218] = 26
                mem[_218 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _229 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _229 + 68] = mem[idx + _218 + 32]
                        idx = idx + 32
                        continue 
                    mem[_229 + 68] = mem[_229 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _229 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_289] = 26
                    mem[_289 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _305 + 68] = mem[idx + _289 + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _329 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _329 + 68] = mem[idx + _304 + 32]
                    idx = idx + 32
                    continue 
                mem[_329 + 68] = mem[_329 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _329 + -mem[64] + 100
            if (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) / block.number - uint256(poolInfo[idx].field_512) != sub_b1700503:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503):
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _242 + 68] = mem[idx + _228 + 32]
                        idx = idx + 32
                        continue 
                    mem[_242 + 68] = mem[_242 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _242 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_303] = 26
                    mem[_303 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _326 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _326 + 68] = mem[idx + _303 + 32]
                        idx = idx + 32
                        continue 
                    mem[_326 + 68] = mem[_326 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _326 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_325] = 26
                mem[_325 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _352 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _352 + 68] = mem[idx + _325 + 32]
                    idx = idx + 32
                    continue 
                mem[_352 + 68] = mem[_352 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _352 + -mem[64] + 100
            if (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) != uint256(poolInfo[idx].field_256):
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _241 = mem[64]
            mem[64] = mem[64] + 64
            mem[_241] = 26
            mem[_241 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _254 + 68] = mem[idx + _241 + 32]
                    idx = idx + 32
                    continue 
                mem[_254 + 68] = mem[_254 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _254 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
            require ext_code.size(libAddress)
            call libAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint:
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _349 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _349 + 68] = mem[idx + _324 + 32]
                    idx = idx + 32
                    continue 
                mem[_349 + 68] = mem[_349 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _349 + -mem[64] + 100
            if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 26
            mem[_348 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(poolInfo[idx].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / ext_call.return_data[0]
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            _371 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _371 + 68] = mem[idx + _348 + 32]
                idx = idx + 32
                continue 
            mem[_371 + 68] = mem[_371 + 74 len 26]
            revert with memory
              from mem[64]
               len _371 + -mem[64] + 100
    require arg1 < poolInfo.length
    if uint256(poolInfo[arg1].field_256) > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - uint256(poolInfo[arg1].field_256)
    require arg1 < poolInfo.length
    uint256(poolInfo[arg1].field_256) = arg2
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor2 = 2
    require ext_code.size(libAddress)
    call libAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if block.number <= uint256(poolInfo.field_512):
        if arg1 + totalStaked < totalStaked:
            revert with 0, 'SafeMath: addition overflow'
        totalStaked += arg1
        require 0 < poolInfo.length
        if not uint256(userInfo[0][msg.sender].field_0):
            if arg1 + uint256(userInfo[0][msg.sender].field_0) < uint256(userInfo[0][msg.sender].field_0):
                revert with 0, 'SafeMath: addition overflow'
            uint256(userInfo[0][msg.sender].field_0) += arg1
            if not arg1 + uint256(userInfo[0][msg.sender].field_0):
                uint256(userInfo[0][msg.sender].field_256) = 0
            else:
                if (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / arg1 + uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                uint256(userInfo[0][msg.sender].field_256) = (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / 10^12
        else:
            if not uint256(userInfo[0][msg.sender].field_0):
                if uint256(userInfo[0][msg.sender].field_256) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -uint256(userInfo[0][msg.sender].field_256):
                    if 0 > -uint256(userInfo[0][msg.sender].field_256):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if -uint256(userInfo[0][msg.sender].field_256) <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -uint256(userInfo[0][msg.sender].field_256)
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if 0 <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, ext_call.return_data[0]
                else:
                    if 2 * -uint256(userInfo[0][msg.sender].field_256) / -uint256(userInfo[0][msg.sender].field_256) != 2:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * -uint256(userInfo[0][msg.sender].field_256) / 100 > -uint256(userInfo[0][msg.sender].field_256):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if -uint256(userInfo[0][msg.sender].field_256) - (2 * -uint256(userInfo[0][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -uint256(userInfo[0][msg.sender].field_256) - (2 * -uint256(userInfo[0][msg.sender].field_256) / 100)
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if 2 * -uint256(userInfo[0][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, 2 * -uint256(userInfo[0][msg.sender].field_256) / 100
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint256(userInfo[0][msg.sender].field_256) > uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                    if 0 > (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256)
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if 0 <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, ext_call.return_data[0]
                else:
                    if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) != 2:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100 > (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) - (2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) - (2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100)
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    staticcall libAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(libAddress)
                    if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100
                    else:
                        call libAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 + uint256(userInfo[0][msg.sender].field_0) < uint256(userInfo[0][msg.sender].field_0):
                revert with 0, 'SafeMath: addition overflow'
            uint256(userInfo[0][msg.sender].field_0) += arg1
            if not arg1 + uint256(userInfo[0][msg.sender].field_0):
                uint256(userInfo[0][msg.sender].field_256) = 0
            else:
                if (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / arg1 + uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                uint256(userInfo[0][msg.sender].field_256) = (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / 10^12
    else:
        if not totalStaked:
            uint256(poolInfo.field_512) = block.number
            if arg1 + totalStaked < totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            totalStaked += arg1
            require 0 < poolInfo.length
            if not uint256(userInfo[0][msg.sender].field_0):
                if arg1 + uint256(userInfo[0][msg.sender].field_0) < uint256(userInfo[0][msg.sender].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(userInfo[0][msg.sender].field_0) += arg1
                if not arg1 + uint256(userInfo[0][msg.sender].field_0):
                    uint256(userInfo[0][msg.sender].field_256) = 0
                else:
                    if (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / arg1 + uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    uint256(userInfo[0][msg.sender].field_256) = (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / 10^12
            else:
                if not uint256(userInfo[0][msg.sender].field_0):
                    if uint256(userInfo[0][msg.sender].field_256) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -uint256(userInfo[0][msg.sender].field_256):
                        if 0 > -uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[0][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[0][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * -uint256(userInfo[0][msg.sender].field_256) / -uint256(userInfo[0][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * -uint256(userInfo[0][msg.sender].field_256) / 100 > -uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[0][msg.sender].field_256) - (2 * -uint256(userInfo[0][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[0][msg.sender].field_256) - (2 * -uint256(userInfo[0][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * -uint256(userInfo[0][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * -uint256(userInfo[0][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                else:
                    if uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(userInfo[0][msg.sender].field_256) > uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                        if 0 > (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100 > (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) - (2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) - (2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 + uint256(userInfo[0][msg.sender].field_0) < uint256(userInfo[0][msg.sender].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(userInfo[0][msg.sender].field_0) += arg1
                if not arg1 + uint256(userInfo[0][msg.sender].field_0):
                    uint256(userInfo[0][msg.sender].field_256) = 0
                else:
                    if (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / arg1 + uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    uint256(userInfo[0][msg.sender].field_256) = (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / 10^12
        else:
            if uint256(poolInfo.field_512) < startBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b,
                            mem[199 len 29]
            if uint256(poolInfo.field_512) > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo.field_512):
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_1024) += 0 / totalStaked
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
            else:
                if (block.number * sub_b1700503) - (uint256(poolInfo.field_512) * sub_b1700503) / block.number - uint256(poolInfo.field_512) != sub_b1700503:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.number * sub_b1700503) - (uint256(poolInfo.field_512) * sub_b1700503):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += 0 / totalStaked
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                else:
                    if (block.number * sub_b1700503 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_b1700503 * uint256(poolInfo.field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo.field_512) * sub_b1700503) != uint256(poolInfo.field_256):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * sub_b1700503 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_b1700503 * uint256(poolInfo.field_256)) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * sub_b1700503 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_b1700503 * uint256(poolInfo.field_256)) / totalAllocPoint:
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += 0 / totalStaked
                    else:
                        if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_b1700503 * uint256(poolInfo.field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_b1700503 * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_b1700503 * uint256(poolInfo.field_256)) / totalAllocPoint / totalStaked) + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_b1700503 * uint256(poolInfo.field_256)) / totalAllocPoint / totalStaked
            uint256(poolInfo.field_512) = block.number
            if arg1 + totalStaked < totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            totalStaked += arg1
            require 0 < poolInfo.length
            if not uint256(userInfo[0][msg.sender].field_0):
                if arg1 + uint256(userInfo[0][msg.sender].field_0) < uint256(userInfo[0][msg.sender].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(userInfo[0][msg.sender].field_0) += arg1
                if not arg1 + uint256(userInfo[0][msg.sender].field_0):
                    uint256(userInfo[0][msg.sender].field_256) = 0
                else:
                    if (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / arg1 + uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    uint256(userInfo[0][msg.sender].field_256) = (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / 10^12
            else:
                if not uint256(userInfo[0][msg.sender].field_0):
                    if uint256(userInfo[0][msg.sender].field_256) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -uint256(userInfo[0][msg.sender].field_256):
                        if 0 > -uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[0][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[0][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * -uint256(userInfo[0][msg.sender].field_256) / -uint256(userInfo[0][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 2 * -uint256(userInfo[0][msg.sender].field_256) / 100 > -uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[0][msg.sender].field_256) - (2 * -uint256(userInfo[0][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[0][msg.sender].field_256) - (2 * -uint256(userInfo[0][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * -uint256(userInfo[0][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * -uint256(userInfo[0][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                else:
                    if uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if uint256(userInfo[0][msg.sender].field_256) > uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                        if 0 > (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100 > (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) - (2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) - (2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * (uint256(poolInfo.field_1024) * uint256(userInfo[0][msg.sender].field_0) / 10^12) - uint256(userInfo[0][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 + uint256(userInfo[0][msg.sender].field_0) < uint256(userInfo[0][msg.sender].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(userInfo[0][msg.sender].field_0) += arg1
                if not arg1 + uint256(userInfo[0][msg.sender].field_0):
                    uint256(userInfo[0][msg.sender].field_256) = 0
                else:
                    if (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / arg1 + uint256(userInfo[0][msg.sender].field_0) != uint256(poolInfo.field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    uint256(userInfo[0][msg.sender].field_256) = (arg1 * uint256(poolInfo.field_1024)) + (uint256(userInfo[0][msg.sender].field_0) * uint256(poolInfo.field_1024)) / 10^12
    emit Deposit(arg1, 0, msg.sender, 0);
    stor2 = 1
}

function sub_5de98a01(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require not stor10[address(arg2)]
    mem[0] = arg2
    mem[32] = 10
    stor10[address(arg2)] = 1
    if not arg4:
        if arg1 + totalAllocPoint < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        require 0 < arg3.length
        if block.number > startBlock:
            _15 = mem[128]
            require 1 < arg3.length
            _19 = mem[160]
            require 0 < arg3.length
            _27 = mem[128]
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < arg3.length
            if ext_call.return_data[12 len 20] != address(_27):
                _66 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.token0() with:
                        gas gas_remaining wei
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(_66):
                    revert with 0, 'pair does not exist'
                require 0 < arg3.length
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != mem[140 len 20]:
                    revert with 0, 'pair does not exist'
            else:
                _59 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(_59):
                    require 1 < arg3.length
                    _121 = mem[160]
                    require ext_code.size(arg2)
                    staticcall arg2.token0() with:
                            gas gas_remaining wei
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(_121):
                        revert with 0, 'pair does not exist'
                    require 0 < arg3.length
                    require ext_code.size(arg2)
                    staticcall arg2.0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != mem[140 len 20]:
                        revert with 0, 'pair does not exist'
            require ext_code.size(address(_15))
            call address(_15).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_15))
            call address(_15).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_71663c8aAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_19))
            call address(_19).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_71663c8aAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_71663c8aAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 128] = arg2
            poolInfo.length++
            poolInfo[poolInfo.length].field_0 = arg2
            storF3F7[stor8.length] = arg1
            storF3F7[stor8.length] = block.number
        else:
            _17 = mem[128]
            require 1 < arg3.length
            _21 = mem[160]
            require 0 < arg3.length
            _30 = mem[128]
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < arg3.length
            if ext_call.return_data[12 len 20] != address(_30):
                _69 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.token0() with:
                        gas gas_remaining wei
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(_69):
                    revert with 0, 'pair does not exist'
                require 0 < arg3.length
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != mem[140 len 20]:
                    revert with 0, 'pair does not exist'
            else:
                _63 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(_63):
                    require 1 < arg3.length
                    _131 = mem[160]
                    require ext_code.size(arg2)
                    staticcall arg2.token0() with:
                            gas gas_remaining wei
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(_131):
                        revert with 0, 'pair does not exist'
                    require 0 < arg3.length
                    require ext_code.size(arg2)
                    staticcall arg2.0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != mem[140 len 20]:
                        revert with 0, 'pair does not exist'
            require ext_code.size(address(_17))
            call address(_17).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_21))
            call address(_21).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_17))
            call address(_17).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_71663c8aAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_21))
            call address(_21).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_71663c8aAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_71663c8aAddress, 0x800000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 128] = arg2
            poolInfo.length++
            poolInfo[poolInfo.length].field_0 = arg2
            storF3F7[stor8.length] = arg1
            storF3F7[stor8.length] = startBlock
        storF3F7[stor8.length] = arg3.length
        if not arg3.length:
            idx = 0
            while storF3F7[stor8.length] > idx:
                stor[idx + sha3((6 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911a)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg3.length) + 128 > idx:
                stor[s + sha3((6 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911a)] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while storF3F7[stor8.length] > idx:
                stor[idx + sha3((6 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911a)] = 0
                idx = idx + 1
                continue 
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= uint256(poolInfo[idx].field_512):
                idx = idx + 1
                continue 
            if not idx:
                if not totalStaked:
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                if uint256(poolInfo[idx].field_512) < startBlock:
                    revert with 0, 32, 35, 0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b, mem[mem[64] + 103 len 29]
                _740 = mem[64]
                mem[64] = mem[64] + 64
                mem[_740] = 30
                mem[_740 + 32] = 'SafeMath: subtraction overflow'
                if uint256(poolInfo[idx].field_512) > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _740 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[idx].field_512):
                    _858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_858] = 26
                    mem[_858 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _870 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _870 + 68] = mem[idx + _858 + 32]
                            idx = idx + 32
                            continue 
                        mem[_870 + 68] = mem[_870 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _870 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1007] = 26
                        mem[_1007 + 32] = 'SafeMath: division by zero'
                        if totalStaked:
                            if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                            uint256(poolInfo[idx].field_512) = block.number
                            idx = idx + 1
                            continue 
                        _1027 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1027 + 68] = mem[idx + _1007 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1027 + 68] = mem[_1027 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1027 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1026] = 26
                    mem[_1026 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _1050 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1050 + 68] = mem[idx + _1026 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1050 + 68] = mem[_1050 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1050 + -mem[64] + 100
                if (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) / block.number - uint256(poolInfo[idx].field_512) != sub_b1700503:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503):
                    _869 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_869] = 26
                    mem[_869 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _887 + 68] = mem[idx + _869 + 32]
                            idx = idx + 32
                            continue 
                        mem[_887 + 68] = mem[_887 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _887 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1025] = 26
                        mem[_1025 + 32] = 'SafeMath: division by zero'
                        if totalStaked:
                            if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                            uint256(poolInfo[idx].field_512) = block.number
                            idx = idx + 1
                            continue 
                        _1047 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1047 + 68] = mem[idx + _1025 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1047 + 68] = mem[_1047 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1047 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1046 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1046] = 26
                    mem[_1046 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _1083 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1083 + 68] = mem[idx + _1046 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1083 + 68] = mem[_1083 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1083 + -mem[64] + 100
                if (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) != uint256(poolInfo[idx].field_256):
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_886] = 26
                mem[_886 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _915 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _915 + 68] = mem[idx + _886 + 32]
                        idx = idx + 32
                        continue 
                    mem[_915 + 68] = mem[_915 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _915 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint:
                    _1045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1045] = 26
                    mem[_1045 + 32] = 'SafeMath: division by zero'
                    if totalStaked:
                        if (0 / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / totalStaked
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _1080 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1080 + 68] = mem[idx + _1045 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1080 + 68] = mem[_1080 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1080 + -mem[64] + 100
                if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1079 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1079] = 26
                mem[_1079 + 32] = 'SafeMath: division by zero'
                if totalStaked:
                    if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / totalStaked) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / totalStaked
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _1112 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1112 + 68] = mem[idx + _1079 + 32]
                    idx = idx + 32
                    continue 
                mem[_1112 + 68] = mem[_1112 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1112 + -mem[64] + 100
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
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            if uint256(poolInfo[idx].field_512) < startBlock:
                revert with 0, 32, 35, 0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b, mem[mem[64] + 103 len 29]
            _751 = mem[64]
            mem[64] = mem[64] + 64
            mem[_751] = 30
            mem[_751 + 32] = 'SafeMath: subtraction overflow'
            if uint256(poolInfo[idx].field_512) > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _751 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo[idx].field_512):
                _881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_881] = 26
                mem[_881 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _906 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _906 + 68] = mem[idx + _881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_906 + 68] = mem[_906 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _906 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1036] = 26
                    mem[_1036 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _1072 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1072 + 68] = mem[idx + _1036 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1072 + 68] = mem[_1072 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1072 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1071] = 26
                mem[_1071 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _1108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1108 + 68] = mem[idx + _1071 + 32]
                    idx = idx + 32
                    continue 
                mem[_1108 + 68] = mem[_1108 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1108 + -mem[64] + 100
            if (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) / block.number - uint256(poolInfo[idx].field_512) != sub_b1700503:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503):
                _905 = mem[64]
                mem[64] = mem[64] + 64
                mem[_905] = 26
                mem[_905 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _931 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _931 + 68] = mem[idx + _905 + 32]
                        idx = idx + 32
                        continue 
                    mem[_931 + 68] = mem[_931 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _931 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(libAddress)
                call libAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1070 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1070] = 26
                    mem[_1070 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                        uint256(poolInfo[idx].field_512) = block.number
                        idx = idx + 1
                        continue 
                    _1105 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1105 + 68] = mem[idx + _1070 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1105 + 68] = mem[_1105 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1105 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1104] = 26
                mem[_1104 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _1139 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1139 + 68] = mem[idx + _1104 + 32]
                    idx = idx + 32
                    continue 
                mem[_1139 + 68] = mem[_1139 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1139 + -mem[64] + 100
            if (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[idx].field_512) * sub_b1700503) != uint256(poolInfo[idx].field_256):
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _930 = mem[64]
            mem[64] = mem[64] + 64
            mem[_930] = 26
            mem[_930 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _955 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _955 + 68] = mem[idx + _930 + 32]
                    idx = idx + 32
                    continue 
                mem[_955 + 68] = mem[_955 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _955 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
            require ext_code.size(libAddress)
            call libAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint:
                _1103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1103] = 26
                mem[_1103 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[idx].field_1024) += 0 / ext_call.return_data[0]
                    uint256(poolInfo[idx].field_512) = block.number
                    idx = idx + 1
                    continue 
                _1136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1136 + 68] = mem[idx + _1103 + 32]
                    idx = idx + 32
                    continue 
                mem[_1136 + 68] = mem[_1136 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1136 + -mem[64] + 100
            if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1135] = 26
            mem[_1135 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[idx].field_1024) < uint256(poolInfo[idx].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(poolInfo[idx].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[idx].field_256)) - (uint256(poolInfo[idx].field_512) * sub_b1700503 * uint256(poolInfo[idx].field_256)) / totalAllocPoint / ext_call.return_data[0]
                uint256(poolInfo[idx].field_512) = block.number
                idx = idx + 1
                continue 
            _1172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1172 + 68] = mem[idx + _1135 + 32]
                idx = idx + 32
                continue 
            mem[_1172 + 68] = mem[_1172 + 74 len 26]
            revert with memory
              from mem[64]
               len _1172 + -mem[64] + 100
        if arg1 + totalAllocPoint < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        require 0 < mem[96]
        if block.number > startBlock:
            _723 = mem[128]
            require 1 < mem[96]
            _728 = mem[160]
            require 0 < mem[96]
            _734 = mem[128]
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[96]
            if address(ext_call.return_data[0]) != address(_734):
                _769 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != address(_769):
                    revert with 0, 'pair does not exist'
                require 0 < mem[96]
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != mem[140 len 20]:
                    revert with 0, 'pair does not exist'
                require ext_code.size(address(_723))
                call address(_723).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_728))
                call address(_728).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_723))
                call address(_723).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_71663c8aAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_728))
                call address(_728).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_71663c8aAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = sub_71663c8aAddress
                mem[mem[64] + 36] = 0x800000000000000000000000
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_71663c8aAddress, 0x800000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1056 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1056] = arg2
                mem[_1056 + 32] = arg1
                mem[_1056 + 64] = block.number
                mem[_1056 + 96] = 96
                mem[_1056 + 128] = 0
                mem[_1056 + 160] = arg5
            else:
                _757 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(_757):
                    require ext_code.size(address(_723))
                    call address(_723).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_728))
                    call address(_728).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_723))
                    call address(_723).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_728))
                    call address(_728).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = sub_71663c8aAddress
                    mem[mem[64] + 36] = 0x800000000000000000000000
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _993 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_993] = arg2
                    mem[_993 + 32] = arg1
                    mem[_993 + 64] = block.number
                    mem[_993 + 96] = 96
                    mem[_993 + 128] = 0
                    mem[_993 + 160] = arg5
                else:
                    require 1 < mem[96]
                    _805 = mem[160]
                    require ext_code.size(arg2)
                    staticcall arg2.token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != address(_805):
                        revert with 0, 'pair does not exist'
                    require 0 < mem[96]
                    require ext_code.size(arg2)
                    staticcall arg2.0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[140 len 20]:
                        revert with 0, 'pair does not exist'
                    require ext_code.size(address(_723))
                    call address(_723).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_728))
                    call address(_728).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_723))
                    call address(_723).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_728))
                    call address(_728).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = sub_71663c8aAddress
                    mem[mem[64] + 36] = 0x800000000000000000000000
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1145 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1145] = arg2
                    mem[_1145 + 32] = arg1
                    mem[_1145 + 64] = block.number
                    mem[_1145 + 96] = 96
                    mem[_1145 + 128] = 0
                    mem[_1145 + 160] = arg5
            poolInfo.length++
            poolInfo[poolInfo.length].field_0 = arg2
            storF3F7[stor8.length] = arg1
            storF3F7[stor8.length] = block.number
        else:
            _725 = mem[128]
            require 1 < mem[96]
            _730 = mem[160]
            require 0 < mem[96]
            _737 = mem[128]
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[96]
            if address(ext_call.return_data[0]) != address(_737):
                _772 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != address(_772):
                    revert with 0, 'pair does not exist'
                require 0 < mem[96]
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != mem[140 len 20]:
                    revert with 0, 'pair does not exist'
                require ext_code.size(address(_725))
                call address(_725).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_730))
                call address(_730).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_725))
                call address(_725).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_71663c8aAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_730))
                call address(_730).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_71663c8aAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, 0x800000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = sub_71663c8aAddress
                mem[mem[64] + 36] = 0x800000000000000000000000
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_71663c8aAddress, 0x800000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1062 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1062] = arg2
                mem[_1062 + 32] = arg1
                mem[_1062 + 64] = startBlock
                mem[_1062 + 96] = 96
                mem[_1062 + 128] = 0
                mem[_1062 + 160] = arg5
            else:
                _761 = mem[160]
                require ext_code.size(arg2)
                staticcall arg2.0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == address(_761):
                    require ext_code.size(address(_725))
                    call address(_725).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_730))
                    call address(_730).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_725))
                    call address(_725).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_730))
                    call address(_730).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = sub_71663c8aAddress
                    mem[mem[64] + 36] = 0x800000000000000000000000
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1000 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1000] = arg2
                    mem[_1000 + 32] = arg1
                    mem[_1000 + 64] = startBlock
                    mem[_1000 + 96] = 96
                    mem[_1000 + 128] = 0
                    mem[_1000 + 160] = arg5
                else:
                    require 1 < mem[96]
                    _815 = mem[160]
                    require ext_code.size(arg2)
                    staticcall arg2.token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != address(_815):
                        revert with 0, 'pair does not exist'
                    require 0 < mem[96]
                    require ext_code.size(arg2)
                    staticcall arg2.0xd21220a7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != mem[140 len 20]:
                        revert with 0, 'pair does not exist'
                    require ext_code.size(address(_725))
                    call address(_725).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_730))
                    call address(_730).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_725))
                    call address(_725).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_730))
                    call address(_730).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniRouterAddress, 0x800000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = sub_71663c8aAddress
                    mem[mem[64] + 36] = 0x800000000000000000000000
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_71663c8aAddress, 0x800000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1151 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1151] = arg2
                    mem[_1151 + 32] = arg1
                    mem[_1151 + 64] = startBlock
                    mem[_1151 + 96] = 96
                    mem[_1151 + 128] = 0
                    mem[_1151 + 160] = arg5
            poolInfo.length++
            poolInfo[poolInfo.length].field_0 = arg2
            storF3F7[stor8.length] = arg1
            storF3F7[stor8.length] = startBlock
        storF3F7[stor8.length] = mem[96]
        if not mem[96]:
            idx = 0
            while storF3F7[stor8.length] > idx:
                stor[idx + sha3((6 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911a)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                stor[s + sha3((6 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911a)] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
            while storF3F7[stor8.length] > idx:
                stor[idx + sha3((6 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911a)] = 0
                idx = idx + 1
                continue 
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = uint8(arg5)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if stor2 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor2 = 2
    if not arg1:
        revert with 0, 'pool 0 is for staking'
    require arg1 < poolInfo.length
    require uint256(poolInfo[arg1].field_768)
    require 1 < uint256(poolInfo[arg1].field_768)
    if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
        revert with 0, 'withdraw: not good'
    if arg1 >= poolInfo.length:
        revert with 0, 'Pool does not exist'
    if block.number <= uint256(poolInfo[arg1].field_512):
        if not uint256(userInfo[arg1][msg.sender].field_0):
            if uint256(userInfo[arg1][msg.sender].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -uint256(userInfo[arg1][msg.sender].field_256):
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_71663c8aAddress)
                call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                if 0 > -uint256(userInfo[arg1][msg.sender].field_256):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if -uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256)
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if 0 <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, 0
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, ext_call.return_data[0]
            else:
                if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / -uint256(userInfo[arg1][msg.sender].field_256) != 2:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_71663c8aAddress)
                call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 > -uint256(userInfo[arg1][msg.sender].field_256):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100)
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, ext_call.return_data[0]
        else:
            if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if uint256(userInfo[arg1][msg.sender].field_256) > uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_71663c8aAddress)
                call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                if 0 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256)
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if 0 <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, 0
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, ext_call.return_data[0]
            else:
                if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) != 2:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_71663c8aAddress)
                call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100)
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                staticcall libAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(libAddress)
                if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100
                else:
                    call libAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devaddr, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint256(userInfo[arg1][msg.sender].field_0):
            uint256(userInfo[arg1][msg.sender].field_256) = 0
        else:
            if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            uint256(userInfo[arg1][msg.sender].field_256) = uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12
    else:
        if not arg1:
            if not totalStaked:
                uint256(poolInfo[arg1].field_512) = block.number
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    if uint256(userInfo[arg1][msg.sender].field_256) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / -uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(userInfo[arg1][msg.sender].field_256) > uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    uint256(userInfo[arg1][msg.sender].field_256) = 0
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    uint256(userInfo[arg1][msg.sender].field_256) = uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12
            else:
                if uint256(poolInfo[arg1].field_512) < startBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b,
                                mem[199 len 29]
                if uint256(poolInfo[arg1].field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[arg1].field_512):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 0 / totalStaked
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                else:
                    if (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) / block.number - uint256(poolInfo[arg1].field_512) != sub_b1700503:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / totalStaked
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / totalStaked
                    else:
                        if (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) != uint256(poolInfo[arg1].field_256):
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint:
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / totalStaked
                        else:
                            if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not totalStaked:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / totalStaked) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / totalStaked
                uint256(poolInfo[arg1].field_512) = block.number
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    if uint256(userInfo[arg1][msg.sender].field_256) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / -uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if uint256(userInfo[arg1][msg.sender].field_256) > uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    uint256(userInfo[arg1][msg.sender].field_256) = 0
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                    uint256(userInfo[arg1][msg.sender].field_256) = uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12
        else:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                uint256(poolInfo[arg1].field_512) = block.number
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    if uint256(userInfo[arg1][msg.sender].field_256) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / -uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(userInfo[arg1][msg.sender].field_256) > uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    uint256(userInfo[arg1][msg.sender].field_256) = 0
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    uint256(userInfo[arg1][msg.sender].field_256) = uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12
            else:
                if uint256(poolInfo[arg1].field_512) < startBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x725f66726f6d2063616e206e6f74206c657373207468616e207374617274426c6f636b,
                                mem[199 len 29]
                if uint256(poolInfo[arg1].field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[arg1].field_512):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(libAddress)
                    call libAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) / block.number - uint256(poolInfo[arg1].field_512) != sub_b1700503:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / (block.number * sub_b1700503) - (uint256(poolInfo[arg1].field_512) * sub_b1700503) != uint256(poolInfo[arg1].field_256):
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(libAddress)
                        call libAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[arg1].field_1024) < uint256(poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[arg1].field_1024) += 10^12 * (block.number * sub_b1700503 * uint256(poolInfo[arg1].field_256)) - (uint256(poolInfo[arg1].field_512) * sub_b1700503 * uint256(poolInfo[arg1].field_256)) / totalAllocPoint / ext_call.return_data[0]
                uint256(poolInfo[arg1].field_512) = block.number
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    if uint256(userInfo[arg1][msg.sender].field_256) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / -uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 > -uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -uint256(userInfo[arg1][msg.sender].field_256) - (2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * -uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if uint256(userInfo[arg1][msg.sender].field_256) > uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 0 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 0 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                    else:
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) != 2:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_71663c8aAddress)
                        call sub_71663c8aAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0, stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256, arg2, 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
                        staticcall stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > uint256(userInfo[arg1][msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[arg1][msg.sender].field_0) -= arg2
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 > (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100) <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) - (2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100)
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        staticcall libAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(libAddress)
                        if 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100 <= ext_call.return_data[0]:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 2 * (uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12) - uint256(userInfo[arg1][msg.sender].field_256) / 100
                        else:
                            call libAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint256(userInfo[arg1][msg.sender].field_0):
                    uint256(userInfo[arg1][msg.sender].field_256) = 0
                else:
                    if uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / uint256(userInfo[arg1][msg.sender].field_0) != uint256(poolInfo[arg1].field_1024):
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                    uint256(userInfo[arg1][msg.sender].field_256) = uint256(poolInfo[arg1].field_1024) * uint256(userInfo[arg1][msg.sender].field_0) / 10^12
    if not uint8(poolInfo[arg1].field_1280):
        require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0)
        call stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(WETHAddress)
        call WETHAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
             gas 2300 * is_zero(value) wei
    require ext_code.size(stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256)
    call stor[sha3((6 * arg1) + ('name', 'poolInfo', 8) + 3)].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg2, msg.sender, arg1);
    stor2 = 1
}



}
