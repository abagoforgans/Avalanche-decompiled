contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - set(uint256 arg1, uint256 arg2, uint16 arg3, uint16 arg4, bool arg5)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const BONUS_MULTIPLIER = 1

const BURN_ADDRESS = 57005


address owner;
address tokenAddress;
address devaddr;
array of uint256 sub_59e5e9ed;
array of uint256 sub_7f217380;
uint32 stor5;
address feeAddress;
uint256 stor5;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of address referrers;
mapping of uint256 referredCount;
mapping of uint8 stor12;

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
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           bool(poolInfo[arg1].field_1536)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function getToken() payable {
    return tokenAddress
}

function referredCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referredCount[arg1]
}

function feeAddress() payable {
    return address(feeAddress)
}

function startBlock() payable {
    return startBlock
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[arg1]
}

function sub_59e5e9ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_59e5e9ed.length
    return sub_59e5e9ed[arg1]
}

function getRefFriend(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[address(arg1)]
}

function sub_7f217380(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7f217380.length
    return sub_7f217380[arg1]
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function getStartBlock() payable {
    return startBlock
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function devaddr() payable {
    return devaddr
}

function token() payable {
    return tokenAddress
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function tokenPerBlock() payable {
    idx = 0
    while idx < sub_7f217380.length:
        mem[0] = 4
        if sub_7f217380[idx] <= block.number:
            idx = idx + 1
            continue 
        require idx < sub_59e5e9ed.length
        return sub_59e5e9ed[idx]
    if sub_59e5e9ed.length - 1 < sub_59e5e9ed.length:
        return sub_59e5e9ed[sub_59e5e9ed.length]
    revert
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(feeAddress) != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x77736574466565416464726573733a2043616e27742073657420666565206164647265737320746f20,
                    mem[205 len 23]
    address(feeAddress) = arg1
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

function burnFromPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    if bool(poolInfo[arg1].field_1536) != 1:
        revert with 0, 'Can't burn from non-burn pools'
    idx = 0
    while idx < sub_7f217380.length:
        mem[0] = 4
        if sub_7f217380[idx] <= block.number:
            idx = idx + 1
            continue 
        require idx < sub_59e5e9ed.length
        if sub_59e5e9ed[idx]:
            revert with 0, 'Can't burn before farm end'
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_0)
        call poolInfo[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
    if sub_59e5e9ed[sub_59e5e9ed.length]:
        revert with 0, 'Can't burn before farm end'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args 57005, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7377697468647261773a204275726e20706f6f6c732063616e27742077697468647261,
                    mem[199 len 29]
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if poolInfo[arg1].field_1040 <= 0:
        if 0 > userInfo[arg1][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][address(msg.sender)].field_0, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
    else:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0
            mem[388 len 0] = 0
            call poolInfo[arg1].field_0 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if 0 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 659 len 26]
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, msg.sender, userInfo[arg1][address(msg.sender)].field_32
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args userInfo[arg1][address(msg.sender)].field_0, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeBEP20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1040:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000) >> 32
            mem[388 len 0] = 0
            call poolInfo[arg1].field_0 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size <= 0:
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 659 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000)) >> 32
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeBEP20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 659 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000)) >> 32
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1040 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
}

