contract main {




// =====================  Runtime code  =====================


#
#  - sub_0dd60c70(?)
#  - withdraw(uint256 arg1)
#  - sub_59f7545d(?)
#  - increaseLockAmount(uint256 arg1, uint256 arg2, uint8 arg3)
#
const website = 'https://cryptexlock.me'

const DEFAULT_ADMIN_ROLE = 0


address owner;
array of struct roleAdmin;
uint256 stor2;
address masterContractAddress;
address feeReceiverAddress;
address sub_35a03bfaAddress;
address feeTokenAddress;
uint256 sub_7c5eb940;
mapping of uint8 sub_180630af;
array of uint256 sub_0ce3e11b;
array of uint256 userLockAt;
mapping of struct tokenLocks;

function sub_0ce3e11b(?) {
    return sub_0ce3e11b[arg1][0 len sub_0ce3e11b[arg1].length]
}

function sub_180630af(?) {
    require calldata.size - 4 >= 32
    return sub_180630af[arg1]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

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

function sub_674bccc6(?) {
    return sub_0ce3e11b[stor9[address(arg1)]][0 len sub_0ce3e11b[stor9[address(arg1)]].length]
}

function sub_7c5eb940(?) {
    return sub_7c5eb940
}

function owner() {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
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

function userLocksLength(address arg1) {
    require calldata.size - 4 >= 32
    return userLockAt[address(arg1)]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function masterContract() {
    return masterContractAddress
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinimalLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7c5eb940 = arg1
    emit OnMinimalLockTimeChange(arg1);
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    feeReceiverAddress = arg1
}

function setFeesCalculator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    sub_35a03bfaAddress = arg1
}

function setFeeTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if feeTokenAddress:
        revert with 0, 'already set'
    feeTokenAddress = arg1
    emit 0xe036741a: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5f6d65a6(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length:
        sub_0ce3e11b[arg1 << 248][] = Array(len=arg2.length, data=arg2[all])
    else:
        sub_0ce3e11b[arg1 << 248] = 0
        idx = 0
        while sub_0ce3e11b[arg1 << 248].length + 31 / 32 > idx:
            sub_0ce3e11b[arg1 << 248][idx] = 0
            idx = idx + 1
            continue 
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function extendLockTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if tokenLocks[arg1].field_512 != msg.sender:
        revert with 0, 'NO ACTIVE LOCK OR NOT OWNER'
    if arg2 <= block.timestamp:
        revert with 0, 'UNLOCK TIME IN THE PAST'
    if arg2 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x65494e56414c494420554e4c4f434b2054494d452c204d55535420424520554e49582054494d4520494e205345434f4e44,
                    mem[213 len 15]
    if tokenLocks[arg1].field_768 >= arg2:
        revert with 0, 'NOT INCREASING UNLOCK TIME'
    tokenLocks[arg1].field_768 = arg2
    emit OnLockDurationIncreased(arg2, arg1);
    stor2 = 1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6c416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function transferLock(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if tokenLocks[arg1].field_512 != msg.sender:
        revert with 0, 'NO ACTIVE LOCK OR NOT OWNER'
    if not arg2:
        revert with 0, 'ZERO NEW OWNER'
    if userLockAt[stor12[arg1].field_512][1][arg1]:
        require userLockAt[stor12[arg1].field_512] - 1 < userLockAt[stor12[arg1].field_512]
        require userLockAt[stor12[arg1].field_512][1][arg1] - 1 < userLockAt[stor12[arg1].field_512]
        userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512][1][arg1]] = userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]]
        userLockAt[stor12[arg1].field_512][1][userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]]] = userLockAt[stor12[arg1].field_512][1][arg1]
        require userLockAt[stor12[arg1].field_512]
        userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]] = 0
        userLockAt[stor12[arg1].field_512]--
        userLockAt[stor12[arg1].field_512][1][arg1] = 0
    if not userLockAt[address(arg2)][1][arg1]:
        userLockAt[address(arg2)]++
        userLockAt[address(arg2)][userLockAt[address(arg2)]] = arg1
        userLockAt[address(arg2)][1][arg1] = userLockAt[address(arg2)]
    tokenLocks[arg1].field_512 = arg2
    emit OnLockOwnershipTransferred(arg1, arg2);
}

function sub_d495b268(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not roleAdmin[0xd8994f6d76f930dc5ea8c60e38e6334a87bb8539cc3082ac6828681c33316e3d][1][address(msg.sender)].field_0:
        revert with 0, 'NOT AUDITOR'
    if sub_0ce3e11b[arg2 << 248].length <= 0:
        revert with 0, 'INVALID SECURITY RATING'
    sub_180630af[address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0x9095e78c: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, arg1, arg2
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        emit 0x9095e78c: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 192 len floor32(arg3.length) + -ceil32(arg3.length) + 32], arg1, arg2
}

