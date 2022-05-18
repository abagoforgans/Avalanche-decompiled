contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address proxyAdminAddress; offset 16
uint256 stor0; offset 8
address governanceAddress;
array of address addressArrayStorage;
mapping of uint256 uint256Storage;
array of uint256 uint256ArrayStorage;
mapping of uint8 stor13;
array of uint256 stor14;
address _treasuryAddress;
array of struct admin;
mapping of uint256 stor4;
array of struct operator;
mapping of uint256 stor6;
address swapCenterAddress;
uint8 stor8; offset 160
address registryAddress;
mapping of address addressStorage;

function addressStorage(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return addressStorage[arg1]
}

function getOperator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= operator.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return address(operator[arg1].field_0)
}

function getAdmin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= admin.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return address(admin[arg1].field_0)
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function addressArrayStorage(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(addressArrayStorage[arg1])
    return address(addressArrayStorage[arg1][arg2])
}

function boolStorage(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function proxyAdmin() payable {
    return proxyAdminAddress
}

function uint256Storage(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256Storage[arg1]
}

function governance() payable {
    return governanceAddress
}

function numOfOperator() payable {
    return operator.length
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function registryLocked() payable {
    return bool(stor8)
}

function registry() payable {
    return registryAddress
}

function boolArrayStorage(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stor14[arg1]
    return bool(stor('array', ('div', 0.03125, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'stor14', 14)))[uint8(arg2)])
}

function numOfAdmin() payable {
    return admin.length
}

function swapCenter() payable {
    return swapCenterAddress
}

function uint256ArrayStorage(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256ArrayStorage[arg1]
    return uint256ArrayStorage[arg1][arg2]
}

function _treasury() payable {
    return _treasuryAddress
}

function _fallback() payable {
    revert
}

function treasury() payable {
    if _treasuryAddress:
        return _treasuryAddress
    return governanceAddress
}

function lockRegistry() payable {
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    emit RegistryLocked()
    stor8 = 1
}

function setUint256(bytes32 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    stor13[arg1] = uint8(arg2)
}

function setUint256(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    uint256Storage[arg1] = arg2
}

function setAddress(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    addressStorage[arg1] = arg2
}

function setSwapCenter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    emit SwapCenterChanged(swapCenterAddress, arg1);
    swapCenterAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    require arg1
    emit TreasuryChanged(_treasuryAddress, arg1);
    _treasuryAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    if not arg1:
        revert with 0, '!empty'
    emit GovernanceChanged(governanceAddress, arg1);
    governanceAddress = arg1
}

function setRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    if stor8:
        revert with 0, 'StorageV1: registry locked'
    if not arg1:
        revert with 0, '!empty'
    emit RegistryChanged(registryAddress, arg1);
    registryAddress = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    emit AdminAdded(arg1);
    if stor4[address(arg1)]:
        return 0
    admin.length++
    address(admin[admin.length].field_0) = arg1
    Mask(96, 0, admin[admin.length].field_160) = 0
    stor4[address(arg1)] = admin.length
    return 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    emit AdminRetired(arg1);
    if not stor4[address(arg1)]:
        return 0
    require admin.length - 1 < admin.length
    require stor4[address(arg1)] - 1 < admin.length
    admin[stor4[address(arg1)]].field_0 = admin[admin.length].field_0
    stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
    require admin.length
    admin[admin.length].field_0 = 0
    admin.length--
    stor4[address(arg1)] = 0
    return 1
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if not stor4[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6453746f7261676556313a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[198 len 30]
    emit OperatorAdded(arg1);
    if stor6[address(arg1)]:
        return 0
    operator.length++
    address(operator[operator.length].field_0) = arg1
    Mask(96, 0, operator[operator.length].field_160) = 0
    stor6[address(arg1)] = operator.length
    return 1
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, '!empty'
    if not arg2:
        revert with 0, '!empty'
    governanceAddress = arg1
    proxyAdminAddress = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if not stor4[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6453746f7261676556313a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[198 len 30]
    emit OperatorRetired(arg1);
    if not stor6[address(arg1)]:
        return 0
    require operator.length - 1 < operator.length
    require stor6[address(arg1)] - 1 < operator.length
    operator[stor6[address(arg1)]].field_0 = operator[operator.length].field_0
    stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
    require operator.length
    operator[operator.length].field_0 = 0
    operator.length--
    stor6[address(arg1)] = 0
    return 1
}

function setUint256Array(bytes32 arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    uint256ArrayStorage[arg1] = arg2.length
    if not arg2.length:
        idx = 0
        while uint256ArrayStorage[arg1] > idx:
            uint256ArrayStorage[arg1][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            uint256ArrayStorage[arg1][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256ArrayStorage[arg1] > idx:
            uint256ArrayStorage[arg1][idx] = 0
            idx = idx + 1
            continue 
}

function setAddressArray(bytes32 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    uint256(addressArrayStorage[arg1]) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(addressArrayStorage[arg1]) > idx:
            uint256(addressArrayStorage[arg1][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            address(addressArrayStorage[arg1][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(addressArrayStorage[arg1]) > idx:
            uint256(addressArrayStorage[arg1][idx]) = 0
            idx = idx + 1
            continue 
}

function setBoolArray(bytes32 arg1, bool[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, 'nStorageV1: not governance'
    stor14[arg1] = arg2.length
    if not arg2.length:
        idx = 0
        while stor14[arg1] + 31 / 32 > idx:
            stor14[arg1][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            stor14[arg1] = bool(mem[idx]) * 256^s or !(255 * 256^s) and stor14[arg1]
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        s = sha3(sha3(arg1, 14))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg2.length) + 31) >> 5 * None + 3 / 32)
        while stor14[arg1] + 31 / 32 > idx:
            stor14[arg1][idx] = 0
            idx = idx + 1
            continue 
}



}
