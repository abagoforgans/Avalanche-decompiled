contract main {




// =====================  Runtime code  =====================


#
#  - safeExecuteSignaturesWithAutoGasLimit(bytes arg1, bytes arg2)
#  - initialize(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7)
#  - executeSignatures(bytes arg1, bytes arg2)
#  - setChainIds(uint256 arg1, uint256 arg2)
#  - failedMessageSender(bytes32 arg1)
#  - messageCallStatus(bytes32 arg1)
#  - requireToPassMessage(address arg1, bytes arg2, uint256 arg3)
#  - safeExecuteSignaturesWithGasLimit(bytes arg1, bytes arg2, uint32 arg3)
#  - safeExecuteSignatures(bytes arg1, bytes arg2)
#
const getBridgeMode = 0x2544fbb900000000000000000000000000000000000000000000000000000000

const getBridgeInterfacesVersion = 6, 1, 0


mapping of uint256 failedMessageDataHash;
mapping of address failedMessageReceiver;
mapping of uint8 stor4;
uint8 isInitialized;
uint256 destinationChainId;
uint8 allowReentrantRequests;
uint256 maxGasPerTx;
address messageSenderAddress;
uint256 messageSourceChainId;
address validatorContractAddress;
address owner;
uint256 requiredBlockConfirmations;
uint256 decimalShift;
uint256 messageId;
uint256 deployedAtBlock;
uint256 sourceChainId;
uint256 gasPrice;

function transactionHash() {
    return messageId
}

function sourceChainId() {
    return sourceChainId
}

function relayedMessages(bytes32 arg1) {
    return bool(stor4['relayedMessages'][arg1])
}

function isInitialized() {
    return bool(isInitialized)
}

function requiredBlockConfirmations() {
    return requiredBlockConfirmations
}

function failedMessageReceiver(bytes32 arg1) {
    return failedMessageReceiver['failedMessageReceiver'][arg1]
}

function allowReentrantRequests() {
    return bool(allowReentrantRequests)
}

function messageId() {
    return messageId
}

function owner() {
    return owner
}

function validatorContract() {
    return validatorContractAddress
}

function deployedAtBlock() {
    return deployedAtBlock
}

function messageSourceChainId() {
    return messageSourceChainId
}

function destinationChainId() {
    return destinationChainId
}

function messageSender() {
    return messageSenderAddress
}

function decimalShift() {
    return decimalShift
}

function failedMessageDataHash(bytes32 arg1) {
    return failedMessageDataHash['failedMessageDataHash'][arg1]
}

function maxGasPerTx() {
    return maxGasPerTx
}

function gasPrice() {
    return gasPrice
}

function _fallback() payable {
    revert
}

function setMaxGasPerTx(uint256 arg1) {
    require msg.sender == owner
    maxGasPerTx = arg1
}

function setAllowReentrantRequests(bool arg1) {
    require msg.sender == owner
    allowReentrantRequests = uint8(arg1)
}

function setGasPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    gasPrice = arg1
    emit GasPriceChanged(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMinimumGasUsage(bytes arg1) {
    if not arg1.length:
        return 0
    require 16 * arg1.length / arg1.length == 16
    return (16 * arg1.length)
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    requiredBlockConfirmations = arg1
    emit RequiredBlockConfirmationChanged(arg1);
}

function requiredSignatures() {
    require ext_code.size(validatorContractAddress)
    call validatorContractAddress.0x8d068043 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