function withdrawPartially(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if tokenLocks[arg1].field_512 != msg.sender:
        revert with 0, 'NO ACTIVE LOCK OR NOT OWNER'
    if block.timestamp < tokenLocks[arg1].field_768:
        revert with 0, 'NOT YET UNLOCKED'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(tokenLocks[arg1].field_256) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), tokenLocks[arg1].field_0, tokenLocks[arg1].field_0, tokenLocks[arg1].field_512, Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call tokenLocks[arg1].field_256 with:
       funct tokenLocks[arg1].field_512
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), tokenLocks[arg1].field_0, tokenLocks[arg1].field_0, tokenLocks[arg1].field_512, arg2
        if not unknown_0x23b872dd(?????), tokenLocks[arg1].field_0:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(tokenLocks[arg1].field_256)
        staticcall tokenLocks[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args tokenLocks[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            emit OnLockWithdrawal(arg2, arg1);
        else:
            if tokenLocks[arg1].field_1024 > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(feeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_512, tokenLocks[arg1].field_512, tokenLocks[arg1].field_1056
                call feeTokenAddress with:
                   funct tokenLocks[arg1].field_512
                     gas gas_remaining wei
                    args tokenLocks[arg1].field_1024, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), tokenLocks[arg1].field_0, tokenLocks[arg1].field_0, tokenLocks[arg1].field_512, arg2
                    if not unknown_0x23b872dd(?????), tokenLocks[arg1].field_0:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
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
            require ext_code.size(tokenLocks[arg1].field_0)
            call tokenLocks[arg1].field_0.0x1beb2615 with:
                 gas gas_remaining wei
                args tokenLocks[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit OnInstanceDestruction(tokenLocks[arg1].field_512, tokenLocks[arg1].field_0);
            if userLockAt[stor12[arg1].field_512][1][arg1]:
                require userLockAt[stor12[arg1].field_512] - 1 < userLockAt[stor12[arg1].field_512]
                require userLockAt[stor12[arg1].field_512][1][arg1] - 1 < userLockAt[stor12[arg1].field_512]
                userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512][1][arg1]] = userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]]
                userLockAt[stor12[arg1].field_512][1][userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]]] = userLockAt[stor12[arg1].field_512][1][arg1]
                require userLockAt[stor12[arg1].field_512]
                userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]] = 0
                userLockAt[stor12[arg1].field_512]--
                userLockAt[stor12[arg1].field_512][1][arg1] = 0
            tokenLocks[arg1].field_0 = 0
            tokenLocks[arg1].field_256 = 0
            tokenLocks[arg1].field_512 = 0
            tokenLocks[arg1].field_768 = 0
            tokenLocks[arg1].field_1024 = 0
            emit OnTokenUnlock(arg1);
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
        require ext_code.size(tokenLocks[arg1].field_256)
        staticcall tokenLocks[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args tokenLocks[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            emit OnLockWithdrawal(arg2, arg1);
        else:
            if tokenLocks[arg1].field_1024 <= 0:
                require ext_code.size(tokenLocks[arg1].field_0)
                call tokenLocks[arg1].field_0.0x1beb2615 with:
                     gas gas_remaining wei
                    args tokenLocks[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnInstanceDestruction(tokenLocks[arg1].field_512, tokenLocks[arg1].field_0);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(feeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), tokenLocks[arg1].field_512, tokenLocks[arg1].field_512, tokenLocks[arg1].field_1056
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call feeTokenAddress with:
                   funct tokenLocks[arg1].field_512
                     gas gas_remaining wei
                    args tokenLocks[arg1].field_1024, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), tokenLocks[arg1].field_0, tokenLocks[arg1].field_0, tokenLocks[arg1].field_512, arg2
                    if not unknown_0x23b872dd(?????), tokenLocks[arg1].field_0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(tokenLocks[arg1].field_0)
                    call tokenLocks[arg1].field_0.0x1beb2615 with:
                         gas gas_remaining wei
                        args tokenLocks[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnInstanceDestruction(tokenLocks[arg1].field_512, tokenLocks[arg1].field_0);
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
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(tokenLocks[arg1].field_0)
                    call tokenLocks[arg1].field_0.0x1beb2615 with:
                         gas gas_remaining wei
                        args tokenLocks[arg1].field_512, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnInstanceDestruction(address rg1, address rg2):
                                               tokenLocks[arg1].field_512,
                                               mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               tokenLocks[arg1].field_0,
            if userLockAt[stor12[arg1].field_512][1][arg1]:
                require userLockAt[stor12[arg1].field_512] - 1 < userLockAt[stor12[arg1].field_512]
                require userLockAt[stor12[arg1].field_512][1][arg1] - 1 < userLockAt[stor12[arg1].field_512]
                userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512][1][arg1]] = userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]]
                userLockAt[stor12[arg1].field_512][1][userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]]] = userLockAt[stor12[arg1].field_512][1][arg1]
                require userLockAt[stor12[arg1].field_512]
                userLockAt[stor12[arg1].field_512][userLockAt[stor12[arg1].field_512]] = 0
                userLockAt[stor12[arg1].field_512]--
                userLockAt[stor12[arg1].field_512][1][arg1] = 0
            tokenLocks[arg1].field_0 = 0
            tokenLocks[arg1].field_256 = 0
            tokenLocks[arg1].field_512 = 0
            tokenLocks[arg1].field_768 = 0
            tokenLocks[arg1].field_1024 = 0
            emit OnTokenUnlock(arg1);
    stor2 = 1
}



}
