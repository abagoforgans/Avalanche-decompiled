contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - withdrawAll(uint256 arg1)
#
uint256 stor0;
uint8 stor1;
address owner; offset 8
address krwAddress;
mapping of uint8 stor3;
array of struct poolInfo;
mapping of struct userInfo;
uint256 lastBlock;
uint8 stor7;
mapping of uint8 stor8;

function poolLength() payable {
    return poolInfo.length
}

function krw() payable {
    return krwAddress
}

function pausedUpdatePools() payable {
    return bool(stor7)
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    mem[128] = stor[sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_0
    idx = 128
    s = 0
    while stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return poolInfo[arg1].field_0, 
           Array(len=stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length, data=mem[128 len stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length]),
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_512,
           bool(poolInfo[arg1].field_688),
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function pausedPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function paused() payable {
    return bool(stor1)
}

function tokenAlreadyInPool(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function lastBlock() payable {
    return lastBlock
}

function owner() payable {
    return owner
}

function getTotalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    idx = 704
    s = 0
    while stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length + 672 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return poolInfo[arg1].field_768
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function getDeposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][address(arg2)].field_0
}

function getKrwPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    idx = 704
    s = 0
    while stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length + 672 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return poolInfo[arg1].field_1024
}

function getFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    idx = 704
    s = 0
    while stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length + 672 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return poolInfo[arg1].field_512
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

function changeLastBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lastBlock = arg1
}

function changeFee(uint256 arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_512 = arg2
}

function changePoolKrwReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_1024 = arg2
}

function pausePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    stor8[arg1] = 1
    poolInfo[arg1].field_1280 = block.number
}

function unpausePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    stor8[arg1] = 0
    poolInfo[arg1].field_1280 = block.number
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1:
        revert with 0, 'Pausable: paused'
    stor1 = 1
    emit Paused(msg.sender);
    stor7 = 1
    idx = var21001
    while idx < poolInfo.length:
        mem[0] = 4
        poolInfo[idx].field_1280 = block.number
        idx = idx + 1
        continue 
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1:
        revert with 0, 'Pausable: not paused'
    stor1 = 0
    emit Unpaused(msg.sender);
    stor7 = 0
    idx = var21001
    while idx < poolInfo.length:
        mem[0] = 4
        poolInfo[idx].field_1280 = block.number
        idx = idx + 1
        continue 
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

