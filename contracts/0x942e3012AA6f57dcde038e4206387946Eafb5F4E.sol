contract main {




// =====================  Runtime code  =====================


#
#  - sub_0dd60c70(?)
#  - increaseLockAmount(uint256 arg1, uint256 arg2, uint8 arg3)
#
const website = 'https://cryptexlock.me'


uint32 stor0;
address owner;
uint256 stor0;
uint256 stor1;
address factoryAddress;
address sub_35a03bfaAddress;
uint32 stor4;
address migratorAddress;
uint256 stor4;
address feeTokenAddress;
address feeReceiverAddress;
uint256 lockNonce;
mapping of struct tokenLocks;
array of uint256 userLockAt;

function userLockAt(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if userLockAt[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < userLockAt[address(arg1)]
    return userLockAt[address(arg1)][arg2]
}

function sub_35a03bfa(?) {
    return sub_35a03bfaAddress
}

function feeToken() {
    return feeTokenAddress
}

function migrator() {
    return address(migratorAddress)
}

function owner() {
    return address(owner)
}

function tokenLocks(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenLocks[arg1].field_0, 
           tokenLocks[arg1].field_256,
           tokenLocks[arg1].field_512,
           tokenLocks[arg1].field_768,
           tokenLocks[arg1].field_1024
}

function feeReceiver() {
    return feeReceiverAddress
}

function lockNonce() {
    return lockNonce
}

function userLocksLength(address arg1) {
    require calldata.size - 4 >= 32
    return userLockAt[address(arg1)]
}

function factory() {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setMigrator(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(migratorAddress) = arg1
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    feeReceiverAddress = arg1
}

function setFeesCalculator(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    sub_35a03bfaAddress = arg1
}

function setFeeTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if feeTokenAddress:
        revert with 0, 'already set'
    feeTokenAddress = arg1
    emit 0xe036741a: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function extendLockTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tokenLocks[arg1].field_256 != msg.sender:
        revert with 0, 'NO ACTIVE LOCK OR NOT OWNER'
    if arg2 <= block.timestamp:
        revert with 0, 'UNLOCK TIME IN THE PAST'
    if arg2 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6c494e56414c494420554e4c4f434b2054494d452c204d55535420424520554e49582054494d4520494e205345434f4e44,
                    mem[213 len 15]
    if tokenLocks[arg1].field_768 >= arg2:
        revert with 0, 'NOT INCREASING UNLOCK TIME'
    tokenLocks[arg1].field_768 = arg2
    emit OnLockDurationIncreased(arg2, arg1);
    stor1 = 1
}

function transferLock(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if tokenLocks[arg1].field_256 != msg.sender:
        revert with 0, 'NO ACTIVE LOCK OR NOT OWNER'
    if not arg2:
        revert with 0, 'ZERO NEW OWNER'
    if userLockAt[stor8[arg1].field_256][1][arg1]:
        require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
        require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
        userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
        require userLockAt[stor8[arg1].field_256]
        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
        userLockAt[stor8[arg1].field_256]--
        userLockAt[stor8[arg1].field_256][1][arg1] = 0
    if not userLockAt[address(arg2)][1][arg1]:
        userLockAt[address(arg2)]++
        userLockAt[address(arg2)][userLockAt[address(arg2)]] = arg1
        userLockAt[address(arg2)][1][arg1] = userLockAt[address(arg2)]
    tokenLocks[arg1].field_256 = arg2
    emit OnLockOwnershipTransferred(arg1, arg2);
}

function sub_28a2e7f0(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0, 'unable to recover LP token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
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

function migrate(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not address(migratorAddress):
        revert with 0, 'NO MIGRATOR'
    if arg2 != address(migratorAddress):
        revert with 0, 'WRONG MIGRATOR'
    if tokenLocks[arg1].field_256 != msg.sender:
        revert with 0, 'ONLY LOCK OWNER'
    if tokenLocks[arg1].field_512:
        require ext_code.size(tokenLocks[arg1].field_0)
        staticcall tokenLocks[arg1].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(migratorAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(tokenLocks[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), tokenLocks[arg1].field_544
    call tokenLocks[arg1].field_0 with:
       funct uint32(stor4)
         gas gas_remaining wei
        args tokenLocks[arg1].field_512, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), tokenLocks[arg1].field_512
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
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
    require ext_code.size(address(migratorAddress))
    call address(migratorAddress).migrate(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
         gas gas_remaining wei
        args tokenLocks[arg1].field_0, tokenLocks[arg1].field_512, tokenLocks[arg1].field_768, tokenLocks[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OnLockMigration(arg1, address(migratorAddress));
    if userLockAt[stor8[arg1].field_256][1][arg1]:
        require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
        require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
        userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
        require userLockAt[stor8[arg1].field_256]
        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
        userLockAt[stor8[arg1].field_256]--
        userLockAt[stor8[arg1].field_256][1][arg1] = 0
    tokenLocks[arg1].field_0 = 0
    tokenLocks[arg1].field_256 = 0
    tokenLocks[arg1].field_512 = 0
    tokenLocks[arg1].field_768 = 0
    tokenLocks[arg1].field_1024 = 0
    stor1 = 1
}

function withdrawPartially(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tokenLocks[arg1].field_256 != msg.sender:
        revert with 0, 'NO ACTIVE LOCK OR NOT OWNER'
    if tokenLocks[arg1].field_512 < arg2:
        revert with 0, 'AMOUNT EXCEEDS LOCKED'
    if block.timestamp < tokenLocks[arg1].field_768:
        revert with 0, 'NOT YET UNLOCKED'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(tokenLocks[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, Mask(224, 32, arg2) >> 32
    call tokenLocks[arg1].field_0 with:
       funct tokenLocks[arg1].field_256
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, arg2
        if not unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if arg2 > tokenLocks[arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        tokenLocks[arg1].field_512 -= arg2
        if not tokenLocks[arg1].field_512:
            if tokenLocks[arg1].field_1024 > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(feeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_1056
                call feeTokenAddress with:
                   funct tokenLocks[arg1].field_256
                     gas gas_remaining wei
                    args tokenLocks[arg1].field_1024, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, arg2
                    if not unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
            if userLockAt[stor8[arg1].field_256][1][arg1]:
                require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                require userLockAt[stor8[arg1].field_256]
                userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                userLockAt[stor8[arg1].field_256]--
                userLockAt[stor8[arg1].field_256][1][arg1] = 0
            tokenLocks[arg1].field_0 = 0
            tokenLocks[arg1].field_256 = 0
            tokenLocks[arg1].field_512 = 0
            tokenLocks[arg1].field_768 = 0
            tokenLocks[arg1].field_1024 = 0
            emit OnTokenUnlock(arg1);
        emit OnLockWithdrawal(arg2, arg1);
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
        if arg2 > tokenLocks[arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        tokenLocks[arg1].field_512 -= arg2
        if tokenLocks[arg1].field_512:
            emit OnLockWithdrawal(arg2, arg1);
        else:
            if tokenLocks[arg1].field_1024 <= 0:
                if userLockAt[stor8[arg1].field_256][1][arg1]:
                    require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                    require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                    userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                    userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                    require userLockAt[stor8[arg1].field_256]
                    userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                    userLockAt[stor8[arg1].field_256]--
                    userLockAt[stor8[arg1].field_256][1][arg1] = 0
                tokenLocks[arg1].field_0 = 0
                tokenLocks[arg1].field_256 = 0
                tokenLocks[arg1].field_512 = 0
                tokenLocks[arg1].field_768 = 0
                tokenLocks[arg1].field_1024 = 0
                emit OnTokenUnlock(arg1);
                emit OnLockWithdrawal(arg2, arg1);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(feeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_1056
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call feeTokenAddress with:
                   funct tokenLocks[arg1].field_256
                     gas gas_remaining wei
                    args tokenLocks[arg1].field_1024, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, arg2
                    if not unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    if userLockAt[stor8[arg1].field_256][1][arg1]:
                        require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                        require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                        userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                        require userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                        userLockAt[stor8[arg1].field_256]--
                        userLockAt[stor8[arg1].field_256][1][arg1] = 0
                    tokenLocks[arg1].field_0 = 0
                    tokenLocks[arg1].field_256 = 0
                    tokenLocks[arg1].field_512 = 0
                    tokenLocks[arg1].field_768 = 0
                    tokenLocks[arg1].field_1024 = 0
                    emit OnTokenUnlock(arg1);
                    emit OnLockWithdrawal(arg2, arg1);
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if userLockAt[stor8[arg1].field_256][1][arg1]:
                        require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                        require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                        userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                        require userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                        userLockAt[stor8[arg1].field_256]--
                        userLockAt[stor8[arg1].field_256][1][arg1] = 0
                    tokenLocks[arg1].field_0 = 0
                    tokenLocks[arg1].field_256 = 0
                    tokenLocks[arg1].field_512 = 0
                    tokenLocks[arg1].field_768 = 0
                    tokenLocks[arg1].field_1024 = 0
                    emit OnTokenUnlock(arg1);
                    emit OnLockWithdrawal(uint256 rg1, uint256 rg2):
                                          arg2,
                                          mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          arg1,
    stor1 = 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tokenLocks[arg1].field_256 != msg.sender:
        revert with 0, 'NO ACTIVE LOCK OR NOT OWNER'
    if tokenLocks[arg1].field_512 < tokenLocks[arg1].field_512:
        revert with 0, 'AMOUNT EXCEEDS LOCKED'
    if block.timestamp < tokenLocks[arg1].field_768:
        revert with 0, 'NOT YET UNLOCKED'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(tokenLocks[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_544
    call tokenLocks[arg1].field_0 with:
       funct tokenLocks[arg1].field_256
         gas gas_remaining wei
        args tokenLocks[arg1].field_512, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_512
        if not unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if tokenLocks[arg1].field_512 > tokenLocks[arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        tokenLocks[arg1].field_512 = 0
        if not tokenLocks[arg1].field_512:
            if tokenLocks[arg1].field_1024 > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(feeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_1056
                call feeTokenAddress with:
                   funct tokenLocks[arg1].field_256
                     gas gas_remaining wei
                    args tokenLocks[arg1].field_1024, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_512
                    if not unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
            if userLockAt[stor8[arg1].field_256][1][arg1]:
                require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                require userLockAt[stor8[arg1].field_256]
                userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                userLockAt[stor8[arg1].field_256]--
                userLockAt[stor8[arg1].field_256][1][arg1] = 0
            tokenLocks[arg1].field_0 = 0
            tokenLocks[arg1].field_256 = 0
            tokenLocks[arg1].field_512 = 0
            tokenLocks[arg1].field_768 = 0
            tokenLocks[arg1].field_1024 = 0
            emit OnTokenUnlock(arg1);
        emit OnLockWithdrawal(tokenLocks[arg1].field_512, arg1);
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
        if tokenLocks[arg1].field_512 > tokenLocks[arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        tokenLocks[arg1].field_512 = 0
        if tokenLocks[arg1].field_512:
            emit OnLockWithdrawal(tokenLocks[arg1].field_512, arg1);
        else:
            if tokenLocks[arg1].field_1024 <= 0:
                if userLockAt[stor8[arg1].field_256][1][arg1]:
                    require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                    require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                    userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                    userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                    require userLockAt[stor8[arg1].field_256]
                    userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                    userLockAt[stor8[arg1].field_256]--
                    userLockAt[stor8[arg1].field_256][1][arg1] = 0
                tokenLocks[arg1].field_0 = 0
                tokenLocks[arg1].field_256 = 0
                tokenLocks[arg1].field_512 = 0
                tokenLocks[arg1].field_768 = 0
                tokenLocks[arg1].field_1024 = 0
                emit OnTokenUnlock(arg1);
                emit OnLockWithdrawal(tokenLocks[arg1].field_512, arg1);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(feeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_1056
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call feeTokenAddress with:
                   funct tokenLocks[arg1].field_256
                     gas gas_remaining wei
                    args tokenLocks[arg1].field_1024, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256, tokenLocks[arg1].field_256, tokenLocks[arg1].field_512
                    if not unknown_0xa9059cbb(?????), tokenLocks[arg1].field_256:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    if userLockAt[stor8[arg1].field_256][1][arg1]:
                        require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                        require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                        userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                        require userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                        userLockAt[stor8[arg1].field_256]--
                        userLockAt[stor8[arg1].field_256][1][arg1] = 0
                    tokenLocks[arg1].field_0 = 0
                    tokenLocks[arg1].field_256 = 0
                    tokenLocks[arg1].field_512 = 0
                    tokenLocks[arg1].field_768 = 0
                    tokenLocks[arg1].field_1024 = 0
                    emit OnTokenUnlock(arg1);
                    emit OnLockWithdrawal(tokenLocks[arg1].field_512, arg1);
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if userLockAt[stor8[arg1].field_256][1][arg1]:
                        require userLockAt[stor8[arg1].field_256] - 1 < userLockAt[stor8[arg1].field_256]
                        require userLockAt[stor8[arg1].field_256][1][arg1] - 1 < userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256][1][arg1]] = userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]
                        userLockAt[stor8[arg1].field_256][1][userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]]] = userLockAt[stor8[arg1].field_256][1][arg1]
                        require userLockAt[stor8[arg1].field_256]
                        userLockAt[stor8[arg1].field_256][userLockAt[stor8[arg1].field_256]] = 0
                        userLockAt[stor8[arg1].field_256]--
                        userLockAt[stor8[arg1].field_256][1][arg1] = 0
                    tokenLocks[arg1].field_0 = 0
                    tokenLocks[arg1].field_256 = 0
                    tokenLocks[arg1].field_512 = 0
                    tokenLocks[arg1].field_768 = 0
                    tokenLocks[arg1].field_1024 = 0
                    emit OnTokenUnlock(arg1);
                    emit OnLockWithdrawal(uint256 rg1, uint256 rg2):
                                          tokenLocks[arg1].field_512,
                                          mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          arg1,
    stor1 = 1
}



}
