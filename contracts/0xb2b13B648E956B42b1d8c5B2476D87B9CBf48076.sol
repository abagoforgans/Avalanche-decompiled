contract main {




// =====================  Runtime code  =====================


#
#  - incrementLock(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - migrate(uint256 arg1, uint256 arg2, uint256 arg3)
#  - relock(uint256 arg1, uint256 arg2)
#  - sub_eb35ed62(?)
#
address owner;
uint256 stor1;
address uniswapFactoryAddress;
array of address userLockedTokenAtIndex;
mapping of struct userLockForTokenAtIndex;
uint256 NONCE;
array of address lockedTokenAtIndex;
array of uint256 numLocksForToken;
uint256 stor9;
address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
uint256 stor16;
uint256 stor17;
array of struct whitelistedUserAtIndex;
mapping of uint256 stor19;
address stor20;
address migratorAddress;
address COUNTRY_LISTAddress;

function getLockedTokenAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if lockedTokenAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= lockedTokenAtIndex.length:
        revert with 'NH{q', 50
    return lockedTokenAtIndex[arg1]
}

function getNumLocksForToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numLocksForToken[address(arg1)]
}

function getWhitelistedUsersLength() {
    return whitelistedUserAtIndex.length
}

function getNumLockedTokens() {
    return lockedTokenAtIndex.length
}

function migrator() {
    return migratorAddress
}

function uniswapFactory() {
    return uniswapFactoryAddress
}

function getWhitelistedUserAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if whitelistedUserAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= whitelistedUserAtIndex.length:
        revert with 'NH{q', 50
    return whitelistedUserAtIndex[arg1].field_0
}

function owner() {
    return owner
}

function getUserLockedTokenAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint256(userLockedTokenAtIndex[address(arg1)]) <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= uint256(userLockedTokenAtIndex[address(arg1)]):
        revert with 'NH{q', 50
    return address(userLockedTokenAtIndex[address(arg1)][arg2])
}

function getUserNumLockedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(userLockedTokenAtIndex[address(arg1)])
}

function getUserNumLocksForToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return uint256(userLockedTokenAtIndex[address(arg1)][2][address(arg2)])
}

function sub_b580a7d9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < numLocksForToken[arg1]
    return numLocksForToken[arg1][arg2]
}

function LOCKS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userLockForTokenAtIndex[arg1].field_0, 
           userLockForTokenAtIndex[arg1].field_256,
           userLockForTokenAtIndex[arg1].field_512,
           userLockForTokenAtIndex[arg1].field_768,
           userLockForTokenAtIndex[arg1].field_1024,
           userLockForTokenAtIndex[arg1].field_1280,
           userLockForTokenAtIndex[arg1].field_1536,
           userLockForTokenAtIndex[arg1].field_1696
}

function getUserLockForTokenAtIndex(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint256(userLockedTokenAtIndex[address(arg1)][2][address(arg2)]) <= arg3:
        revert with 0, 'EnumerableSet: index out of bounds'
    if arg3 >= uint256(userLockedTokenAtIndex[address(arg1)][2][address(arg2)]):
        revert with 'NH{q', 50
    return userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_0, 
           userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_256,
           userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_512,
           userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_768,
           userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_1024,
           userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_1280,
           userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_1536,
           userLockForTokenAtIndex[uint256(stor3[address(arg1)][2][address(arg2)][arg3])].field_1696
}

function NONCE() {
    return NONCE
}

function COUNTRY_LIST() {
    return COUNTRY_LISTAddress
}

function _fallback() payable {
    revert
}

function gFees() {
    return stor9, stor10, stor11, stor12, stor13, stor14, stor15, stor16, stor17
}

function getUserWhitelistStatus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor19[address(arg1)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = arg1
}

function setMigrator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    migratorAddress = arg1
}

function setSecondaryFeeToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function setReferralTokenAndHold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
    stor16 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
    stor17 = arg2
    stor9 = arg3
    stor11 = arg4
    stor12 = arg5
    stor13 = arg6
}

function whitelistFeeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if not stor19[address(arg1)]:
            whitelistedUserAtIndex.length++
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = arg1
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_160 = 0
            stor19[address(arg1)] = whitelistedUserAtIndex.length
    else:
        if stor19[address(arg1)]:
            if stor19[address(arg1)] < 1:
                revert with 'NH{q', 17
            if whitelistedUserAtIndex.length < 1:
                revert with 'NH{q', 17
            if whitelistedUserAtIndex.length - 1 >= whitelistedUserAtIndex.length:
                revert with 'NH{q', 50
            if stor19[address(arg1)] - 1 >= whitelistedUserAtIndex.length:
                revert with 'NH{q', 50
            whitelistedUserAtIndex[stor19[address(arg1)]].field_0 = whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0
            if stor19[address(arg1)] - 1 > -2:
                revert with 'NH{q', 17
            stor19[stor18[stor18.length].field_0] = stor19[address(arg1)]
            if not whitelistedUserAtIndex.length:
                revert with 'NH{q', 49
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = 0
            whitelistedUserAtIndex.length--
            stor19[address(arg1)] = 0
}