function pendingtoken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    mem[0] = arg2
    mem[32] = sha3(arg1, 7)
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
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    mem[64] = 160
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        idx = 0
        while idx < sub_7f217380.length:
            mem[0] = 4
            if sub_7f217380[idx] <= block.number:
                idx = idx + 1
                continue 
            require idx < sub_59e5e9ed.length
            mem[192] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                mem[292] = mem[298 len 26]
                revert with 0, 32, 26, mem[292]
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                mem[256] = 'SafeMath: division by zero'
                if ext_call.return_data[0] <= 0:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[256] = 'SafeMath: division by zero'
                if ext_call.return_data[0] <= 0:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[420] = 32
            idx = 0
            while idx < 30:
                mem[idx + 484] = mem[idx + 384]
                idx = idx + 32
                continue 
            mem[484] = mem[486 len 30]
            revert with 0, 32, 30, mem[484]
        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    idx = 0
    while idx < sub_7f217380.length:
        mem[0] = 4
        if sub_7f217380[idx] <= block.number:
            idx = idx + 1
            continue 
        require idx < sub_59e5e9ed.length
        if not block.number - poolInfo[arg1].field_512:
            mem[192] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                mem[292] = mem[298 len 26]
                revert with 0, 32, 26, mem[292]
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                mem[256] = 'SafeMath: division by zero'
                if ext_call.return_data[0] <= 0:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[256] = 'SafeMath: division by zero'
                if ext_call.return_data[0] <= 0:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[362 len 26]
                    revert with 0, 32, 26, mem[356]
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= 0:
                        return -userInfo[arg1][address(arg2)].field_256
                else:
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[384] = 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        else:
            require block.number - poolInfo[arg1].field_512
            if (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]) / block.number - poolInfo[arg1].field_512 != sub_59e5e9ed[idx]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]):
                mem[192] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    mem[292] = mem[298 len 26]
                    revert with 0, 32, 26, mem[292]
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    mem[256] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] <= 0:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    mem[256] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] <= 0:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                require (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx])
                if (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]) != poolInfo[arg1].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                mem[192] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    mem[292] = mem[298 len 26]
                    revert with 0, 32, 26, mem[292]
                require totalAllocPoint
                if not (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint:
                    mem[256] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] <= 0:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    require (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint
                    if 10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    mem[256] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] <= 0:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[362 len 26]
                        revert with 0, 32, 26, mem[356]
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= 0:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        mem[384] = 'SafeMath: subtraction overflow'
                        if userInfo[arg1][address(arg2)].field_256 <= (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[420] = 32
        idx = 0
        while idx < 30:
            mem[idx + 484] = mem[idx + 384]
            idx = idx + 32
            continue 
        mem[484] = mem[486 len 30]
        revert with 0, 32, 30, mem[484]
    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[arg1].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    mem[0] = 6
    if block.number > poolInfo[arg1].field_512:
        mem[100] = this.address
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                idx = 0
                while idx < sub_7f217380.length:
                    mem[0] = 4
                    if sub_7f217380[idx] <= block.number:
                        idx = idx + 1
                        continue 
                    require idx < sub_59e5e9ed.length
                    mem[0] = 3
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > block.number:
                        mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[164] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + 228] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        mem[228] = mem[230 len 30]
                        revert with 0, 32, 30, mem[228]
                    if not block.number - poolInfo[arg1].field_512:
                        idx = 0
                        while idx < sub_7f217380.length:
                            mem[0] = 4
                            if sub_7f217380[idx] <= block.number:
                                idx = idx + 1
                                continue 
                            require idx < sub_59e5e9ed.length
                            mem[192] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 292] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[292] = mem[298 len 26]
                                revert with 0, 32, 26, mem[292]
                            require totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[356] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 420] = mem[idx + 320]
                                        idx = idx + 32
                                        continue 
                                    mem[420] = mem[426 len 26]
                                    revert with 0, 32, 26, mem[420]
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[356] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 420] = mem[idx + 320]
                                        idx = idx + 32
                                        continue 
                                    mem[420] = mem[426 len 26]
                                    revert with 0, 32, 26, mem[420]
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            idx = 0
                            while idx < sub_7f217380.length:
                                mem[0] = 4
                                if sub_7f217380[idx] <= block.number:
                                    idx = idx + 1
                                    continue 
                                require idx < sub_59e5e9ed.length
                                poolInfo[arg1].field_1280 = sub_59e5e9ed[idx]
                                poolInfo[arg1].field_512 = block.number
                            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                            poolInfo[arg1].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                            poolInfo[arg1].field_512 = block.number
                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                        mem[192] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + 292] = mem[idx + 192]
                                idx = idx + 32
                                continue 
                            mem[292] = mem[298 len 26]
                            revert with 0, 32, 26, mem[292]
                        require totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            mem[320] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] <= 0:
                                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[356] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 420] = mem[idx + 320]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[426 len 26]
                                revert with 0, 32, 26, mem[420]
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[320] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] <= 0:
                                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[356] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 420] = mem[idx + 320]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[426 len 26]
                                revert with 0, 32, 26, mem[420]
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        idx = 0
                        while idx < sub_7f217380.length:
                            mem[0] = 4
                            if sub_7f217380[idx] <= block.number:
                                idx = idx + 1
                                continue 
                            require idx < sub_59e5e9ed.length
                            if not block.number - poolInfo[arg1].field_512:
                                mem[192] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[228] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 292] = mem[idx + 192]
                                        idx = idx + 32
                                        continue 
                                    mem[292] = mem[298 len 26]
                                    revert with 0, 32, 26, mem[292]
                                require totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[arg1].field_512
                                if (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]) / block.number - poolInfo[arg1].field_512 != sub_59e5e9ed[idx]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]):
                                    mem[192] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[228] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 292] = mem[idx + 192]
                                            idx = idx + 32
                                            continue 
                                        mem[292] = mem[298 len 26]
                                        revert with 0, 32, 26, mem[292]
                                    require totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        mem[320] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[356] = 32
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + 420] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[426 len 26]
                                            revert with 0, 32, 26, mem[420]
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        mem[320] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[356] = 32
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + 420] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[426 len 26]
                                            revert with 0, 32, 26, mem[420]
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx])
                                    if (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]) != poolInfo[arg1].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    mem[192] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[228] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 292] = mem[idx + 192]
                                            idx = idx + 32
                                            continue 
                                        mem[292] = mem[298 len 26]
                                        revert with 0, 32, 26, mem[292]
                                    require totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint:
                                        mem[320] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[356] = 32
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + 420] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[426 len 26]
                                            revert with 0, 32, 26, mem[420]
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        mem[320] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[356] = 32
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + 420] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[426 len 26]
                                            revert with 0, 32, 26, mem[420]
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            idx = 0
                            while idx < sub_7f217380.length:
                                mem[0] = 4
                                if sub_7f217380[idx] <= block.number:
                                    idx = idx + 1
                                    continue 
                                require idx < sub_59e5e9ed.length
                                poolInfo[arg1].field_1280 = sub_59e5e9ed[idx]
                                poolInfo[arg1].field_512 = block.number
                            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                            poolInfo[arg1].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                            poolInfo[arg1].field_512 = block.number
                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                        if not block.number - poolInfo[arg1].field_512:
                            mem[192] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 292] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[292] = mem[298 len 26]
                                revert with 0, 32, 26, mem[292]
                            require totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[356] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 420] = mem[idx + 320]
                                        idx = idx + 32
                                        continue 
                                    mem[420] = mem[426 len 26]
                                    revert with 0, 32, 26, mem[420]
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[356] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 420] = mem[idx + 320]
                                        idx = idx + 32
                                        continue 
                                    mem[420] = mem[426 len 26]
                                    revert with 0, 32, 26, mem[420]
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[arg1].field_512
                            if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[arg1].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                mem[192] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[228] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 292] = mem[idx + 192]
                                        idx = idx + 32
                                        continue 
                                    mem[292] = mem[298 len 26]
                                    revert with 0, 32, 26, mem[292]
                                require totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                mem[192] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[228] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 292] = mem[idx + 192]
                                        idx = idx + 32
                                        continue 
                                    mem[292] = mem[298 len 26]
                                    revert with 0, 32, 26, mem[292]
                                require totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint:
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    idx = 0
                    while idx < sub_7f217380.length:
                        mem[0] = 4
                        if sub_7f217380[idx] <= block.number:
                            idx = idx + 1
                            continue 
                        require idx < sub_59e5e9ed.length
                        poolInfo[arg1].field_1280 = sub_59e5e9ed[idx]
                        poolInfo[arg1].field_512 = block.number
                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                    poolInfo[arg1].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                    poolInfo[arg1].field_512 = block.number
                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                mem[0] = 3
                mem[64] = 160
                mem[96] = 30
                mem[128] = 'SafeMath: subtraction overflow'
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    idx = 0
                    while idx < sub_7f217380.length:
                        mem[0] = 4
                        if sub_7f217380[idx] <= block.number:
                            idx = idx + 1
                            continue 
                        require idx < sub_59e5e9ed.length
                        mem[192] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + 292] = mem[idx + 192]
                                idx = idx + 32
                                continue 
                            mem[292] = mem[298 len 26]
                            revert with 0, 32, 26, mem[292]
                        require totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            mem[320] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] <= 0:
                                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[356] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 420] = mem[idx + 320]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[426 len 26]
                                revert with 0, 32, 26, mem[420]
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            mem[320] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] <= 0:
                                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[356] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 420] = mem[idx + 320]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[426 len 26]
                                revert with 0, 32, 26, mem[420]
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        idx = 0
                        while idx < sub_7f217380.length:
                            mem[0] = 4
                            if sub_7f217380[idx] <= block.number:
                                idx = idx + 1
                                continue 
                            require idx < sub_59e5e9ed.length
                            poolInfo[arg1].field_1280 = sub_59e5e9ed[idx]
                            poolInfo[arg1].field_512 = block.number
                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                        poolInfo[arg1].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                        poolInfo[arg1].field_512 = block.number
                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    idx = 0
                    while idx < sub_7f217380.length:
                        mem[0] = 4
                        if sub_7f217380[idx] <= block.number:
                            idx = idx + 1
                            continue 
                        require idx < sub_59e5e9ed.length
                        if not block.number - poolInfo[arg1].field_512:
                            mem[192] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + 292] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[292] = mem[298 len 26]
                                revert with 0, 32, 26, mem[292]
                            require totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[356] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 420] = mem[idx + 320]
                                        idx = idx + 32
                                        continue 
                                    mem[420] = mem[426 len 26]
                                    revert with 0, 32, 26, mem[420]
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                mem[320] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[356] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 420] = mem[idx + 320]
                                        idx = idx + 32
                                        continue 
                                    mem[420] = mem[426 len 26]
                                    revert with 0, 32, 26, mem[420]
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[arg1].field_512
                            if (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]) / block.number - poolInfo[arg1].field_512 != sub_59e5e9ed[idx]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]):
                                mem[192] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[228] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 292] = mem[idx + 192]
                                        idx = idx + 32
                                        continue 
                                    mem[292] = mem[298 len 26]
                                    revert with 0, 32, 26, mem[292]
                                require totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx])
                                if (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / (block.number * sub_59e5e9ed[idx]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx]) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                mem[192] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[228] = 32
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + 292] = mem[idx + 192]
                                        idx = idx + 32
                                        continue 
                                    mem[292] = mem[298 len 26]
                                    revert with 0, 32, 26, mem[292]
                                require totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint:
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    mem[320] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[356] = 32
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + 420] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[426 len 26]
                                        revert with 0, 32, 26, mem[420]
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[idx] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        idx = 0
                        while idx < sub_7f217380.length:
                            mem[0] = 4
                            if sub_7f217380[idx] <= block.number:
                                idx = idx + 1
                                continue 
                            require idx < sub_59e5e9ed.length
                            poolInfo[arg1].field_1280 = sub_59e5e9ed[idx]
                            poolInfo[arg1].field_512 = block.number
                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                        poolInfo[arg1].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                        poolInfo[arg1].field_512 = block.number
                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[arg1].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                            if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                idx = 0
                while idx < sub_7f217380.length:
                    mem[0] = 4
                    if sub_7f217380[idx] <= block.number:
                        idx = idx + 1
                        continue 
                    require idx < sub_59e5e9ed.length
                    poolInfo[arg1].field_1280 = sub_59e5e9ed[idx]
                    poolInfo[arg1].field_512 = block.number
                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                poolInfo[arg1].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    s = 0
                    while s < sub_7f217380.length:
                        mem[0] = 4
                        if sub_7f217380[s] <= block.number:
                            s = s + 1
                            continue 
                        require s < sub_59e5e9ed.length
                        mem[0] = 3
                        if poolInfo[idx].field_1280 <= sub_59e5e9ed[s]:
                            _2841 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2841] = 30
                            mem[_2841 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _2847 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2847 + idx + 68] = mem[_2841 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2847 + 68] = mem[_2847 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2847 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    _4342 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4342] = 26
                                    mem[_4342 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4396 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4396 + idx + 68] = mem[_4342 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4396 + 68] = mem[_4396 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4396 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4539 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4539] = 26
                                    mem[_4539 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4812 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4812] = 26
                                        mem[_4812 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4903 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4903 + idx + 68] = mem[_4812 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4903 + 68] = mem[_4903 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4903 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4902 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4902] = 26
                                        mem[_4902 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5023 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5023 + idx + 68] = mem[_4902 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5023 + 68] = mem[_5023 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5023 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                _4305 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4305] = 26
                                mem[_4305 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4339 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4339 + idx + 68] = mem[_4305 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4339 + 68] = mem[_4339 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4339 + -mem[64] + 100
                                require totalAllocPoint
                                _4467 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4467] = 26
                                mem[_4467 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4753 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4753] = 26
                                    mem[_4753 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4809 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4809 + idx + 68] = mem[_4753 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4809 + 68] = mem[_4809 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4809 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4808 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4808] = 26
                                    mem[_4808 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4898 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4898 + idx + 68] = mem[_4808 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4898 + 68] = mem[_4898 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4898 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    if not block.number - poolInfo[idx].field_512:
                                        _4338 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4338] = 26
                                        mem[_4338 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4392 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4392 + idx + 68] = mem[_4338 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4392 + 68] = mem[_4392 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4392 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4537 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4537] = 26
                                        mem[_4537 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4807 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4807] = 26
                                            mem[_4807 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _4895 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4895 + idx + 68] = mem[_4807 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4895 + 68] = mem[_4895 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4895 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4894 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4894] = 26
                                            mem[_4894 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5017 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5017 + idx + 68] = mem[_4894 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5017 + 68] = mem[_5017 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5017 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                            _4391 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4391] = 26
                                            mem[_4391 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4463 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4463 + idx + 68] = mem[_4391 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4463 + 68] = mem[_4463 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4463 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4581 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4581] = 26
                                            mem[_4581 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _4893 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4893] = 26
                                                mem[_4893 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5014 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5014 + idx + 68] = mem[_4893 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5014 + 68] = mem[_5014 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5014 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5013 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5013] = 26
                                                mem[_5013 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5159 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5159 + idx + 68] = mem[_5013 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5159 + 68] = mem[_5159 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5159 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                            if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4462 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4462] = 26
                                            mem[_4462 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4533 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4533 + idx + 68] = mem[_4462 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4533 + 68] = mem[_4533 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4533 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4616 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4616] = 26
                                            mem[_4616 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                                _5012 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5012] = 26
                                                mem[_5012 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5156 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5156 + idx + 68] = mem[_5012 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5156 + 68] = mem[_5156 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5156 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5155 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5155] = 26
                                                mem[_5155 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5293 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5293 + idx + 68] = mem[_5155 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5293 + 68] = mem[_5293 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5293 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                if not block.number - poolInfo[idx].field_512:
                                    _4304 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4304] = 26
                                    mem[_4304 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4335 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4335 + idx + 68] = mem[_4304 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4335 + 68] = mem[_4335 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4335 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4460 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4460] = 26
                                    mem[_4460 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4752 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4752] = 26
                                        mem[_4752 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4804 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4804 + idx + 68] = mem[_4752 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4804 + 68] = mem[_4804 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4804 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4803 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4803] = 26
                                        mem[_4803 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4889 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4889 + idx + 68] = mem[_4803 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4889 + 68] = mem[_4889 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4889 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                        _4334 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4334] = 26
                                        mem[_4334 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4387 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4387 + idx + 68] = mem[_4334 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4387 + 68] = mem[_4387 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4387 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4531 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4531] = 26
                                        mem[_4531 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4802 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4802] = 26
                                            mem[_4802 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _4886 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4886 + idx + 68] = mem[_4802 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4886 + 68] = mem[_4886 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4886 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4885 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4885] = 26
                                            mem[_4885 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5006 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5006 + idx + 68] = mem[_4885 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5006 + 68] = mem[_5006 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5006 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                        if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4386 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4386] = 26
                                        mem[_4386 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4456 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4456 + idx + 68] = mem[_4386 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4456 + 68] = mem[_4456 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4456 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4578 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4578] = 26
                                        mem[_4578 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                            _4884 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4884] = 26
                                            mem[_4884 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5003 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5003 + idx + 68] = mem[_4884 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5003 + 68] = mem[_5003 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5003 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5002 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5002] = 26
                                            mem[_5002 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5148 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5148 + idx + 68] = mem[_5002 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5148 + 68] = mem[_5148 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5148 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            _2845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2845] = 30
                            mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _2853 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2853 + idx + 68] = mem[_2845 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2853 + 68] = mem[_2853 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2853 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    _4351 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4351] = 26
                                    mem[_4351 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4409 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4409 + idx + 68] = mem[_4351 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4409 + 68] = mem[_4409 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4409 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4550 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4550] = 26
                                    mem[_4550 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4823 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4823] = 26
                                        mem[_4823 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4925 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4925 + idx + 68] = mem[_4823 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4925 + 68] = mem[_4925 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4925 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4924 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4924] = 26
                                        mem[_4924 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5048 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5048 + idx + 68] = mem[_4924 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5048 + 68] = mem[_5048 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5048 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                _4307 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4307] = 26
                                mem[_4307 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4348 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4348 + idx + 68] = mem[_4307 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4348 + 68] = mem[_4348 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4348 + -mem[64] + 100
                                require totalAllocPoint
                                _4481 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4481] = 26
                                mem[_4481 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4755 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4755] = 26
                                    mem[_4755 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4820 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4820 + idx + 68] = mem[_4755 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4820 + 68] = mem[_4820 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4820 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4819 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4819] = 26
                                    mem[_4819 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4920 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4920 + idx + 68] = mem[_4819 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4920 + 68] = mem[_4920 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4920 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    if not block.number - poolInfo[idx].field_512:
                                        _4347 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4347] = 26
                                        mem[_4347 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4405 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4405 + idx + 68] = mem[_4347 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4405 + 68] = mem[_4405 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4405 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4548 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4548] = 26
                                        mem[_4548 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4818 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4818] = 26
                                            mem[_4818 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _4917 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4917 + idx + 68] = mem[_4818 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4917 + 68] = mem[_4917 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4917 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4916 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4916] = 26
                                            mem[_4916 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5042 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5042 + idx + 68] = mem[_4916 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5042 + 68] = mem[_5042 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5042 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                            _4404 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4404] = 26
                                            mem[_4404 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4477 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4477 + idx + 68] = mem[_4404 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4477 + 68] = mem[_4477 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4477 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4586 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4586] = 26
                                            mem[_4586 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _4915 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4915] = 26
                                                mem[_4915 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5039 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5039 + idx + 68] = mem[_4915 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5039 + 68] = mem[_5039 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5039 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5038 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5038] = 26
                                                mem[_5038 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5179 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5179 + idx + 68] = mem[_5038 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5179 + 68] = mem[_5179 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5179 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                            if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4476 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4476] = 26
                                            mem[_4476 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4544 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4544 + idx + 68] = mem[_4476 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4544 + 68] = mem[_4544 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4544 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4618 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4618] = 26
                                            mem[_4618 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                                _5037 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5037] = 26
                                                mem[_5037 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5176 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5176 + idx + 68] = mem[_5037 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5176 + 68] = mem[_5176 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5176 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5175 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5175] = 26
                                                mem[_5175 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5304 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5304 + idx + 68] = mem[_5175 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5304 + 68] = mem[_5304 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5304 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                if not block.number - poolInfo[idx].field_512:
                                    _4306 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4306] = 26
                                    mem[_4306 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4344 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4344 + idx + 68] = mem[_4306 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4344 + 68] = mem[_4344 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4344 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4474 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4474] = 26
                                    mem[_4474 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4754 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4754] = 26
                                        mem[_4754 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4815 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4815 + idx + 68] = mem[_4754 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4815 + 68] = mem[_4815 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4815 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4814 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4814] = 26
                                        mem[_4814 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4911 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4911 + idx + 68] = mem[_4814 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4911 + 68] = mem[_4911 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4911 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                        _4343 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4343] = 26
                                        mem[_4343 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4400 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4400 + idx + 68] = mem[_4343 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4400 + 68] = mem[_4400 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4400 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4542 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4542] = 26
                                        mem[_4542 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4813 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4813] = 26
                                            mem[_4813 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _4908 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4908 + idx + 68] = mem[_4813 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4908 + 68] = mem[_4908 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4908 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4907 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4907] = 26
                                            mem[_4907 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5031 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5031 + idx + 68] = mem[_4907 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5031 + 68] = mem[_5031 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5031 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                        if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4399 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4399] = 26
                                        mem[_4399 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4470 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4470 + idx + 68] = mem[_4399 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4470 + 68] = mem[_4470 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4470 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4583 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4583] = 26
                                        mem[_4583 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                            _4906 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4906] = 26
                                            mem[_4906 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5028 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5028 + idx + 68] = mem[_4906 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5028 + 68] = mem[_5028 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5028 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5027 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5027] = 26
                                            mem[_5027 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5168 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5168 + idx + 68] = mem[_5027 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5168 + 68] = mem[_5168 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5168 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        s = 0
                        while s < sub_7f217380.length:
                            mem[0] = 4
                            if sub_7f217380[s] <= block.number:
                                s = s + 1
                                continue 
                            require s < sub_59e5e9ed.length
                            mem[0] = 3
                            poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                        mem[0] = 3
                        poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                    mem[0] = 3
                    if poolInfo[idx].field_1280 <= sub_59e5e9ed[sub_59e5e9ed.length]:
                        _2836 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2836] = 30
                        mem[_2836 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            _2838 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2838 + idx + 68] = mem[_2836 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2838 + 68] = mem[_2838 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2838 + -mem[64] + 100
                        if not block.number - poolInfo[idx].field_512:
                            s = 0
                            while s < sub_7f217380.length:
                                mem[0] = 4
                                if sub_7f217380[s] <= block.number:
                                    s = s + 1
                                    continue 
                                require s < sub_59e5e9ed.length
                                mem[0] = 3
                                _4324 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4324] = 26
                                mem[_4324 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4370 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4370 + idx + 68] = mem[_4324 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4370 + 68] = mem[_4370 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4370 + -mem[64] + 100
                                require totalAllocPoint
                                _4517 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4517] = 26
                                mem[_4517 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4790] = 26
                                    mem[_4790 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4859 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4859 + idx + 68] = mem[_4790 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4859 + 68] = mem[_4859 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4859 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4858 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4858] = 26
                                    mem[_4858 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4973 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4973 + idx + 68] = mem[_4858 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4973 + 68] = mem[_4973 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4973 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                            mem[0] = 3
                            _4301 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4301] = 26
                            mem[_4301 + 32] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                _4321 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_4321 + idx + 68] = mem[_4301 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4321 + 68] = mem[_4321 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4321 + -mem[64] + 100
                            require totalAllocPoint
                            _4439 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4439] = 26
                            mem[_4439 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _4749 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4749] = 26
                                mem[_4749 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _4787 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4787 + idx + 68] = mem[_4749 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4787 + 68] = mem[_4787 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4787 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4786 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4786] = 26
                                mem[_4786 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _4854 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4854 + idx + 68] = mem[_4786 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4854 + 68] = mem[_4854 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4854 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            s = 0
                            while s < sub_7f217380.length:
                                mem[0] = 4
                                if sub_7f217380[s] <= block.number:
                                    s = s + 1
                                    continue 
                                require s < sub_59e5e9ed.length
                                mem[0] = 3
                                if not block.number - poolInfo[idx].field_512:
                                    _4320 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4320] = 26
                                    mem[_4320 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4366 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4366 + idx + 68] = mem[_4320 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4366 + 68] = mem[_4366 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4366 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4515 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4515] = 26
                                    mem[_4515 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4785 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4785] = 26
                                        mem[_4785 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4851 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4851 + idx + 68] = mem[_4785 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4851 + 68] = mem[_4851 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4851 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4850 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4850] = 26
                                        mem[_4850 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4967 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4967 + idx + 68] = mem[_4850 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4967 + 68] = mem[_4967 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4967 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                        _4365 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4365] = 26
                                        mem[_4365 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4435 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4435 + idx + 68] = mem[_4365 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4435 + 68] = mem[_4435 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4435 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4571 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4571] = 26
                                        mem[_4571 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4849 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4849] = 26
                                            mem[_4849 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _4964 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4964 + idx + 68] = mem[_4849 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4964 + 68] = mem[_4964 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4964 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4963 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4963] = 26
                                            mem[_4963 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5119 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5119 + idx + 68] = mem[_4963 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5119 + 68] = mem[_5119 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5119 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                        if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4434 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4434] = 26
                                        mem[_4434 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4511 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4511 + idx + 68] = mem[_4434 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4511 + 68] = mem[_4511 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4511 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4612 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4612] = 26
                                        mem[_4612 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                            _4962 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4962] = 26
                                            mem[_4962 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5116 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5116 + idx + 68] = mem[_4962 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5116 + 68] = mem[_5116 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5116 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5115 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5115] = 26
                                            mem[_5115 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5271 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5271 + idx + 68] = mem[_5115 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5271 + 68] = mem[_5271 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5271 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                            mem[0] = 3
                            if not block.number - poolInfo[idx].field_512:
                                _4300 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4300] = 26
                                mem[_4300 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4317 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4317 + idx + 68] = mem[_4300 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4317 + 68] = mem[_4317 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4317 + -mem[64] + 100
                                require totalAllocPoint
                                _4432 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4432] = 26
                                mem[_4432 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4748 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4748] = 26
                                    mem[_4748 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4782 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4782 + idx + 68] = mem[_4748 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4782 + 68] = mem[_4782 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4782 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4781 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4781] = 26
                                    mem[_4781 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4845 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4845 + idx + 68] = mem[_4781 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4845 + 68] = mem[_4845 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4845 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                    _4316 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4316] = 26
                                    mem[_4316 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4361 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4361 + idx + 68] = mem[_4316 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4361 + 68] = mem[_4361 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4361 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4509 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4509] = 26
                                    mem[_4509 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4780 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4780] = 26
                                        mem[_4780 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4842 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4842 + idx + 68] = mem[_4780 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4842 + 68] = mem[_4842 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4842 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4841 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4841] = 26
                                        mem[_4841 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4956 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4956 + idx + 68] = mem[_4841 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4956 + 68] = mem[_4956 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4956 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4360 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4360] = 26
                                    mem[_4360 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4428 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4428 + idx + 68] = mem[_4360 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4428 + 68] = mem[_4428 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4428 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4568 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4568] = 26
                                    mem[_4568 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                        _4840 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4840] = 26
                                        mem[_4840 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4953 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4953 + idx + 68] = mem[_4840 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4953 + 68] = mem[_4953 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4953 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4952 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4952] = 26
                                        mem[_4952 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5108 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5108 + idx + 68] = mem[_4952 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5108 + 68] = mem[_5108 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5108 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        _2837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2837] = 30
                        mem[_2837 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            _2842 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2842 + idx + 68] = mem[_2837 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2842 + 68] = mem[_2842 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2842 + -mem[64] + 100
                        if not block.number - poolInfo[idx].field_512:
                            s = 0
                            while s < sub_7f217380.length:
                                mem[0] = 4
                                if sub_7f217380[s] <= block.number:
                                    s = s + 1
                                    continue 
                                require s < sub_59e5e9ed.length
                                mem[0] = 3
                                _4333 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4333] = 26
                                mem[_4333 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4383 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4383 + idx + 68] = mem[_4333 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4383 + 68] = mem[_4383 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4383 + -mem[64] + 100
                                require totalAllocPoint
                                _4528 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4528] = 26
                                mem[_4528 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4801 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4801] = 26
                                    mem[_4801 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4881 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4881 + idx + 68] = mem[_4801 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4881 + 68] = mem[_4881 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4881 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4880 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4880] = 26
                                    mem[_4880 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4998 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4998 + idx + 68] = mem[_4880 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4998 + 68] = mem[_4998 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4998 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                            mem[0] = 3
                            _4303 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4303] = 26
                            mem[_4303 + 32] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                _4330 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_4330 + idx + 68] = mem[_4303 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4330 + 68] = mem[_4330 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _4330 + -mem[64] + 100
                            require totalAllocPoint
                            _4453 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4453] = 26
                            mem[_4453 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _4751 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4751] = 26
                                mem[_4751 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _4798 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4798 + idx + 68] = mem[_4751 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4798 + 68] = mem[_4798 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4798 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4797 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4797] = 26
                                mem[_4797 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] <= 0:
                                    _4876 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4876 + idx + 68] = mem[_4797 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4876 + 68] = mem[_4876 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4876 + -mem[64] + 100
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            s = 0
                            while s < sub_7f217380.length:
                                mem[0] = 4
                                if sub_7f217380[s] <= block.number:
                                    s = s + 1
                                    continue 
                                require s < sub_59e5e9ed.length
                                mem[0] = 3
                                if not block.number - poolInfo[idx].field_512:
                                    _4329 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4329] = 26
                                    mem[_4329 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4379 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4379 + idx + 68] = mem[_4329 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4379 + 68] = mem[_4379 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4379 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4526 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4526] = 26
                                    mem[_4526 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4796 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4796] = 26
                                        mem[_4796 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4873 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4873 + idx + 68] = mem[_4796 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4873 + 68] = mem[_4873 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4873 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4872 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4872] = 26
                                        mem[_4872 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4992 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4992 + idx + 68] = mem[_4872 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4992 + 68] = mem[_4992 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4992 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                        _4378 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4378] = 26
                                        mem[_4378 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4449 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4449 + idx + 68] = mem[_4378 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4449 + 68] = mem[_4449 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4449 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4576 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4576] = 26
                                        mem[_4576 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4871 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4871] = 26
                                            mem[_4871 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _4989 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4989 + idx + 68] = mem[_4871 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4989 + 68] = mem[_4989 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4989 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4988 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4988] = 26
                                            mem[_4988 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5139 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5139 + idx + 68] = mem[_4988 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5139 + 68] = mem[_5139 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5139 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                        if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4448 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4448] = 26
                                        mem[_4448 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4522 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4522 + idx + 68] = mem[_4448 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4522 + 68] = mem[_4522 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4522 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4614 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4614] = 26
                                        mem[_4614 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                            _4987 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4987] = 26
                                            mem[_4987 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5136 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5136 + idx + 68] = mem[_4987 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5136 + 68] = mem[_5136 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5136 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5135 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5135] = 26
                                            mem[_5135 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5282 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5282 + idx + 68] = mem[_5135 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5282 + 68] = mem[_5282 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5282 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                            mem[0] = 3
                            if not block.number - poolInfo[idx].field_512:
                                _4302 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4302] = 26
                                mem[_4302 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4326 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4326 + idx + 68] = mem[_4302 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4326 + 68] = mem[_4326 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4326 + -mem[64] + 100
                                require totalAllocPoint
                                _4446 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4446] = 26
                                mem[_4446 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4750 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4750] = 26
                                    mem[_4750 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4793 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4793 + idx + 68] = mem[_4750 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4793 + 68] = mem[_4793 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4793 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4792 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4792] = 26
                                    mem[_4792 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _4867 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4867 + idx + 68] = mem[_4792 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4867 + 68] = mem[_4867 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4867 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                    _4325 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4325] = 26
                                    mem[_4325 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4374 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4374 + idx + 68] = mem[_4325 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4374 + 68] = mem[_4374 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4374 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4520 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4520] = 26
                                    mem[_4520 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4791 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4791] = 26
                                        mem[_4791 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4864 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4864 + idx + 68] = mem[_4791 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4864 + 68] = mem[_4864 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4864 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4863 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4863] = 26
                                        mem[_4863 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4981 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4981 + idx + 68] = mem[_4863 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4981 + 68] = mem[_4981 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4981 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4373 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4373] = 26
                                    mem[_4373 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4442 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4442 + idx + 68] = mem[_4373 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4442 + 68] = mem[_4442 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4442 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4573 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4573] = 26
                                    mem[_4573 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                        _4862 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4862] = 26
                                        mem[_4862 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _4978 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4978 + idx + 68] = mem[_4862 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4978 + 68] = mem[_4978 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4978 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4977 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4977] = 26
                                        mem[_4977 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5128 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5128 + idx + 68] = mem[_4977 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5128 + 68] = mem[_5128 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5128 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    s = 0
                    while s < sub_7f217380.length:
                        mem[0] = 4
                        if sub_7f217380[s] <= block.number:
                            s = s + 1
                            continue 
                        require s < sub_59e5e9ed.length
                        mem[0] = 3
                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                    mem[0] = 3
                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function sub_d4f5063b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 12
    if stor12[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 350:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 350:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c6164643a20696e76616c69642077697468647261772066656520626173697320706f696e74,
                    mem[202 len 26]
    if not arg6:
        if totalAllocPoint + arg1 < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        stor12[address(arg2)] = 1
        if block.number > startBlock:
            idx = 0
            while idx < sub_7f217380.length:
                mem[0] = 4
                if sub_7f217380[idx] <= block.number:
                    idx = idx + 1
                    continue 
                require idx < sub_59e5e9ed.length
                poolInfo.length++
                poolInfo[poolInfo.length].field_0 = uint64(arg2) << 96
                poolInfo[poolInfo.length].field_256 = arg1
                poolInfo[poolInfo.length].field_512 = block.number
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                poolInfo[poolInfo.length].field_1040 = arg4
                poolInfo[poolInfo.length].field_1280 = sub_59e5e9ed[idx]
                poolInfo[poolInfo.length].field_1536 = uint8(arg5)
            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
            poolInfo.length++
            poolInfo[poolInfo.length].field_0 = uint64(arg2) << 96
            poolInfo[poolInfo.length].field_256 = arg1
            poolInfo[poolInfo.length].field_512 = block.number
        else:
            idx = 0
            while idx < sub_7f217380.length:
                mem[0] = 4
                if sub_7f217380[idx] <= block.number:
                    idx = idx + 1
                    continue 
                require idx < sub_59e5e9ed.length
                poolInfo.length++
                poolInfo[poolInfo.length].field_0 = uint64(arg2) << 96
                poolInfo[poolInfo.length].field_256 = arg1
                poolInfo[poolInfo.length].field_512 = startBlock
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                poolInfo[poolInfo.length].field_1040 = arg4
                poolInfo[poolInfo.length].field_1280 = sub_59e5e9ed[idx]
                poolInfo[poolInfo.length].field_1536 = uint8(arg5)
            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
            poolInfo.length++
            poolInfo[poolInfo.length].field_0 = uint64(arg2) << 96
            poolInfo[poolInfo.length].field_256 = arg1
            poolInfo[poolInfo.length].field_512 = startBlock
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        s = 0
                        while s < sub_7f217380.length:
                            mem[0] = 4
                            if sub_7f217380[s] <= block.number:
                                s = s + 1
                                continue 
                            require s < sub_59e5e9ed.length
                            mem[0] = 3
                            if poolInfo[idx].field_1280 <= sub_59e5e9ed[s]:
                                _3084 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3084] = 30
                                mem[_3084 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > block.number:
                                    _3090 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3090 + idx + 68] = mem[_3084 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3090 + 68] = mem[_3090 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3090 + -mem[64] + 100
                                if not block.number - poolInfo[idx].field_512:
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        _4585 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4585] = 26
                                        mem[_4585 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4639 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4639 + idx + 68] = mem[_4585 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4639 + 68] = mem[_4639 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4639 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4782 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4782] = 26
                                        mem[_4782 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _5055 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5055] = 26
                                            mem[_5055 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5146 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5146 + idx + 68] = mem[_5055 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5146 + 68] = mem[_5146 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5146 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5145 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5145] = 26
                                            mem[_5145 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5266 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5266 + idx + 68] = mem[_5145 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5266 + 68] = mem[_5266 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5266 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        s = 0
                                        while s < sub_7f217380.length:
                                            mem[0] = 4
                                            if sub_7f217380[s] <= block.number:
                                                s = s + 1
                                                continue 
                                            require s < sub_59e5e9ed.length
                                            mem[0] = 3
                                            poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    _4548 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4548] = 26
                                    mem[_4548 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4582 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4582 + idx + 68] = mem[_4548 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4582 + 68] = mem[_4582 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4582 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4710 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4710] = 26
                                    mem[_4710 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4996 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4996] = 26
                                        mem[_4996 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5052 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5052 + idx + 68] = mem[_4996 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5052 + 68] = mem[_5052 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5052 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5051 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5051] = 26
                                        mem[_5051 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5141 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5141 + idx + 68] = mem[_5051 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5141 + 68] = mem[_5141 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5141 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        if not block.number - poolInfo[idx].field_512:
                                            _4581 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4581] = 26
                                            mem[_4581 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4635 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4635 + idx + 68] = mem[_4581 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4635 + 68] = mem[_4635 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4635 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4780 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4780] = 26
                                            mem[_4780 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _5050 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5050] = 26
                                                mem[_5050 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5138 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5138 + idx + 68] = mem[_5050 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5138 + 68] = mem[_5138 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5138 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5137 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5137] = 26
                                                mem[_5137 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5260 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5260 + idx + 68] = mem[_5137 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5260 + 68] = mem[_5260 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5260 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require block.number - poolInfo[idx].field_512
                                            if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                                _4634 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4634] = 26
                                                mem[_4634 + 32] = 'SafeMath: division by zero'
                                                if totalAllocPoint <= 0:
                                                    _4706 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_4706 + idx + 68] = mem[_4634 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_4706 + 68] = mem[_4706 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _4706 + -mem[64] + 100
                                                require totalAllocPoint
                                                _4824 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4824] = 26
                                                mem[_4824 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _5136 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5136] = 26
                                                    mem[_5136 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5257 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5257 + idx + 68] = mem[_5136 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5257 + 68] = mem[_5257 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5257 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _5256 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5256] = 26
                                                    mem[_5256 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5402 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5402 + idx + 68] = mem[_5256 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5402 + 68] = mem[_5402 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5402 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                                if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4705 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4705] = 26
                                                mem[_4705 + 32] = 'SafeMath: division by zero'
                                                if totalAllocPoint <= 0:
                                                    _4776 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_4776 + idx + 68] = mem[_4705 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_4776 + 68] = mem[_4776 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _4776 + -mem[64] + 100
                                                require totalAllocPoint
                                                _4859 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4859] = 26
                                                mem[_4859 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    _5255 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5255] = 26
                                                    mem[_5255 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5399 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5399 + idx + 68] = mem[_5255 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5399 + 68] = mem[_5399 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5399 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _5398 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5398] = 26
                                                    mem[_5398 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5536 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5536 + idx + 68] = mem[_5398 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5536 + 68] = mem[_5536 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5536 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        s = 0
                                        while s < sub_7f217380.length:
                                            mem[0] = 4
                                            if sub_7f217380[s] <= block.number:
                                                s = s + 1
                                                continue 
                                            require s < sub_59e5e9ed.length
                                            mem[0] = 3
                                            poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    if not block.number - poolInfo[idx].field_512:
                                        _4547 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4547] = 26
                                        mem[_4547 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4578 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4578 + idx + 68] = mem[_4547 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4578 + 68] = mem[_4578 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4578 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4703 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4703] = 26
                                        mem[_4703 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4995 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4995] = 26
                                            mem[_4995 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5047 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5047 + idx + 68] = mem[_4995 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5047 + 68] = mem[_5047 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5047 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5046 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5046] = 26
                                            mem[_5046 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5132 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5132 + idx + 68] = mem[_5046 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5132 + 68] = mem[_5132 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5132 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                            _4577 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4577] = 26
                                            mem[_4577 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4630 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4630 + idx + 68] = mem[_4577 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4630 + 68] = mem[_4630 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4630 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4774 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4774] = 26
                                            mem[_4774 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _5045 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5045] = 26
                                                mem[_5045 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5129 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5129 + idx + 68] = mem[_5045 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5129 + 68] = mem[_5129 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5129 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5128 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5128] = 26
                                                mem[_5128 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5249 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5249 + idx + 68] = mem[_5128 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5249 + 68] = mem[_5249 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5249 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                            if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4629 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4629] = 26
                                            mem[_4629 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4699 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4699 + idx + 68] = mem[_4629 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4699 + 68] = mem[_4699 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4699 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4821 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4821] = 26
                                            mem[_4821 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                                _5127 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5127] = 26
                                                mem[_5127 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5246 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5246 + idx + 68] = mem[_5127 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5246 + 68] = mem[_5246 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5246 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5245 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5245] = 26
                                                mem[_5245 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5391 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5391 + idx + 68] = mem[_5245 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5391 + 68] = mem[_5391 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5391 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                _3088 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3088] = 30
                                mem[_3088 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > block.number:
                                    _3096 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3096 + idx + 68] = mem[_3088 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3096 + 68] = mem[_3096 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3096 + -mem[64] + 100
                                if not block.number - poolInfo[idx].field_512:
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        _4594 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4594] = 26
                                        mem[_4594 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4652 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4652 + idx + 68] = mem[_4594 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4652 + 68] = mem[_4652 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4652 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4793 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4793] = 26
                                        mem[_4793 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _5066 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5066] = 26
                                            mem[_5066 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5168 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5168 + idx + 68] = mem[_5066 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5168 + 68] = mem[_5168 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5168 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5167 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5167] = 26
                                            mem[_5167 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5291 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5291 + idx + 68] = mem[_5167 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5291 + 68] = mem[_5291 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5291 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        s = 0
                                        while s < sub_7f217380.length:
                                            mem[0] = 4
                                            if sub_7f217380[s] <= block.number:
                                                s = s + 1
                                                continue 
                                            require s < sub_59e5e9ed.length
                                            mem[0] = 3
                                            poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    _4550 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4550] = 26
                                    mem[_4550 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4591 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4591 + idx + 68] = mem[_4550 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4591 + 68] = mem[_4591 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4591 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4724 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4724] = 26
                                    mem[_4724 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4998 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4998] = 26
                                        mem[_4998 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5063 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5063 + idx + 68] = mem[_4998 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5063 + 68] = mem[_5063 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5063 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5062 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5062] = 26
                                        mem[_5062 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5163 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5163 + idx + 68] = mem[_5062 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5163 + 68] = mem[_5163 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5163 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        if not block.number - poolInfo[idx].field_512:
                                            _4590 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4590] = 26
                                            mem[_4590 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4648 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4648 + idx + 68] = mem[_4590 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4648 + 68] = mem[_4648 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4648 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4791 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4791] = 26
                                            mem[_4791 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _5061 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5061] = 26
                                                mem[_5061 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5160 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5160 + idx + 68] = mem[_5061 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5160 + 68] = mem[_5160 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5160 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5159 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5159] = 26
                                                mem[_5159 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5285 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5285 + idx + 68] = mem[_5159 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5285 + 68] = mem[_5285 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5285 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require block.number - poolInfo[idx].field_512
                                            if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                                _4647 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4647] = 26
                                                mem[_4647 + 32] = 'SafeMath: division by zero'
                                                if totalAllocPoint <= 0:
                                                    _4720 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_4720 + idx + 68] = mem[_4647 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_4720 + 68] = mem[_4720 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _4720 + -mem[64] + 100
                                                require totalAllocPoint
                                                _4829 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4829] = 26
                                                mem[_4829 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    _5158 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5158] = 26
                                                    mem[_5158 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5282 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5282 + idx + 68] = mem[_5158 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5282 + 68] = mem[_5282 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5282 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _5281 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5281] = 26
                                                    mem[_5281 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5422 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5422 + idx + 68] = mem[_5281 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5422 + 68] = mem[_5422 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5422 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                                if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4719 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4719] = 26
                                                mem[_4719 + 32] = 'SafeMath: division by zero'
                                                if totalAllocPoint <= 0:
                                                    _4787 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_4787 + idx + 68] = mem[_4719 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_4787 + 68] = mem[_4787 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _4787 + -mem[64] + 100
                                                require totalAllocPoint
                                                _4861 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4861] = 26
                                                mem[_4861 + 32] = 'SafeMath: division by zero'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    _5280 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5280] = 26
                                                    mem[_5280 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5419 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5419 + idx + 68] = mem[_5280 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5419 + 68] = mem[_5419 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5419 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _5418 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5418] = 26
                                                    mem[_5418 + 32] = 'SafeMath: division by zero'
                                                    if ext_call.return_data[0] <= 0:
                                                        _5547 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        idx = 0
                                                        while idx < 26:
                                                            mem[_5547 + idx + 68] = mem[_5418 + idx + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        mem[_5547 + 68] = mem[_5547 + 74 len 26]
                                                        revert with memory
                                                          from mem[64]
                                                           len _5547 + -mem[64] + 100
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        s = 0
                                        while s < sub_7f217380.length:
                                            mem[0] = 4
                                            if sub_7f217380[s] <= block.number:
                                                s = s + 1
                                                continue 
                                            require s < sub_59e5e9ed.length
                                            mem[0] = 3
                                            poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    if not block.number - poolInfo[idx].field_512:
                                        _4549 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4549] = 26
                                        mem[_4549 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4587 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4587 + idx + 68] = mem[_4549 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4587 + 68] = mem[_4587 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4587 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4717 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4717] = 26
                                        mem[_4717 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _4997 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4997] = 26
                                            mem[_4997 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5058 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5058 + idx + 68] = mem[_4997 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5058 + 68] = mem[_5058 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5058 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5057 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5057] = 26
                                            mem[_5057 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5154 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5154 + idx + 68] = mem[_5057 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5154 + 68] = mem[_5154 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5154 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                            _4586 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4586] = 26
                                            mem[_4586 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4643 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4643 + idx + 68] = mem[_4586 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4643 + 68] = mem[_4643 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4643 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4785 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4785] = 26
                                            mem[_4785 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _5056 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5056] = 26
                                                mem[_5056 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5151 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5151 + idx + 68] = mem[_5056 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5151 + 68] = mem[_5151 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5151 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5150 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5150] = 26
                                                mem[_5150 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5274 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5274 + idx + 68] = mem[_5150 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5274 + 68] = mem[_5274 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5274 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                            if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4642 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4642] = 26
                                            mem[_4642 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4713 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4713 + idx + 68] = mem[_4642 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4713 + 68] = mem[_4713 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4713 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4826 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4826] = 26
                                            mem[_4826 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                                _5149 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5149] = 26
                                                mem[_5149 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5271 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5271 + idx + 68] = mem[_5149 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5271 + 68] = mem[_5271 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5271 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5270 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5270] = 26
                                                mem[_5270 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5411 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5411 + idx + 68] = mem[_5270 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5411 + 68] = mem[_5411 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5411 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            s = 0
                            while s < sub_7f217380.length:
                                mem[0] = 4
                                if sub_7f217380[s] <= block.number:
                                    s = s + 1
                                    continue 
                                require s < sub_59e5e9ed.length
                                mem[0] = 3
                                poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                            mem[0] = 3
                            poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                        mem[0] = 3
                        if poolInfo[idx].field_1280 <= sub_59e5e9ed[sub_59e5e9ed.length]:
                            _3079 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3079] = 30
                            mem[_3079 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _3081 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3081 + idx + 68] = mem[_3079 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3081 + 68] = mem[_3081 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3081 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    _4567 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4567] = 26
                                    mem[_4567 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4613 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4613 + idx + 68] = mem[_4567 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4613 + 68] = mem[_4613 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4613 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4760 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4760] = 26
                                    mem[_4760 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _5033 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5033] = 26
                                        mem[_5033 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5102 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5102 + idx + 68] = mem[_5033 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5102 + 68] = mem[_5102 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5102 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5101 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5101] = 26
                                        mem[_5101 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5216 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5216 + idx + 68] = mem[_5101 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5216 + 68] = mem[_5216 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5216 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                _4544 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4544] = 26
                                mem[_4544 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4564 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4564 + idx + 68] = mem[_4544 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4564 + 68] = mem[_4564 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4564 + -mem[64] + 100
                                require totalAllocPoint
                                _4682 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4682] = 26
                                mem[_4682 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4992 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4992] = 26
                                    mem[_4992 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _5030 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_5030 + idx + 68] = mem[_4992 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_5030 + 68] = mem[_5030 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _5030 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5029 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5029] = 26
                                    mem[_5029 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _5097 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_5097 + idx + 68] = mem[_5029 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_5097 + 68] = mem[_5097 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _5097 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    if not block.number - poolInfo[idx].field_512:
                                        _4563 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4563] = 26
                                        mem[_4563 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4609 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4609 + idx + 68] = mem[_4563 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4609 + 68] = mem[_4609 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4609 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4758 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4758] = 26
                                        mem[_4758 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _5028 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5028] = 26
                                            mem[_5028 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5094 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5094 + idx + 68] = mem[_5028 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5094 + 68] = mem[_5094 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5094 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5093 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5093] = 26
                                            mem[_5093 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5210 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5210 + idx + 68] = mem[_5093 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5210 + 68] = mem[_5210 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5210 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                            _4608 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4608] = 26
                                            mem[_4608 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4678 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4678 + idx + 68] = mem[_4608 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4678 + 68] = mem[_4678 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4678 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4814 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4814] = 26
                                            mem[_4814 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _5092 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5092] = 26
                                                mem[_5092 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5207 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5207 + idx + 68] = mem[_5092 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5207 + 68] = mem[_5207 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5207 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5206 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5206] = 26
                                                mem[_5206 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5362 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5362 + idx + 68] = mem[_5206 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5362 + 68] = mem[_5362 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5362 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                            if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4677 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4677] = 26
                                            mem[_4677 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4754 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4754 + idx + 68] = mem[_4677 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4754 + 68] = mem[_4754 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4754 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4855 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4855] = 26
                                            mem[_4855 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                                _5205 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5205] = 26
                                                mem[_5205 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5359 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5359 + idx + 68] = mem[_5205 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5359 + 68] = mem[_5359 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5359 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5358 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5358] = 26
                                                mem[_5358 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5514 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5514 + idx + 68] = mem[_5358 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5514 + 68] = mem[_5514 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5514 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                if not block.number - poolInfo[idx].field_512:
                                    _4543 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4543] = 26
                                    mem[_4543 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4560 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4560 + idx + 68] = mem[_4543 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4560 + 68] = mem[_4560 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4560 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4675 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4675] = 26
                                    mem[_4675 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4991 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4991] = 26
                                        mem[_4991 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5025 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5025 + idx + 68] = mem[_4991 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5025 + 68] = mem[_5025 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5025 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5024 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5024] = 26
                                        mem[_5024 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5088 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5088 + idx + 68] = mem[_5024 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5088 + 68] = mem[_5088 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5088 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                        _4559 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4559] = 26
                                        mem[_4559 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4604 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4604 + idx + 68] = mem[_4559 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4604 + 68] = mem[_4604 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4604 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4752 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4752] = 26
                                        mem[_4752 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _5023 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5023] = 26
                                            mem[_5023 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5085 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5085 + idx + 68] = mem[_5023 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5085 + 68] = mem[_5085 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5085 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5084 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5084] = 26
                                            mem[_5084 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5199 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5199 + idx + 68] = mem[_5084 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5199 + 68] = mem[_5199 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5199 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                        if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4603 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4603] = 26
                                        mem[_4603 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4671 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4671 + idx + 68] = mem[_4603 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4671 + 68] = mem[_4671 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4671 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4811 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4811] = 26
                                        mem[_4811 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                            _5083 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5083] = 26
                                            mem[_5083 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5196 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5196 + idx + 68] = mem[_5083 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5196 + 68] = mem[_5196 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5196 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5195 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5195] = 26
                                            mem[_5195 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5351 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5351 + idx + 68] = mem[_5195 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5351 + 68] = mem[_5351 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5351 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            _3080 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3080] = 30
                            mem[_3080 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _3085 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3085 + idx + 68] = mem[_3080 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3085 + 68] = mem[_3085 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3085 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    _4576 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4576] = 26
                                    mem[_4576 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4626 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4626 + idx + 68] = mem[_4576 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4626 + 68] = mem[_4626 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4626 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4771 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4771] = 26
                                    mem[_4771 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _5044 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5044] = 26
                                        mem[_5044 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5124 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5124 + idx + 68] = mem[_5044 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5124 + 68] = mem[_5124 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5124 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5123 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5123] = 26
                                        mem[_5123 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5241 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5241 + idx + 68] = mem[_5123 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5241 + 68] = mem[_5241 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5241 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                _4546 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4546] = 26
                                mem[_4546 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _4573 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_4573 + idx + 68] = mem[_4546 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4573 + 68] = mem[_4573 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _4573 + -mem[64] + 100
                                require totalAllocPoint
                                _4696 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4696] = 26
                                mem[_4696 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _4994 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4994] = 26
                                    mem[_4994 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _5041 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_5041 + idx + 68] = mem[_4994 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_5041 + 68] = mem[_5041 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _5041 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5040 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5040] = 26
                                    mem[_5040 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
                                        _5119 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_5119 + idx + 68] = mem[_5040 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_5119 + 68] = mem[_5119 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _5119 + -mem[64] + 100
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                s = 0
                                while s < sub_7f217380.length:
                                    mem[0] = 4
                                    if sub_7f217380[s] <= block.number:
                                        s = s + 1
                                        continue 
                                    require s < sub_59e5e9ed.length
                                    mem[0] = 3
                                    if not block.number - poolInfo[idx].field_512:
                                        _4572 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4572] = 26
                                        mem[_4572 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4622 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4622 + idx + 68] = mem[_4572 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4622 + 68] = mem[_4622 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4622 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4769 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4769] = 26
                                        mem[_4769 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _5039 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5039] = 26
                                            mem[_5039 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5116 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5116 + idx + 68] = mem[_5039 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5116 + 68] = mem[_5116 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5116 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5115 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5115] = 26
                                            mem[_5115 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5235 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5235 + idx + 68] = mem[_5115 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5235 + 68] = mem[_5235 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5235 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[s]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]):
                                            _4621 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4621] = 26
                                            mem[_4621 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4692 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4692 + idx + 68] = mem[_4621 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4692 + 68] = mem[_4692 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4692 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4819 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4819] = 26
                                            mem[_4819 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                _5114 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5114] = 26
                                                mem[_5114 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5232 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5232 + idx + 68] = mem[_5114 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5232 + 68] = mem[_5232 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5232 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5231 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5231] = 26
                                                mem[_5231 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5382 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5382 + idx + 68] = mem[_5231 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5382 + 68] = mem[_5382 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5382 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s])
                                            if (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[s]) - (poolInfo[idx].field_512 * sub_59e5e9ed[s]) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4691 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4691] = 26
                                            mem[_4691 + 32] = 'SafeMath: division by zero'
                                            if totalAllocPoint <= 0:
                                                _4765 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_4765 + idx + 68] = mem[_4691 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_4765 + 68] = mem[_4765 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _4765 + -mem[64] + 100
                                            require totalAllocPoint
                                            _4857 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4857] = 26
                                            mem[_4857 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint:
                                                _5230 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5230] = 26
                                                mem[_5230 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5379 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5379 + idx + 68] = mem[_5230 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5379 + 68] = mem[_5379 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5379 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _5378 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_5378] = 26
                                                mem[_5378 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0] <= 0:
                                                    _5525 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    idx = 0
                                                    while idx < 26:
                                                        mem[_5525 + idx + 68] = mem[_5378 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_5525 + 68] = mem[_5525 + 74 len 26]
                                                    revert with memory
                                                      from mem[64]
                                                       len _5525 + -mem[64] + 100
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[s] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[s] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    s = 0
                                    while s < sub_7f217380.length:
                                        mem[0] = 4
                                        if sub_7f217380[s] <= block.number:
                                            s = s + 1
                                            continue 
                                        require s < sub_59e5e9ed.length
                                        mem[0] = 3
                                        poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                    mem[0] = 3
                                    poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                                mem[0] = 3
                                if not block.number - poolInfo[idx].field_512:
                                    _4545 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4545] = 26
                                    mem[_4545 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _4569 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_4569 + idx + 68] = mem[_4545 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4569 + 68] = mem[_4569 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _4569 + -mem[64] + 100
                                    require totalAllocPoint
                                    _4689 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4689] = 26
                                    mem[_4689 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _4993 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4993] = 26
                                        mem[_4993 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5036 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5036 + idx + 68] = mem[_4993 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5036 + 68] = mem[_5036 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5036 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5035 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5035] = 26
                                        mem[_5035 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _5110 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_5110 + idx + 68] = mem[_5035 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5110 + 68] = mem[_5110 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _5110 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) / block.number - poolInfo[idx].field_512 != sub_59e5e9ed[sub_59e5e9ed.length]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]):
                                        _4568 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4568] = 26
                                        mem[_4568 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4617 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4617 + idx + 68] = mem[_4568 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4617 + 68] = mem[_4617 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4617 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4763 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4763] = 26
                                        mem[_4763 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            _5034 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5034] = 26
                                            mem[_5034 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5107 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5107 + idx + 68] = mem[_5034 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5107 + 68] = mem[_5107 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5107 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5106 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5106] = 26
                                            mem[_5106 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5224 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5224 + idx + 68] = mem[_5106 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5224 + 68] = mem[_5224 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5224 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length])
                                        if (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / (block.number * sub_59e5e9ed[sub_59e5e9ed.length]) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4616 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4616] = 26
                                        mem[_4616 + 32] = 'SafeMath: division by zero'
                                        if totalAllocPoint <= 0:
                                            _4685 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_4685 + idx + 68] = mem[_4616 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_4685 + 68] = mem[_4685 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _4685 + -mem[64] + 100
                                        require totalAllocPoint
                                        _4816 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4816] = 26
                                        mem[_4816 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint:
                                            _5105 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5105] = 26
                                            mem[_5105 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5221 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5221 + idx + 68] = mem[_5105 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5221 + 68] = mem[_5221 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5221 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _5220 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5220] = 26
                                            mem[_5220 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0] <= 0:
                                                _5371 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[_5371 + idx + 68] = mem[_5220 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_5371 + 68] = mem[_5371 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _5371 + -mem[64] + 100
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_59e5e9ed[sub_59e5e9ed.length] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        s = 0
                        while s < sub_7f217380.length:
                            mem[0] = 4
                            if sub_7f217380[s] <= block.number:
                                s = s + 1
                                continue 
                            require s < sub_59e5e9ed.length
                            mem[0] = 3
                            poolInfo[idx].field_1280 = sub_59e5e9ed[s]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
                        mem[0] = 3
                        poolInfo[idx].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if totalAllocPoint + arg1 < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        mem[0] = arg2
        mem[32] = 12
        stor12[address(arg2)] = 1
        if block.number > startBlock:
            _1578 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1578] = arg2
            idx = 0
            while idx < sub_7f217380.length:
                mem[0] = 4
                if sub_7f217380[idx] <= block.number:
                    idx = idx + 1
                    continue 
                require idx < sub_59e5e9ed.length
                poolInfo.length++
                mem[0] = 6
                poolInfo[poolInfo.length].field_0 = mem[_1578 + 12 len 20]
                poolInfo[poolInfo.length].field_256 = arg1
                poolInfo[poolInfo.length].field_512 = block.number
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                poolInfo[poolInfo.length].field_1040 = arg4
                poolInfo[poolInfo.length].field_1280 = sub_59e5e9ed[idx]
                poolInfo[poolInfo.length].field_1536 = uint8(arg5)
            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
            poolInfo.length++
            mem[0] = 6
            poolInfo[poolInfo.length].field_0 = mem[_1578 + 12 len 20]
            poolInfo[poolInfo.length].field_256 = arg1
            poolInfo[poolInfo.length].field_512 = block.number
        else:
            _1580 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1580] = arg2
            idx = 0
            while idx < sub_7f217380.length:
                mem[0] = 4
                if sub_7f217380[idx] <= block.number:
                    idx = idx + 1
                    continue 
                require idx < sub_59e5e9ed.length
                poolInfo.length++
                mem[0] = 6
                poolInfo[poolInfo.length].field_0 = mem[_1580 + 12 len 20]
                poolInfo[poolInfo.length].field_256 = arg1
                poolInfo[poolInfo.length].field_512 = startBlock
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                poolInfo[poolInfo.length].field_1040 = arg4
                poolInfo[poolInfo.length].field_1280 = sub_59e5e9ed[idx]
                poolInfo[poolInfo.length].field_1536 = uint8(arg5)
            require sub_59e5e9ed.length - 1 < sub_59e5e9ed.length
            poolInfo.length++
            mem[0] = 6
            poolInfo[poolInfo.length].field_0 = mem[_1580 + 12 len 20]
            poolInfo[poolInfo.length].field_256 = arg1
            poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1040 = arg4
    poolInfo[poolInfo.length].field_1280 = sub_59e5e9ed[sub_59e5e9ed.length]
    poolInfo[poolInfo.length].field_1536 = uint8(arg5)
}



}
