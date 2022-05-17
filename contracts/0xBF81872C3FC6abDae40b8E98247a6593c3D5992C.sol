contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
address sIHandlerAddr;
uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of struct userRewardInfo;
uint256 betaRate;

function getSIHandlerAddr() payable {
    return sIHandlerAddr
}

function getBetaRate() payable {
    return betaRate
}

function getUserRewardInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardInfo[address(arg1)].field_0, userRewardInfo[address(arg1)].field_256, userRewardInfo[address(arg1)].field_512
}

function _fallback() payable {
    revert
}

function getMarketRewardInfo() payable {
    return stor2, stor3, stor4
}

function setBetaRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, ''
    betaRate = arg1
    return 1
}

function setSIHandlerAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, ''
    sIHandlerAddr = arg1
    return 1
}

function ownershipTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, ''
    address(stor0.field_8) = arg1
    return 1
}

function setCircuitBreaker(bool arg1) payable {
    require calldata.size - 4 >= 32
    if sIHandlerAddr != msg.sender:
        if address(stor0.field_8) != msg.sender:
            revert with 0, ''
    uint8(stor0.field_0) = uint8(arg1)
    return 1
}

function getRewardInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return stor2, 
           stor3,
           stor4,
           userRewardInfo[address(arg1)].field_0,
           userRewardInfo[address(arg1)].field_256,
           userRewardInfo[address(arg1)].field_512
}

function updateRewardPerBlockStorage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sIHandlerAddr != msg.sender:
        if address(stor0.field_8) != msg.sender:
            revert with 0, ''
    if uint8(stor0.field_0):
        if address(stor0.field_8) != msg.sender:
            revert with 0, 'emergency'
    stor4 = arg1
    return 1
}

function setMarketRewardInfo(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sIHandlerAddr != msg.sender:
        if address(stor0.field_8) != msg.sender:
            revert with 0, ''
    if uint8(stor0.field_0):
        if address(stor0.field_8) != msg.sender:
            revert with 0, 'emergency'
    stor2 = arg1
    stor3 = arg2
    stor4 = arg3
    return 1
}

function setUserRewardInfo(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if sIHandlerAddr != msg.sender:
        if address(stor0.field_8) != msg.sender:
            revert with 0, ''
    if uint8(stor0.field_0):
        if address(stor0.field_8) != msg.sender:
            revert with 0, 'emergency'
    userRewardInfo[address(arg1)].field_0 = arg2
    userRewardInfo[address(arg1)].field_256 = arg3
    userRewardInfo[address(arg1)].field_512 = arg4
    return 1
}



}