function changeVault(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_528 = arg2
    poolInfo[arg1].field_688 = Mask(80, 0, arg3)
    if poolInfo[arg1].field_688:
        require arg1 < poolInfo.length
        mem[704] = stor[sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_0
        idx = 704
        s = 0
        while stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length + 672 > idx:
            mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(poolInfo[arg1].field_528)
        call poolInfo[arg1].field_528.0xc3629dbe with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, Array(len=stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length, data=mem[704 len stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getPending(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    idx = 832
    s = 0
    while stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length + 800 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'poolInfo', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not userInfo[arg1][address(arg2)].field_0:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1536 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1536:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(stor[(7 * arg1) + ('name', 'poolInfo', 4) + 1].length) + 933 len 31]
    if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1536 / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1536 / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function createPool(address arg1, string arg2, uint16 arg3, address arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor3[address(arg1)]
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    stor[sha3((7 * poolInfo.length) + ('name', 'poolInfo', 4) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    poolInfo[poolInfo.length].field_512 = arg3
    poolInfo[poolInfo.length].field_528 = arg4
    poolInfo[poolInfo.length].field_688 = Mask(80, 0, arg6)
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg5
    poolInfo[poolInfo.length].field_1280 = block.number
    poolInfo[poolInfo.length].field_1536 = 0
    if arg6:
        if 1 > poolInfo.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require poolInfo.length - 1 < poolInfo.length
        mem[ceil32(arg2.length) + 1088] = stor[sha3((7 * poolInfo.length) + ('name', 'poolInfo', 4) - 6)].field_0
        idx = ceil32(arg2.length) + 1088
        s = 0
        while ceil32(arg2.length) + stor[(7 * poolInfo.length) + ('name', 'poolInfo', 4) - 6].length + 1056 > idx:
            mem[idx + 32] = stor[s + sha3((7 * poolInfo.length) + ('name', 'poolInfo', 4) - 6)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(poolInfo[poolInfo.length].field_0)
        call poolInfo[poolInfo.length].field_0.0xc3629dbe with:
             gas gas_remaining wei
            args poolInfo[poolInfo.length].field_0, Array(len=stor[(7 * poolInfo.length) + ('name', 'poolInfo', 4) - 6].length, data=mem[ceil32(arg2.length) + 1088 len stor[(7 * poolInfo.length) + ('name', 'poolInfo', 4) - 6].length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor3[address(arg1)] = 1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
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
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    if userInfo[arg1][address(msg.sender)].field_0 > poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_768 -= userInfo[arg1][address(msg.sender)].field_0
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    stor0 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_768:
        if not stor7:
            if not stor8[arg1]:
                if lastBlock <= block.number:
                    if poolInfo[arg1].field_1280 > lastBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1024:
                        if poolInfo[arg1].field_768 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_768
                        if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                    else:
                        require poolInfo[arg1].field_1024
                        if (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_1024 != lastBlock - poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024):
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                        else:
                            require (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024)
                            if (10^18 * lastBlock * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + ((10^18 * lastBlock * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += (10^18 * lastBlock * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768
                else:
                    if poolInfo[arg1].field_1280 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1024:
                        if poolInfo[arg1].field_768 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_768
                        if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                    else:
                        require poolInfo[arg1].field_1024
                        if (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_1024 != block.number - poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024):
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                        else:
                            require (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024)
                            if (10^18 * block.number * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + ((10^18 * block.number * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += (10^18 * block.number * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768
    require arg1 < poolInfo.length
    poolInfo[arg1].field_1280 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        if not poolInfo[idx].field_768:
            require idx < poolInfo.length
            mem[0] = 4
            poolInfo[idx].field_1280 = block.number
            idx = idx + 1
            continue 
        if stor7:
            require idx < poolInfo.length
            mem[0] = 4
            poolInfo[idx].field_1280 = block.number
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 8
        if stor8[idx]:
            require idx < poolInfo.length
            mem[0] = 4
            poolInfo[idx].field_1280 = block.number
            idx = idx + 1
            continue 
        if lastBlock <= block.number:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 30
            mem[_103 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1280 > lastBlock:
                _105 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_105 + idx + 68] = mem[_103 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_105 + 68] = mem[_105 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _105 + -mem[64] + 100
            if not poolInfo[idx].field_1024:
                _123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_123] = 26
                mem[_123 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_768 > 0:
                    require poolInfo[idx].field_768
                    if poolInfo[idx].field_1536 + (0 / poolInfo[idx].field_768) < poolInfo[idx].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1536 += 0 / poolInfo[idx].field_768
                    require idx < poolInfo.length
                    mem[0] = 4
                    poolInfo[idx].field_1280 = block.number
                    idx = idx + 1
                    continue 
                _130 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_130 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_130 + 68] = mem[_130 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _130 + -mem[64] + 100
            require poolInfo[idx].field_1024
            if (lastBlock * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / poolInfo[idx].field_1024 != lastBlock - poolInfo[idx].field_1280:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (lastBlock * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024):
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 26
                mem[_129 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_768 > 0:
                    require poolInfo[idx].field_768
                    if poolInfo[idx].field_1536 + (0 / poolInfo[idx].field_768) < poolInfo[idx].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1536 += 0 / poolInfo[idx].field_768
                    require idx < poolInfo.length
                    mem[0] = 4
                    poolInfo[idx].field_1280 = block.number
                    idx = idx + 1
                    continue 
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_138 + idx + 68] = mem[_129 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 68] = mem[_138 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            require (lastBlock * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024)
            if (10^18 * lastBlock * poolInfo[idx].field_1024) - (10^18 * poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / (lastBlock * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024) != 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 26
            mem[_137 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_768 > 0:
                require poolInfo[idx].field_768
                if poolInfo[idx].field_1536 + ((10^18 * lastBlock * poolInfo[idx].field_1024) - (10^18 * poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / poolInfo[idx].field_768) < poolInfo[idx].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1536 += (10^18 * lastBlock * poolInfo[idx].field_1024) - (10^18 * poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / poolInfo[idx].field_768
                require idx < poolInfo.length
                mem[0] = 4
                poolInfo[idx].field_1280 = block.number
                idx = idx + 1
                continue 
            _151 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_151 + idx + 68] = mem[_137 + idx + 32]
                idx = idx + 32
                continue 
            mem[_151 + 68] = mem[_151 + 74 len 26]
            revert with memory
              from mem[64]
               len _151 + -mem[64] + 100
        _104 = mem[64]
        mem[64] = mem[64] + 64
        mem[_104] = 30
        mem[_104 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_1280 > block.number:
            _108 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_108 + idx + 68] = mem[_104 + idx + 32]
                idx = idx + 32
                continue 
            mem[_108 + 68] = mem[_108 + 70 len 30]
            revert with memory
              from mem[64]
               len _108 + -mem[64] + 100
        if not poolInfo[idx].field_1024:
            _124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_124] = 26
            mem[_124 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_768 > 0:
                require poolInfo[idx].field_768
                if poolInfo[idx].field_1536 + (0 / poolInfo[idx].field_768) < poolInfo[idx].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1536 += 0 / poolInfo[idx].field_768
                require idx < poolInfo.length
                mem[0] = 4
                poolInfo[idx].field_1280 = block.number
                idx = idx + 1
                continue 
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_134 + idx + 68] = mem[_124 + idx + 32]
                idx = idx + 32
                continue 
            mem[_134 + 68] = mem[_134 + 74 len 26]
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        require poolInfo[idx].field_1024
        if (block.number * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / poolInfo[idx].field_1024 != block.number - poolInfo[idx].field_1280:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024):
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_768 > 0:
                require poolInfo[idx].field_768
                if poolInfo[idx].field_1536 + (0 / poolInfo[idx].field_768) < poolInfo[idx].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1536 += 0 / poolInfo[idx].field_768
                require idx < poolInfo.length
                mem[0] = 4
                poolInfo[idx].field_1280 = block.number
                idx = idx + 1
                continue 
            _143 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_143 + idx + 68] = mem[_133 + idx + 32]
                idx = idx + 32
                continue 
            mem[_143 + 68] = mem[_143 + 74 len 26]
            revert with memory
              from mem[64]
               len _143 + -mem[64] + 100
        require (block.number * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024)
        if (10^18 * block.number * poolInfo[idx].field_1024) - (10^18 * poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / (block.number * poolInfo[idx].field_1024) - (poolInfo[idx].field_1280 * poolInfo[idx].field_1024) != 10^18:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _142 = mem[64]
        mem[64] = mem[64] + 64
        mem[_142] = 26
        mem[_142 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_768 > 0:
            require poolInfo[idx].field_768
            if poolInfo[idx].field_1536 + ((10^18 * block.number * poolInfo[idx].field_1024) - (10^18 * poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / poolInfo[idx].field_768) < poolInfo[idx].field_1536:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_1536 += (10^18 * block.number * poolInfo[idx].field_1024) - (10^18 * poolInfo[idx].field_1280 * poolInfo[idx].field_1024) / poolInfo[idx].field_768
            require idx < poolInfo.length
            mem[0] = 4
            poolInfo[idx].field_1280 = block.number
            idx = idx + 1
            continue 
        _156 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_156 + idx + 68] = mem[_142 + idx + 32]
            idx = idx + 32
            continue 
        mem[_156 + 68] = mem[_156 + 74 len 26]
        revert with memory
          from mem[64]
           len _156 + -mem[64] + 100
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor8[arg1]:
        revert with 0, 'Pool: paused'
    if arg2 < 10000:
        revert with 0, 'Amount: too low'
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_768:
        require arg1 < poolInfo.length
        poolInfo[arg1].field_1280 = block.number
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
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
            if poolInfo[arg1].field_512:
                require ext_code.size(poolInfo[arg1].field_0)
                call poolInfo[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args poolInfo[arg1].field_512, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[arg1].field_688:
                        require ext_code.size(poolInfo[arg1].field_528)
                        call poolInfo[arg1].field_528.updatePool(address rg1) with:
                             gas gas_remaining wei
                            args poolInfo[arg1].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if not poolInfo[arg1].field_1536:
                if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require poolInfo[arg1].field_1536
                if poolInfo[arg1].field_1536 * arg2 / poolInfo[arg1].field_1536 != arg2:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 522 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 + (poolInfo[arg1].field_1536 * arg2 / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_256 += poolInfo[arg1].field_1536 * arg2 / 10^18
            if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_768 += arg2
            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(msg.sender)].field_0 += arg2
            emit Deposit(arg2, msg.sender, arg1);
        else:
            require arg2
            if arg2 * poolInfo[arg1].field_512 / arg2 != poolInfo[arg1].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg2 * poolInfo[arg1].field_512 / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
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
            if poolInfo[arg1].field_512:
                require ext_code.size(poolInfo[arg1].field_0)
                call poolInfo[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args poolInfo[arg1].field_512, arg2 * poolInfo[arg1].field_512 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[arg1].field_688:
                        require ext_code.size(poolInfo[arg1].field_528)
                        call poolInfo[arg1].field_528.updatePool(address rg1) with:
                             gas gas_remaining wei
                            args poolInfo[arg1].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if not poolInfo[arg1].field_1536:
                if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require poolInfo[arg1].field_1536
                if (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / poolInfo[arg1].field_1536 != arg2 - (arg2 * poolInfo[arg1].field_512 / 10000):
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 522 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 + ((arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_256 += (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18
            if poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_768 = poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
            if userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(msg.sender)].field_0 = userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
            emit Deposit((arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)), msg.sender, arg1);
    else:
        if stor7:
            require arg1 < poolInfo.length
            poolInfo[arg1].field_1280 = block.number
            if not arg2:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
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
                if poolInfo[arg1].field_512:
                    require ext_code.size(poolInfo[arg1].field_0)
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args poolInfo[arg1].field_512, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if poolInfo[arg1].field_688:
                            require ext_code.size(poolInfo[arg1].field_528)
                            call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                 gas gas_remaining wei
                                args poolInfo[arg1].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if not poolInfo[arg1].field_1536:
                    if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require poolInfo[arg1].field_1536
                    if poolInfo[arg1].field_1536 * arg2 / poolInfo[arg1].field_1536 != arg2:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 + (poolInfo[arg1].field_1536 * arg2 / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_256 += poolInfo[arg1].field_1536 * arg2 / 10^18
                if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_768 += arg2
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                emit Deposit(arg2, msg.sender, arg1);
            else:
                require arg2
                if arg2 * poolInfo[arg1].field_512 / arg2 != poolInfo[arg1].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 * poolInfo[arg1].field_512 / 10000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
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
                if poolInfo[arg1].field_512:
                    require ext_code.size(poolInfo[arg1].field_0)
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args poolInfo[arg1].field_512, arg2 * poolInfo[arg1].field_512 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if poolInfo[arg1].field_688:
                            require ext_code.size(poolInfo[arg1].field_528)
                            call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                 gas gas_remaining wei
                                args poolInfo[arg1].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if not poolInfo[arg1].field_1536:
                    if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require poolInfo[arg1].field_1536
                    if (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / poolInfo[arg1].field_1536 != arg2 - (arg2 * poolInfo[arg1].field_512 / 10000):
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 + ((arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_256 += (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18
                if poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_768 = poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 = userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                emit Deposit((arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)), msg.sender, arg1);
        else:
            if stor8[arg1]:
                require arg1 < poolInfo.length
                poolInfo[arg1].field_1280 = block.number
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
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
                    if poolInfo[arg1].field_512:
                        require ext_code.size(poolInfo[arg1].field_0)
                        call poolInfo[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args poolInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if poolInfo[arg1].field_688:
                                require ext_code.size(poolInfo[arg1].field_528)
                                call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                     gas gas_remaining wei
                                    args poolInfo[arg1].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if not poolInfo[arg1].field_1536:
                        if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require poolInfo[arg1].field_1536
                        if poolInfo[arg1].field_1536 * arg2 / poolInfo[arg1].field_1536 != arg2:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 + (poolInfo[arg1].field_1536 * arg2 / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_256 += poolInfo[arg1].field_1536 * arg2 / 10^18
                    if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += arg2
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    require arg2
                    if arg2 * poolInfo[arg1].field_512 / arg2 != poolInfo[arg1].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 * poolInfo[arg1].field_512 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
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
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if poolInfo[arg1].field_512:
                        require ext_code.size(poolInfo[arg1].field_0)
                        call poolInfo[arg1].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args poolInfo[arg1].field_512, arg2 * poolInfo[arg1].field_512 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if poolInfo[arg1].field_688:
                                require ext_code.size(poolInfo[arg1].field_528)
                                call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                     gas gas_remaining wei
                                    args poolInfo[arg1].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if not poolInfo[arg1].field_1536:
                        if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require poolInfo[arg1].field_1536
                        if (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / poolInfo[arg1].field_1536 != arg2 - (arg2 * poolInfo[arg1].field_512 / 10000):
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 + ((arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_256 += (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18
                    if poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 = poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 = userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                    emit Deposit((arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)), msg.sender, arg1);
            else:
                if lastBlock <= block.number:
                    if poolInfo[arg1].field_1280 > lastBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1024:
                        if poolInfo[arg1].field_768 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_768
                        if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                    else:
                        require poolInfo[arg1].field_1024
                        if (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_1024 != lastBlock - poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024):
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                        else:
                            require (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024)
                            if (10^18 * lastBlock * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / (lastBlock * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + ((10^18 * lastBlock * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += (10^18 * lastBlock * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768
                    require arg1 < poolInfo.length
                    poolInfo[arg1].field_1280 = block.number
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[672 len 4] = 0
                        mem[644 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
                        if poolInfo[arg1].field_512:
                            require ext_code.size(poolInfo[arg1].field_0)
                            call poolInfo[arg1].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args poolInfo[arg1].field_512, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                if poolInfo[arg1].field_688:
                                    require ext_code.size(poolInfo[arg1].field_528)
                                    call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                         gas gas_remaining wei
                                        args poolInfo[arg1].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if not poolInfo[arg1].field_1536:
                            if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require poolInfo[arg1].field_1536
                            if poolInfo[arg1].field_1536 * arg2 / poolInfo[arg1].field_1536 != arg2:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 + (poolInfo[arg1].field_1536 * arg2 / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_256 += poolInfo[arg1].field_1536 * arg2 / 10^18
                        if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += arg2
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        emit Deposit(arg2, msg.sender, arg1);
                    else:
                        require arg2
                        if arg2 * poolInfo[arg1].field_512 / arg2 != poolInfo[arg1].field_512:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if arg2 * poolInfo[arg1].field_512 / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[672 len 4] = 0
                        mem[644 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
                        if poolInfo[arg1].field_512:
                            require ext_code.size(poolInfo[arg1].field_0)
                            call poolInfo[arg1].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args poolInfo[arg1].field_512, arg2 * poolInfo[arg1].field_512 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                if poolInfo[arg1].field_688:
                                    require ext_code.size(poolInfo[arg1].field_528)
                                    call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                         gas gas_remaining wei
                                        args poolInfo[arg1].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        if not poolInfo[arg1].field_1536:
                            if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require poolInfo[arg1].field_1536
                            if (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / poolInfo[arg1].field_1536 != arg2 - (arg2 * poolInfo[arg1].field_512 / 10000):
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 + ((arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_256 += (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18
                        if poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 = poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 = userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                        emit Deposit((arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)), msg.sender, arg1);
                else:
                    if poolInfo[arg1].field_1280 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1024:
                        if poolInfo[arg1].field_768 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_768
                        if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                        require arg1 < poolInfo.length
                        poolInfo[arg1].field_1280 = block.number
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                            if poolInfo[arg1].field_512:
                                require ext_code.size(poolInfo[arg1].field_0)
                                call poolInfo[arg1].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args poolInfo[arg1].field_512, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    if poolInfo[arg1].field_688:
                                        require ext_code.size(poolInfo[arg1].field_528)
                                        call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                             gas gas_remaining wei
                                            args poolInfo[arg1].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            if not poolInfo[arg1].field_1536:
                                if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require poolInfo[arg1].field_1536
                                if poolInfo[arg1].field_1536 * arg2 / poolInfo[arg1].field_1536 != arg2:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 650 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 + (poolInfo[arg1].field_1536 * arg2 / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_256 += poolInfo[arg1].field_1536 * arg2 / 10^18
                            if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += arg2
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            emit Deposit(arg2, msg.sender, arg1);
                        else:
                            require arg2
                            if arg2 * poolInfo[arg1].field_512 / arg2 != poolInfo[arg1].field_512:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg2 * poolInfo[arg1].field_512 / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                            if poolInfo[arg1].field_512:
                                require ext_code.size(poolInfo[arg1].field_0)
                                call poolInfo[arg1].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args poolInfo[arg1].field_512, arg2 * poolInfo[arg1].field_512 / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    if poolInfo[arg1].field_688:
                                        require ext_code.size(poolInfo[arg1].field_528)
                                        call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                             gas gas_remaining wei
                                            args poolInfo[arg1].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            if not poolInfo[arg1].field_1536:
                                if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require poolInfo[arg1].field_1536
                                if (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / poolInfo[arg1].field_1536 != arg2 - (arg2 * poolInfo[arg1].field_512 / 10000):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 650 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 + ((arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_256 += (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18
                            if poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 = poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 = userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                            emit Deposit((arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)), msg.sender, arg1);
                    else:
                        require poolInfo[arg1].field_1024
                        if (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_1024 != block.number - poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024):
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + (0 / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += 0 / poolInfo[arg1].field_768
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_1280 = block.number
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                                if poolInfo[arg1].field_512:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args poolInfo[arg1].field_512, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if poolInfo[arg1].field_688:
                                            require ext_code.size(poolInfo[arg1].field_528)
                                            call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                                 gas gas_remaining wei
                                                args poolInfo[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                if not poolInfo[arg1].field_1536:
                                    if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require poolInfo[arg1].field_1536
                                    if poolInfo[arg1].field_1536 * arg2 / poolInfo[arg1].field_1536 != arg2:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 650 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 + (poolInfo[arg1].field_1536 * arg2 / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_256 += poolInfo[arg1].field_1536 * arg2 / 10^18
                                if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += arg2
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * poolInfo[arg1].field_512 / arg2 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg2 * poolInfo[arg1].field_512 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[672 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                                if poolInfo[arg1].field_512:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args poolInfo[arg1].field_512, arg2 * poolInfo[arg1].field_512 / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if poolInfo[arg1].field_688:
                                            require ext_code.size(poolInfo[arg1].field_528)
                                            call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                                 gas gas_remaining wei
                                                args poolInfo[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                if not poolInfo[arg1].field_1536:
                                    if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require poolInfo[arg1].field_1536
                                    if (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / poolInfo[arg1].field_1536 != arg2 - (arg2 * poolInfo[arg1].field_512 / 10000):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 650 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 + ((arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_256 += (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18
                                if poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 = poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 = userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                                emit Deposit((arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)), msg.sender, arg1);
                        else:
                            require (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024)
                            if (10^18 * block.number * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / (block.number * poolInfo[arg1].field_1024) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if poolInfo[arg1].field_768 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_768
                            if poolInfo[arg1].field_1536 + ((10^18 * block.number * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768) < poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1536 += (10^18 * block.number * poolInfo[arg1].field_1024) - (10^18 * poolInfo[arg1].field_1280 * poolInfo[arg1].field_1024) / poolInfo[arg1].field_768
                            require arg1 < poolInfo.length
                            poolInfo[arg1].field_1280 = block.number
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                                if poolInfo[arg1].field_512:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args poolInfo[arg1].field_512, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if poolInfo[arg1].field_688:
                                            require ext_code.size(poolInfo[arg1].field_528)
                                            call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                                 gas gas_remaining wei
                                                args poolInfo[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                if not poolInfo[arg1].field_1536:
                                    if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require poolInfo[arg1].field_1536
                                    if poolInfo[arg1].field_1536 * arg2 / poolInfo[arg1].field_1536 != arg2:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 650 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 + (poolInfo[arg1].field_1536 * arg2 / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_256 += poolInfo[arg1].field_1536 * arg2 / 10^18
                                if poolInfo[arg1].field_768 + arg2 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += arg2
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 += arg2
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * poolInfo[arg1].field_512 / arg2 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg2 * poolInfo[arg1].field_512 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                                if poolInfo[arg1].field_512:
                                    require ext_code.size(poolInfo[arg1].field_0)
                                    call poolInfo[arg1].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args poolInfo[arg1].field_512, arg2 * poolInfo[arg1].field_512 / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if poolInfo[arg1].field_688:
                                            require ext_code.size(poolInfo[arg1].field_528)
                                            call poolInfo[arg1].field_528.updatePool(address rg1) with:
                                                 gas gas_remaining wei
                                                args poolInfo[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                if not poolInfo[arg1].field_1536:
                                    if userInfo[arg1][address(msg.sender)].field_256 < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require poolInfo[arg1].field_1536
                                    if (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / poolInfo[arg1].field_1536 != arg2 - (arg2 * poolInfo[arg1].field_512 / 10000):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 650 len 31]
                                    if userInfo[arg1][address(msg.sender)].field_256 + ((arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18) < userInfo[arg1][address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[arg1][address(msg.sender)].field_256 += (arg2 * poolInfo[arg1].field_1536) - (arg2 * poolInfo[arg1].field_512 / 10000 * poolInfo[arg1].field_1536) / 10^18
                                if poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 = poolInfo[arg1].field_768 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                                if userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000) < userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][address(msg.sender)].field_0 = userInfo[arg1][address(msg.sender)].field_0 + arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)
                                emit Deposit((arg2 - (arg2 * poolInfo[arg1].field_512 / 10000)), msg.sender, arg1);
    stor0 = 1
}



}
