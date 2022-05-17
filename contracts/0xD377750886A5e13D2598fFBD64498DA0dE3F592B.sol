contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address reservedAddr;
uint256 reservedAmount;
address marketHandlerAddr;
address interestModelAddr;
uint256 lastUpdatedBlock;
uint256 inactiveActionDelta;
uint256 stor7;
uint256 stor8;
uint256 depositTotalAmount;
uint256 borrowTotalAmount;
uint256 globalDepositEXR;
uint256 globalBorrowEXR;
mapping of struct userAmount;
uint256 borrowLimit;
uint256 marginCallLimit;
uint256 minimumInterestRate;
uint256 liquiditySensitivity;
uint256 liquidityLimit;
uint256 limitOfAction;

function getLimitOfAction() payable {
    return limitOfAction
}

function getReservedAddr() payable {
    return reservedAddr
}

function getUserEXR(address arg1) payable {
    require calldata.size - 4 >= 32
    return userAmount[address(arg1)].field_768, userAmount[address(arg1)].field_1024
}

function globalDepositEXR() payable {
    return globalDepositEXR
}

function depositTotalAmount() payable {
    return depositTotalAmount
}

function getUserAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return userAmount[address(arg1)].field_256, userAmount[address(arg1)].field_512
}

function getBorrowTotalAmount() payable {
    return borrowTotalAmount
}

function getBorrowLimit() payable {
    return borrowLimit
}

function getInactiveActionDelta() payable {
    return inactiveActionDelta
}

function getMarketHandlerAddr() payable {
    return marketHandlerAddr
}

function getUserIntraDepositAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return userAmount[address(arg1)].field_256
}

function getGlobalDepositEXR() payable {
    return globalDepositEXR
}

function getMarginCallLimit() payable {
    return marginCallLimit
}

function borrowTotalAmount() payable {
    return borrowTotalAmount
}

function liquidityLimit() payable {
    return liquidityLimit
}

function getLastUpdatedBlock() payable {
    return lastUpdatedBlock
}

function getOwner() payable {
    return owner
}

function getGlobalBorrowEXR() payable {
    return globalBorrowEXR
}

function getMinimumInterestRate() payable {
    return minimumInterestRate
}

function getDepositTotalAmount() payable {
    return depositTotalAmount
}

function getLiquiditySensitivity() payable {
    return liquiditySensitivity
}

function getLiquidityLimit() payable {
    return liquidityLimit
}

function getUserIntraBorrowAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return userAmount[address(arg1)].field_512
}

function getUserAccessed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(userAmount[address(arg1)].field_0)
}

function getInterestModelAddr() payable {
    return interestModelAddr
}

function limitOfAction() payable {
    return limitOfAction
}

function getReservedAmount() payable {
    return reservedAmount
}

function globalBorrowEXR() payable {
    return globalBorrowEXR
}

function _fallback() payable {
    revert
}

function getActionEXR() payable {
    return stor7, stor8
}

function getLimit() payable {
    return borrowLimit, marginCallLimit
}

function getGlobalEXR() payable {
    return globalDepositEXR, globalBorrowEXR
}

function getHandlerAmount() payable {
    return depositTotalAmount, borrowTotalAmount
}

function ownershipTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    owner = arg1
    return 1
}

function setBorrowLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    borrowLimit = arg1
    return 1
}

function setReservedAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    reservedAddr = arg1
    return 1
}

function setLimitOfAction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    limitOfAction = arg1
    return 1
}

function setLiquidityLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    liquidityLimit = arg1
    return 1
}

function setMarginCallLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    marginCallLimit = arg1
    return 1
}

function setMarketHandlerAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    marketHandlerAddr = arg1
    return 1
}

function setInterestModelAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    interestModelAddr = arg1
    return 1
}

function setMinimumInterestRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    minimumInterestRate = arg1
    return 1
}

function setLiquiditySensitivity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    liquiditySensitivity = arg1
    return 1
}

function getAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositTotalAmount, borrowTotalAmount, userAmount[address(arg1)].field_256, userAmount[address(arg1)].field_512
}

function setCoinHandler(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, ''
    marketHandlerAddr = arg1
    interestModelAddr = arg2
    return 1
}

function setTokenHandler(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, ''
    marketHandlerAddr = arg1
    interestModelAddr = arg2
    return 1
}

function setCircuitBreaker(bool arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    return 1
}

function syncActionEXR() payable {
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    stor7 = globalDepositEXR
    stor8 = globalBorrowEXR
    return 1
}

function setLastUpdatedBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    lastUpdatedBlock = arg1
    return 1
}

function setInactiveActionDelta(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    inactiveActionDelta = arg1
    return 1
}

function setActionEXR(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    stor7 = arg1
    stor8 = arg2
    return 1
}

function setUserAccessed(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    userAmount[address(arg1)].field_0 = uint8(arg2)
    return 1
}

function setBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    lastUpdatedBlock = arg1
    inactiveActionDelta = arg2
    return 1
}

function setUserEXR(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    userAmount[address(arg1)].field_768 = arg2
    userAmount[address(arg1)].field_1024 = arg3
    return 1
}

function subBorrowTotalAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg1 > borrowTotalAmount:
        revert with 0, 'sub overflow'
    borrowTotalAmount -= arg1
    return (borrowTotalAmount - arg1)
}

function subDepositTotalAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg1 > depositTotalAmount:
        revert with 0, 'sub overflow'
    depositTotalAmount -= arg1
    return (depositTotalAmount - arg1)
}

function setNewCustomer(address arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    userAmount[address(arg1)].field_0 = 1
    userAmount[address(arg1)].field_768 = 10^18
    userAmount[address(arg1)].field_1024 = 10^18
    return 1
}

function addBorrowTotalAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg1 + borrowTotalAmount < borrowTotalAmount:
        revert with 0, 'add overflow'
    borrowTotalAmount += arg1
    return (arg1 + borrowTotalAmount)
}

function addDepositTotalAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg1 + depositTotalAmount < depositTotalAmount:
        revert with 0, 'add overflow'
    depositTotalAmount += arg1
    return (arg1 + depositTotalAmount)
}

function setEXR(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    globalDepositEXR = arg2
    globalBorrowEXR = arg3
    userAmount[address(arg1)].field_768 = arg2
    userAmount[address(arg1)].field_1024 = arg3
    return 1
}

function subUserIntraBorrowAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 > userAmount[address(arg1)].field_512:
        revert with 0, 'sub overflow'
    userAmount[address(arg1)].field_512 -= arg2
    return (userAmount[address(arg1)].field_512 - arg2)
}

function setAmount(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    depositTotalAmount = arg2
    borrowTotalAmount = arg3
    userAmount[address(arg1)].field_256 = arg4
    userAmount[address(arg1)].field_512 = arg5
    return 0
}

function subUserIntraDepositAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 > userAmount[address(arg1)].field_256:
        revert with 0, 'sub overflow'
    userAmount[address(arg1)].field_256 -= arg2
    return (userAmount[address(arg1)].field_256 - arg2)
}

function addUserIntraBorrowAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 + userAmount[address(arg1)].field_512 < userAmount[address(arg1)].field_512:
        revert with 0, 'add overflow'
    userAmount[address(arg1)].field_512 += arg2
    return (arg2 + userAmount[address(arg1)].field_512)
}

function addUserIntraDepositAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 + userAmount[address(arg1)].field_256 < userAmount[address(arg1)].field_256:
        revert with 0, 'add overflow'
    userAmount[address(arg1)].field_256 += arg2
    return (arg2 + userAmount[address(arg1)].field_256)
}

function subBorrowAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 > borrowTotalAmount:
        revert with 0, 'sub overflow'
    borrowTotalAmount -= arg2
    if arg2 > userAmount[address(arg1)].field_512:
        revert with 0, 'sub overflow'
    userAmount[address(arg1)].field_512 -= arg2
    return 0
}

function subDepositAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 > depositTotalAmount:
        revert with 0, 'sub overflow'
    depositTotalAmount -= arg2
    if arg2 > userAmount[address(arg1)].field_256:
        revert with 0, 'sub overflow'
    userAmount[address(arg1)].field_256 -= arg2
    return 0
}

function addBorrowAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 + borrowTotalAmount < borrowTotalAmount:
        revert with 0, 'add overflow'
    borrowTotalAmount += arg2
    if arg2 + userAmount[address(arg1)].field_512 < userAmount[address(arg1)].field_512:
        revert with 0, 'add overflow'
    userAmount[address(arg1)].field_512 += arg2
    return 0
}

function addDepositAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg2 + depositTotalAmount < depositTotalAmount:
        revert with 0, 'add overflow'
    depositTotalAmount += arg2
    if arg2 + userAmount[address(arg1)].field_256 < userAmount[address(arg1)].field_256:
        revert with 0, 'add overflow'
    userAmount[address(arg1)].field_256 += arg2
    return 0
}

function addReservedAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg1 < 0:
        if arg1 + reservedAmount >= reservedAmount:
            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
    else:
        if arg1 + reservedAmount < reservedAmount:
            if arg1 >= 0:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
            if arg1 + reservedAmount >= reservedAmount:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
    reservedAmount += arg1
    return (arg1 + reservedAmount)
}

function updateSignedReservedAmount(int256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg1 < 0:
        if arg1 + reservedAmount >= reservedAmount:
            revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
    else:
        if arg1 + reservedAmount < reservedAmount:
            if arg1 >= 0:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
            if arg1 + reservedAmount >= reservedAmount:
                revert with 0, 32, 33, 0xfe5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[325 len 31]
    reservedAmount += arg1
    return (arg1 + reservedAmount)
}

function subReservedAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if marketHandlerAddr != msg.sender:
        if interestModelAddr != msg.sender:
            if owner != msg.sender:
                revert with 0, ''
    if uint8(stor0.field_160):
        if owner != msg.sender:
            revert with 0, 'emergency'
    if arg1 < 0:
        if reservedAmount - arg1 <= reservedAmount:
            revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[328 len 28]
    else:
        if reservedAmount - arg1 > reservedAmount:
            if arg1 >= 0:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[328 len 28]
            if reservedAmount - arg1 <= reservedAmount:
                revert with 0, 32, 36, 0x775369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[328 len 28]
    reservedAmount -= arg1
    return (reservedAmount - arg1)
}



}