function splitLock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2 <= 0:
        revert with 0, 'ZERO AMOUNT'
    if userLockForTokenAtIndex[arg1].field_1536 != msg.sender:
        revert with 0, 'NOT OWNER'
    if stor9 != msg.value:
        revert with 0, 'FEE NOT MET'
    call stor20 with:
       value stor9 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if userLockForTokenAtIndex[arg1].field_512 < arg2:
        revert with 'NH{q', 17
    userLockForTokenAtIndex[arg1].field_512 -= arg2
    numLocksForToken[stor4[arg1].field_0]++
    numLocksForToken[stor4[arg1].field_0][numLocksForToken[stor4[arg1].field_0]] = NONCE
    userLockForTokenAtIndex[stor5].field_0 = userLockForTokenAtIndex[arg1].field_0
    userLockForTokenAtIndex[stor5].field_256 = userLockForTokenAtIndex[arg1].field_256
    userLockForTokenAtIndex[stor5].field_512 = arg2
    userLockForTokenAtIndex[stor5].field_768 = arg2
    userLockForTokenAtIndex[stor5].field_1024 = userLockForTokenAtIndex[arg1].field_1024
    userLockForTokenAtIndex[stor5].field_1280 = NONCE
    userLockForTokenAtIndex[stor5].field_1536 = msg.sender
    userLockForTokenAtIndex[stor5].field_1696 = userLockForTokenAtIndex[arg1].field_1696
    if not uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor5]):
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0])++
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0])]) = NONCE
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor5]) = uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0])
    if NONCE == -1:
        revert with 'NH{q', 17
    NONCE++
    emit 0x697dcda8: userLockForTokenAtIndex[arg1].field_1280, userLockForTokenAtIndex[arg1].field_0, msg.sender, userLockForTokenAtIndex[arg1].field_512, arg2
    emit 0x3e5a874d: NONCE, userLockForTokenAtIndex[arg1].field_0, msg.sender, arg2, userLockForTokenAtIndex[arg1].field_256, userLockForTokenAtIndex[arg1].field_1024, userLockForTokenAtIndex[arg1].field_1696
    stor1 = 1
}

function transferLockOwnership(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg2:
        revert with 0, 'OWNER'
    if userLockForTokenAtIndex[arg1].field_1536 != msg.sender:
        revert with 0, 'NOT OWNER'
    if not uint256(userLockedTokenAtIndex[address(arg2)][1][stor4[arg1].field_0]):
        uint256(userLockedTokenAtIndex[address(arg2)])++
        uint256(userLockedTokenAtIndex[address(arg2)][uint256(userLockedTokenAtIndex[address(arg2)])]) = userLockForTokenAtIndex[arg1].field_0
        uint256(userLockedTokenAtIndex[address(arg2)][1][stor4[arg1].field_0]) = uint256(userLockedTokenAtIndex[address(arg2)])
    if not uint256(userLockedTokenAtIndex[address(arg2)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280]):
        uint256(userLockedTokenAtIndex[address(arg2)][2][stor4[arg1].field_0])++
        uint256(userLockedTokenAtIndex[address(arg2)][2][stor4[arg1].field_0][uint256(userLockedTokenAtIndex[address(arg2)][2][stor4[arg1].field_0])]) = userLockForTokenAtIndex[arg1].field_1280
        uint256(userLockedTokenAtIndex[address(arg2)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280]) = uint256(userLockedTokenAtIndex[address(arg2)][2][stor4[arg1].field_0])
    if uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280]):
        if uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280]) < 1:
            revert with 'NH{q', 17
        if uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0]) < 1:
            revert with 'NH{q', 17
        if uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0]) - 1 >= uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0]):
            revert with 'NH{q', 50
        if uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280]) - 1 >= uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0]):
            revert with 'NH{q', 50
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280])]) = uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0])])
        if uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280]) - 1 > -2:
            revert with 'NH{q', 17
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0])])]) = uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280])
        if not uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0]):
            revert with 'NH{q', 49
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0])]) = 0
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0])--
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0][1][stor4[arg1].field_1280]) = 0
    if not uint256(userLockedTokenAtIndex[address(msg.sender)][2][stor4[arg1].field_0]):
        if uint256(userLockedTokenAtIndex[address(msg.sender)][1][stor4[arg1].field_0]):
            if uint256(userLockedTokenAtIndex[address(msg.sender)][1][stor4[arg1].field_0]) < 1:
                revert with 'NH{q', 17
            if uint256(userLockedTokenAtIndex[address(msg.sender)]) < 1:
                revert with 'NH{q', 17
            if uint256(userLockedTokenAtIndex[address(msg.sender)]) - 1 >= uint256(userLockedTokenAtIndex[address(msg.sender)]):
                revert with 'NH{q', 50
            if uint256(userLockedTokenAtIndex[address(msg.sender)][1][stor4[arg1].field_0]) - 1 >= uint256(userLockedTokenAtIndex[address(msg.sender)]):
                revert with 'NH{q', 50
            uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)][1][stor4[arg1].field_0])]) = uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)])])
            if uint256(userLockedTokenAtIndex[address(msg.sender)][1][stor4[arg1].field_0]) - 1 > -2:
                revert with 'NH{q', 17
            uint256(userLockedTokenAtIndex[address(msg.sender)][1][uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)])])]) = uint256(userLockedTokenAtIndex[address(msg.sender)][1][stor4[arg1].field_0])
            if not uint256(userLockedTokenAtIndex[address(msg.sender)]):
                revert with 'NH{q', 49
            uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)])]) = 0
            uint256(userLockedTokenAtIndex[address(msg.sender)])--
            uint256(userLockedTokenAtIndex[address(msg.sender)][1][stor4[arg1].field_0]) = 0
    userLockForTokenAtIndex[arg1].field_1536 = arg2
    emit 0x4e602365: arg1, userLockForTokenAtIndex[arg1].field_0, msg.sender, arg2
}



}
