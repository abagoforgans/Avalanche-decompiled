contract main {




// =====================  Runtime code  =====================


#
#  - collectTokenFee()
#
const SIGNATURE_LENGTH = 65

const RELAYER_ROLE = 0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4

const DEFAULT_ADMIN_ROLE = 0

const VALIDATOR_ROLE = 0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926

const OWNER_ROLE = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021

const MANAGER_ROLE = 0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b


mapping of struct roleAdmin;
array of address stor1;
address sub_f33096d8Address;
mapping of address sub_2dd39c55;
mapping of uint8 stor4;
mapping of uint256 sub_14d74858;
mapping of uint256 sub_e14ad02d;
mapping of uint256 processedTransactions;
uint256 sub_12b57cea;
uint256 sub_9294a030;
uint256 maxTokenAmount;
uint256 maxGasPrice;
uint256 sub_8ce74cd0;
uint256 sub_a39140c5;
uint256 sub_cfe6a3a5;
mapping of address stor99;
mapping of struct stor24440054405305269366569402256811496959409073762505157381672968839269610695612;

function sub_12b57cea(?) {
    return sub_12b57cea
}

function sub_14d74858(?) {
    require calldata.size - 4 >= 32
    return sub_14d74858[arg1]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function sub_2dd39c55(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_2dd39c55[arg1])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(arg1)].field_0))
}

function maxGasPrice() {
    return maxGasPrice
}

function isRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0))
}

function paused() {
    return bool(uint8(stor1.length))
}

function getOtherBlockchainAvailableByNum(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_89affc9c(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function maxTokenAmount() {
    return maxTokenAmount
}

function sub_8ce74cd0(?) {
    return sub_8ce74cd0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_9294a030(?) {
    return sub_9294a030
}

function sub_a39140c5(?) {
    return sub_a39140c5
}

function processedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return processedTransactions[arg1]
}

function numOfThisBlockchain() {
    return uint128(stor1.length.field_8)
}

function sub_cfe6a3a5(?) {
    return sub_cfe6a3a5
}

function sub_e14ad02d(?) {
    require calldata.size - 4 >= 32
    return sub_e14ad02d[arg1]
}

function sub_f33096d8(?) {
    return sub_f33096d8Address
}

function isManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(arg1)].field_0))
}

function isValidator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(arg1)].field_0))
}

function sub_213feaf5(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    return sha3(address(arg1), arg2, arg3, arg4)
}

function toEthSignedMessageHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function sub_9e82a100(?) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    return stor1[('map', ('param', 'arg1'), ('param', 'arg2'))].field_0, stor[arg2][arg1]
}

function pauseExecution() {
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if uint8(stor1.length):
        revert with 0, 'Pausable: paused'
    uint8(stor1.length) = 1
    emit Paused(msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function continueExecution() {
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if not uint8(stor1.length):
        revert with 0, 'Pausable: not paused'
    uint8(stor1.length) = 0
    emit Unpaused(msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setMinConfirmationSignatures(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: At least 1 confirmation can be set'
    sub_12b57cea = arg1
}

function removeOtherBlockchain(uint128 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if not stor4[arg1 << 128]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: This blockchain was not added'
    stor4[arg1 << 128] = 0
}

function setMinTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    sub_9294a030 = arg1
}

function setRefundSlippage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    sub_a39140c5 = arg1
}

function setMaxTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    maxTokenAmount = arg1
}

function _fallback() payable {
    sub_f33096d8Address = stor3608[call.func_hash].field_0
    if not stor3608[call.func_hash].field_0:
        revert with 0, 'no instanceaAbb'
    delegate stor3608[call.func_hash].field_256 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function setMinConfirmationBlocks(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    sub_8ce74cd0 = arg1
}

function sub_ae029b07(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint128(arg1)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    uint256(sub_2dd39c55[arg1 << 128]) = arg2
}

function setFeeAmountOfBlockchain(uint128 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    sub_14d74858[arg1 << 128] = arg2
}

function setCryptoFeeOfBlockchain(uint128 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            if not uint8(roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(msg.sender)].field_0):
                revert with 0, 'swapContract: not ownr mngr rlyr'
    sub_e14ad02d[arg1 << 128] = arg2
}

function setMaxGasPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: Gas price cannot be zero'
    maxGasPrice = arg1
}

function sub_10134795(?) {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    require ext_code.size(address(sub_2dd39c55[uint128(stor1.length)]))
    call address(sub_2dd39c55[uint128(stor1.length)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addOtherBlockchain(uint128 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if uint128(stor1.length.field_8) == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'swapContract: Cannot add this blockchain to array of other blockchains'
    if stor4[arg1 << 128]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: This blockchain is already added'
    stor4[arg1 << 128] = 1
}

function sub_a0975539(?) {
    require calldata.size - 4 >= 64
    if not uint8(roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: Caller is not in relayer role'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: you cannot set the statusCode to 0'
    if 1 == processedTransactions[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'swapContract: transaction with this originalTxHash has already been set as succeed'
    processedTransactions[arg1] = arg2
}

function sub_be8c9ad4(?) {
    require calldata.size - 4 >= 96
    require arg1 == Mask(32, 224, arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    stor3608[arg1].field_256 = address(arg2)
    stor3608[arg1].field_0 = address(arg3)
    require ext_code.size(address(sub_2dd39c55[uint128(stor1.length)]))
    call address(sub_2dd39c55[uint128(stor1.length)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6b31ad12(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4d832750(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 192, ('param', 'arg3')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 192, ('param', 'arg3')), 32))), 0) - 256 >= 27:
        return 0
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), 27, mem[arg3 + 128], mem[arg3 + 160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_45b6abc5(?) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == address(arg2)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not in owner or manager role'
    if not address(arg2):
        revert with 0, 'router cannot be zero'
    stor3608[arg1].field_0 = address(arg2)
    require ext_code.size(address(sub_2dd39c55[uint128(stor1.length)]))
    call address(sub_2dd39c55[uint128(stor1.length)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function changeOtherBlockchain(uint128 arg1, uint128 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'swapContract: Cannot change blockchains with same number'
    if uint128(stor1.length.field_8) == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'swapContract: Cannot add this blockchain to array of other blockchains'
    if not stor4[arg1 << 128]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: This blockchain was not added'
    if stor4[arg2 << 128]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: This blockchain is already added'
    stor4[arg1 << 128] = 0
    stor4[arg2] = 1
}

function sub_21c83d7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if not uint8(roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: fee can be sent only to a relayer'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function transferOwnerAndSetManager(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        revert with 0, 'Caller is not in owner role'
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'swapContract: New owner must be different than current'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: Owner cannot be zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swapContract: Owner cannot be zero address'
    if not uint8(roleAdmin[address(arg1)].field_0):
        uint8(roleAdmin[address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(arg1)].field_0):
        uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(arg1)].field_0) = 1
        emit RoleGranted(0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021, arg1, msg.sender);
    if not uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(arg2)].field_0):
        uint8(roleAdmin[0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(arg2)].field_0) = 1
        emit RoleGranted(0x4e241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, arg2, msg.sender);
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0):
        uint8(roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0) = 0
        emit RoleRevoked(0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021, msg.sender, msg.sender);
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[address(msg.sender)].field_0):
        uint8(roleAdmin[address(msg.sender)].field_0) = 0
        emit RoleRevoked(0, msg.sender, msg.sender);
}



}
