contract main {




// =====================  Runtime code  =====================


const SIGNATURE_LENGTH = 65

const RELAYER_ROLE = 0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4

const DEFAULT_ADMIN_ROLE = 0

const VALIDATOR_ROLE = 0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926

const OWNER_ROLE = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e

const MANAGER_ROLE = 0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08


mapping of struct roleAdmin;
uint8 stor1;
uint128 stor1;
uint128 numOfThisBlockchain; offset 8
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
uint256 sub_cfe6a3a5;
mapping of uint256 providerFee;
mapping of uint256 sub_b1d98b04;

function sub_12b57cea(?) payable {
    return sub_12b57cea
}

function sub_14d74858(?) payable {
    require calldata.size - 4 >= 32
    return sub_14d74858[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2dd39c55(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_2dd39c55[arg1])
}

function maxGasPrice() payable {
    return maxGasPrice
}

function paused() payable {
    return bool(uint8(stor1.field_0))
}

function sub_89affc9c(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function maxTokenAmount() payable {
    return maxTokenAmount
}

function sub_8ce74cd0(?) payable {
    return sub_8ce74cd0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9294a030(?) payable {
    return sub_9294a030
}

function processedTransactions(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return processedTransactions[arg1]
}

function sub_b1d98b04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b1d98b04[address(arg1)]
}

function getProviderFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return providerFee[address(arg1)]
}

function numOfThisBlockchain() payable {
    return numOfThisBlockchain
}

function sub_cfe6a3a5(?) payable {
    return sub_cfe6a3a5
}

function sub_e14ad02d(?) payable {
    require calldata.size - 4 >= 32
    return sub_e14ad02d[arg1]
}

function sub_f33096d8(?) payable {
    return sub_f33096d8Address
}

function _fallback() payable {
    revert
}

function sub_213feaf5(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    return sha3(address(arg1), arg2, arg3, arg4)
}

function toEthSignedMessageHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setProviderFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        if not roleAdmin[0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08][address(msg.sender)].field_0:
            revert with 0, 'Manager: not owner or manager'
    if arg2 > 10^6:
        revert with 0, 'Manager: fee too high'
    providerFee[address(arg1)] = arg2
}

function sub_3d9b8ab5(?) payable {
    if not sub_b1d98b04[msg.sender]:
        revert with 0, 'Manager: amount is zero'
    sub_b1d98b04[msg.sender] = 0
    require ext_code.size(address(sub_2dd39c55[uint128(stor1.field_0)]))
    call address(sub_2dd39c55[uint128(stor1.field_0)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_b1d98b04[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4d832750(?) payable {
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

function sub_8809fc9f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        if not roleAdmin[0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08][address(msg.sender)].field_0:
            revert with 0, 'Manager: not owner or manager'
    if not sub_b1d98b04[address(arg1)]:
        revert with 0, 'Manager: amount is zero'
    sub_b1d98b04[address(arg1)] = 0
    require ext_code.size(address(sub_2dd39c55[uint128(stor1.field_0)]))
    call address(sub_2dd39c55[uint128(stor1.field_0)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_b1d98b04[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
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
    s = roleAdmin[arg1].field_256
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
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
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
    s = roleAdmin[arg1].field_256
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
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}



}
