contract main {




// =====================  Runtime code  =====================


#
#  - relayTokens(address arg1, uint256 arg2)
#  - fixFailedMessage(bytes32 arg1)
#  - totalExecutedPerDay(uint256 arg1)
#  - fixMediatorBalance(address arg1)
#  - withinExecutionLimit(uint256 arg1)
#  - handleBridgedTokens(address arg1, uint256 arg2)
#  - onTokenTransfer(address arg1, uint256 arg2, bytes arg3)
#  - fixAssetsAboveLimits(bytes32 arg1, bool arg2, uint256 arg3)
#
const getCurrentDay = (block.timestamp / 24 * 3600)

const getBridgeMode = vY[V

const getBridgeInterfacesVersion = 1, 4, 0

const VERSION = 3


mapping of uint256 totalSpentPerDay;
mapping of uint8 stor4;
uint256 mediatorBalance;
uint8 isInitialized;
uint32 storC120;
address mediatorContractOnOtherSideAddress;
uint256 storC120;
uint256 dailyLimit;
uint256 requestGasLimit;
address erc677tokenAddress;
uint256 minPerTx;
uint256 maxPerTx;
uint256 executionDailyLimit;
address bridgeContractAddress;
address owner;
uint256 outOfLimitAmount;
uint256 decimalShift;
uint256 executionMaxPerTx;

function erc677token() {
    return erc677tokenAddress
}

function totalSpentPerDay(uint256 arg1) {
    return totalSpentPerDay['totalSpentPerDay'][uint128(arg1)][uint128(arg1)]
}

function isInitialized() {
    return bool(isInitialized)
}

function executionDailyLimit() {
    return executionDailyLimit
}

function mediatorBalance() {
    return mediatorBalance
}

function messageFixed(bytes32 arg1) {
    return bool(stor4['messageFixed'][arg1])
}

function dailyLimit() {
    return dailyLimit
}

function mediatorContractOnOtherSide() {
    return address(mediatorContractOnOtherSideAddress)
}

function executionMaxPerTx() {
    return executionMaxPerTx
}

function owner() {
    return owner
}

function outOfLimitAmount() {
    return outOfLimitAmount
}

function requestGasLimit() {
    return requestGasLimit
}

function bridgeContract() {
    return bridgeContractAddress
}

function decimalShift() {
    return decimalShift
}

function minPerTx() {
    return minPerTx
}

function maxPerTx() {
    return maxPerTx
}

function _fallback() payable {
    revert
}

function setMediatorContractOnOtherSide(address arg1) {
    require msg.sender == owner
    address(mediatorContractOnOtherSideAddress) = arg1
}

function setBridgeContract(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    bridgeContractAddress = arg1
}

function setExecutionMaxPerTx(uint256 arg1) {
    require msg.sender == owner
    require arg1 < executionDailyLimit
    executionMaxPerTx = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMinPerTx(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 < dailyLimit
    require arg1 < maxPerTx
    minPerTx = arg1
}

function setMaxPerTx(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        require arg1 > minPerTx
        require arg1 < dailyLimit
    maxPerTx = arg1
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= maxPerTx:
        require not arg1
    dailyLimit = arg1
    emit DailyLimitChanged(arg1);
}

function setExecutionDailyLimit(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= executionMaxPerTx:
        require not arg1
    executionDailyLimit = arg1
    emit ExecutionDailyLimitChanged(arg1);
}

function setRequestGasLimit(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.0xe5789d03 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    requestGasLimit = arg1
}

function maxAvailablePerTx() {
    if dailyLimit > totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
        if maxPerTx < dailyLimit - totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
            return maxPerTx
        return (dailyLimit - totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600])
    if maxPerTx < 0:
        return maxPerTx
    else:
        return 0
}

function withinLimit(uint256 arg1) {
    require arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if dailyLimit < arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
        return dailyLimit >= arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if arg1 > maxPerTx:
        return arg1 <= maxPerTx
    return arg1 >= minPerTx
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.0x6fde8202 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require erc677tokenAddress != arg1
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            create contract with ('balance', 'address') wei
                            code: code.data[13773 len 33], arg2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require ext_call.return_data[0]
}

function requestFailedMessageFix(bytes32 arg1) {
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.0xcb08a10c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.0x3f9a8e7e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.0x4a610b04 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == address(mediatorContractOnOtherSideAddress)
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.0xdc8601b3 with:
         gas gas_remaining wei
        args address(mediatorContractOnOtherSideAddress), 96, requestGasLimit, 36, fixFailedMessage(bytes32 arg1), arg1, 0, Mask(192, 0, storC120), uint32(storC120)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c0b0d022(?) {
    mem[292] = 0, mem[292 len 28]
    mem[292] = mem[320 len 4]
    call this.address.mem[292 len 4] with:
         gas gas_remaining wei
        args mem[296 len 28]
    if ext_call.success:
        require ext_code.size(this.address)
        call this.address.0x6fde8202 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            require this.address == msg.sender
    require not isInitialized
    require ext_code.size(arg1) > 0
    bridgeContractAddress = arg1
    address(mediatorContractOnOtherSideAddress) = arg2
    require ext_code.size(arg3) > 0
    erc677tokenAddress = arg3
    require 0 < call.data[164]
    require call.data[132] > call.data[164]
    require call.data[100] > call.data[132]
    dailyLimit = call.data[100]
    maxPerTx = call.data[132]
    minPerTx = call.data[164]
    emit DailyLimitChanged(call.data[100]);
    require call.data[228] < call.data[196]
    executionDailyLimit = call.data[196]
    executionMaxPerTx = call.data[228]
    emit ExecutionDailyLimitChanged(call.data[196]);
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.0xe5789d03 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    requestGasLimit = arg4
    require arg5 > -77
    require arg5 < 77
    decimalShift = arg5
    require arg6
    emit OwnershipTransferred(owner, arg6);
    owner = arg6
    isInitialized = 1
    return bool(isInitialized)
}



}
