contract main {




// =====================  Runtime code  =====================


#
#  - sub_5f4e88ef(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint64 stor51;
uint128 stor51; offset 64
address owner;
uint8 paused;
address stor151;
array of uint256 stor203;
array of uint256 stor204;
array of uint256 stor205;

function getDocumentSignerAtIndex(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if arg2 >= numberOfSignersForDocument[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return address(stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 202))) + arg2].field_0)
}

function getNumberOfSignersForDocument(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_1536
}

function getDocumentECSignatureForSignerAtIndex(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not numberOfSignersForDocument[arg2].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if not arg1:
        revert with 0, 'ZERO_SENDER'
    if arg3 >= numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1)].field_0:
        revert with 0, 'OUT_OF_BOUNDS'
    if not arg1:
        revert with 0, 'ZERO_SENDER'
    return numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1, arg3)].field_0, 
           numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1, arg3)].field_256,
           uint8(numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1, arg3)].field_512)
}

function getDocumentMetaStorageInfo(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, 
           numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256,
           numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512
}

function getDocumentDocStorageInfo(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_768, 
           numberOfSignersForDocument[arg1].field_1024,
           numberOfSignersForDocument[arg1].field_1280
}

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function getDocumentBasicInfo(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return address(numberOfSignersForDocument[arg1].field_3584), 
           numberOfSignersForDocument[arg1].field_3840,
           numberOfSignersForDocument[arg1].field_0,
           numberOfSignersForDocument[arg1].field_256,
           numberOfSignersForDocument[arg1].field_1536
}

function getDocumentStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_1536, 
           numberOfSignersForDocument[arg1][9][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512)].field_0
}

function getNumberOfDocumentECSignaturesForSigner(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not numberOfSignersForDocument[arg2].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if not arg1:
        revert with 0, 'ZERO_SENDER'
    return numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1)].field_0
}

function getDocumentCommentsForSigner(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not numberOfSignersForDocument[arg2].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if not arg1:
        revert with 0, 'ZERO_SENDER'
    return numberOfSignersForDocument[arg2][13][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1)].field_0, 
           numberOfSignersForDocument[arg2][13][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1)].field_256,
           numberOfSignersForDocument[arg2][13][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, arg1)].field_512
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor151)
}

function getNumOfDocumentsArchived() payable {
    if stor151 != msg.sender:
        return stor205[address(msg.sender)]
    return stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
}

function getNumOfDocumentsCreatedByMe() payable {
    if stor151 != msg.sender:
        return stor203[address(msg.sender)]
    return stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
}

function getNumOfDocumentsSharedWithMe() payable {
    if stor151 != msg.sender:
        return stor204[address(msg.sender)]
    return stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
}

function hashSaltedDocumentMappingKey(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)
}

function sub_27d54db9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return sha3(arg1[all])
}

function renounceOwnership() payable {
    if stor151 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if stor151 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor151 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
    emit LogContractPaused()
}

function unpause() payable {
    if stor151 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor151 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
    emit LogContractUnpaused()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getDocumentArchivedAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor151 != msg.sender:
        if arg1 >= stor205[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        return stor205[address(msg.sender)][arg1]
    if arg1 >= stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96][arg1]
}

function getDocumentCreatedByMeAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor151 != msg.sender:
        if arg1 >= stor203[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        return stor203[address(msg.sender)][arg1]
    if arg1 >= stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][arg1]
}

function getDocumentSharedWithMeAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor151 != msg.sender:
        if arg1 >= stor204[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        return stor204[address(msg.sender)][arg1]
    if arg1 >= stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][arg1]
}

function sub_4cbf08ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    _3 = mem[160]
    mem[ceil32(arg1.length) + 128] = mem[128]
    mem[ceil32(arg1.length) + 160] = _3
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           0
}

function hashSaltedMetaDocumentMappingKey(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512)
}

function hashSaltedAddressMappingKey(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not arg2:
        revert with 0, 'ZERO_SENDER'
    return sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512, arg2)
}

function hashSaltedAddressWithIndexMappingKey(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not arg2:
        revert with 0, 'ZERO_SENDER'
    return sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512, arg2, arg3)
}

function sub_d1ca00a2(?) payable {
    require calldata.size - 4 >= 160
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
            revert with 0, 'UNAUTH'
    numberOfSignersForDocument[cd[4]][8][cd[36]].field_0 = cd[68]
    numberOfSignersForDocument[cd[4]][8][cd[36]].field_256 = cd[100]
    numberOfSignersForDocument[cd[4]][8][cd[36]].field_512 = cd[132]
    emit LogChangedMetadataStorage(cd[68], cd[100], cd[132], cd[4]);
}

function sub_17dc15a0(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] == address(cd[68])
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
            revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[cd[4]][10][cd[36]].field_0:
        revert with 0, 'NUM_SIG_EXISTS'
    numberOfSignersForDocument[cd[4]][10][cd[36]].field_0 = cd[100]
    emit LogSetNumberOfSignatureFields(cd[100], cd[4], address(cd[68]));
}

function setDocStorageForDocument(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if block.number > numberOfSignersForDocument[arg1].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if address(numberOfSignersForDocument[arg1].field_3584) != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[arg1].field_3584):
            revert with 0, 'UNAUTH'
    numberOfSignersForDocument[arg1].field_768 = arg2
    numberOfSignersForDocument[arg1].field_1024 = arg3
    numberOfSignersForDocument[arg1].field_1280 = arg4
    emit LogChangedDocumentStorage(arg2, arg3, arg4, arg1);
}

function newBasicDocument(bytes32 arg1, bytes32 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if paused:
        revert with 0, 'Pausable: paused'
    if numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_EXIST'
    numberOfSignersForDocument[arg1].field_3840 = arg2
    numberOfSignersForDocument[arg1].field_0 = block.number
    numberOfSignersForDocument[arg1].field_256 = arg3
    if stor151 != msg.sender:
        address(numberOfSignersForDocument[arg1].field_3584) = msg.sender
        numberOfSignersForDocument[arg1].field_512 = arg4
        if not stor203[address(msg.sender)][1][arg1]:
            stor203[address(msg.sender)]++
            stor203[address(msg.sender)][stor203[address(msg.sender)]] = arg1
            stor203[address(msg.sender)][1][arg1] = stor203[address(msg.sender)]
    else:
        uint64(numberOfSignersForDocument[arg1].field_3584) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, numberOfSignersForDocument[arg1].field_3648) = 0
        numberOfSignersForDocument[arg1].field_512 = arg4
        if not stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][arg1]:
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]++
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]] = arg1
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][arg1] = stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
    emit LogNewDocument(numberOfSignersForDocument[arg1].field_512, arg3, address(numberOfSignersForDocument[arg1].field_3584), arg1, numberOfSignersForDocument[arg1].field_3840);
}

function addSignerForDocument(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if block.number > numberOfSignersForDocument[arg1].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if address(numberOfSignersForDocument[arg1].field_3584) != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[arg1].field_3584):
            revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[arg1].field_512 <= numberOfSignersForDocument[arg1].field_1536:
        revert with 0, 'SIGNERS_FINALIZED'
    if not numberOfSignersForDocument[arg1][7][address(arg2)].field_0:
        numberOfSignersForDocument[arg1].field_1536++
        address(stor[numberOfSignersForDocument[arg1].field_1536 + ('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 202)))].field_0) = arg2
        Mask(96, 0, stor[numberOfSignersForDocument[arg1].field_1536 + ('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 202)))].field_160) = 0
        numberOfSignersForDocument[arg1][7][address(arg2)].field_0 = numberOfSignersForDocument[arg1].field_1536
    if address(numberOfSignersForDocument[arg1].field_3584) != arg2:
        if not stor204[address(arg2)][1][arg1]:
            stor204[address(arg2)]++
            stor204[address(arg2)][stor204[address(arg2)]] = arg1
            stor204[address(arg2)][1][arg1] = stor204[address(arg2)]
    emit LogAddedNewSignerForDocument(arg2, arg1);
}

function sub_184eee48(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[220 len arg3.length] = arg3[all]
    mem[arg3.length + 220] = 0
    if ext_code.size(arg1):
        require ext_code.size(address(arg1))
        staticcall address(arg1) with:
                gas gas_remaining wei
               args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            return 0
        require return_data.size >= 32
        require not 0, ext_call.return_data[4 len 28]
        return not 0x1626ba7e00000000000000000000000000000000000000000000000000000000
    if 65 == arg3.length:
        if mem[252] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg3.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[252]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[252]) >> 255) + 27) != 27:
        if uint8((bool(mem[252]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), (bool(mem[252]) >> 255) + 27 << 248, mem[220], uint255(mem[252])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return (address(signer) == address(arg1))
}

function setDocumentCommentsForSigner(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if block.number > numberOfSignersForDocument[arg1].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if not numberOfSignersForDocument[arg1][7][address(msg.sender)].field_0:
            if stor151 != msg.sender:
                if address(numberOfSignersForDocument[arg1].field_3584) != msg.sender:
                    revert with 0, 'COMMENT_UNAUTH'
            else:
                if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[arg1].field_3584):
                    revert with 0, 'COMMENT_UNAUTH'
    else:
        if not numberOfSignersForDocument[arg1][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            if stor151 != msg.sender:
                if address(numberOfSignersForDocument[arg1].field_3584) != msg.sender:
                    revert with 0, 'COMMENT_UNAUTH'
            else:
                if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[arg1].field_3584):
                    revert with 0, 'COMMENT_UNAUTH'
    if numberOfSignersForDocument[arg1][13][arg2].field_0:
        if stor151 != msg.sender:
            emit LogEditedCommentOnDocument(arg3, arg4, arg5, msg.sender, arg1);
        else:
            emit LogEditedCommentOnDocument(arg3, arg4, arg5, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
    else:
        if stor151 != msg.sender:
            emit LogLeftNewCommentOnDocument(arg3, arg4, arg5, msg.sender, arg1);
        else:
            emit LogLeftNewCommentOnDocument(arg3, arg4, arg5, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
    numberOfSignersForDocument[arg1][13][arg2].field_0 = arg3
    numberOfSignersForDocument[arg1][13][arg2].field_256 = arg4
    numberOfSignersForDocument[arg1][13][arg2].field_512 = arg5
}

function sub_1741d3f0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if idx >= ('cd', 132).length:
            revert with 0, 50
        if stor151 != msg.sender:
            if not numberOfSignersForDocument[cd[4]][7][address(msg.sender)].field_0:
                if stor151 != msg.sender:
                    if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                        revert with 0, 'COMMENT_UNAUTH'
                else:
                    if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                        revert with 0, 'COMMENT_UNAUTH'
        else:
            if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                if stor151 != msg.sender:
                    if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                        revert with 0, 'COMMENT_UNAUTH'
                else:
                    if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                        revert with 0, 'COMMENT_UNAUTH'
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(cd[4], 202) + 13
        mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 32] = cd[((32 * idx) + cd[100] + 36)]
        mem[mem[64] + 64] = cd[((32 * idx) + cd[132] + 36)]
        if numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_0:
            if stor151 != msg.sender:
                emit LogEditedCommentOnDocument(cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], cd[((32 * idx) + cd[132] + 36)], msg.sender, cd[4]);
            else:
                emit LogEditedCommentOnDocument(cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], cd[((32 * idx) + cd[132] + 36)], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        else:
            if stor151 != msg.sender:
                emit LogLeftNewCommentOnDocument(cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], cd[((32 * idx) + cd[132] + 36)], msg.sender, cd[4]);
            else:
                emit LogLeftNewCommentOnDocument(cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], cd[((32 * idx) + cd[132] + 36)], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
        numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_256 = cd[((32 * idx) + cd[100] + 36)]
        numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_512 = cd[((32 * idx) + cd[132] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_765a729a(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'BAD_ARRAYS'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'BAD_ARRAYS'
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if paused:
            revert with 0, 'Pausable: paused'
        if not numberOfSignersForDocument[cd[4]].field_0:
            revert with 0, 'DOC_NOT_EXIST'
        if numberOfSignersForDocument[cd[4]].field_256:
            if block.number > numberOfSignersForDocument[cd[4]].field_256:
                revert with 0, 'DOC_EXPIRED'
        if stor151 != msg.sender:
            if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                revert with 0, 'UNAUTH'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                revert with 0, 'UNAUTH'
        if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
            revert with 0, 'SIGNERS_FINALIZED'
        if not numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[68] + 36)])].field_0:
            numberOfSignersForDocument[cd[4]].field_1536++
            address(stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
            Mask(96, 0, stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_160) = 0
            numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[68] + 36)])].field_0 = numberOfSignersForDocument[cd[4]].field_1536
        if address(numberOfSignersForDocument[cd[4]].field_3584) != address(cd[((32 * idx) + cd[68] + 36)]):
            if not stor204[address(cd[((32 * idx) + cd[68] + 36)])][1][cd[4]]:
                stor204[address(cd[((32 * idx) + cd[68] + 36)])]++
                stor204[address(cd[((32 * idx) + cd[68] + 36)])][stor204[address(cd[((32 * idx) + cd[68] + 36)])]] = cd[4]
                stor204[address(cd[((32 * idx) + cd[68] + 36)])][1][cd[4]] = stor204[address(cd[((32 * idx) + cd[68] + 36)])]
        emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[68] + 36)]), cd[4]);
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if paused:
            revert with 0, 'Pausable: paused'
        if not numberOfSignersForDocument[cd[4]].field_0:
            revert with 0, 'DOC_NOT_EXIST'
        if numberOfSignersForDocument[cd[4]].field_256:
            if block.number > numberOfSignersForDocument[cd[4]].field_256:
                revert with 0, 'DOC_EXPIRED'
        if stor151 != msg.sender:
            if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                revert with 0, 'UNAUTH'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                revert with 0, 'UNAUTH'
        if numberOfSignersForDocument[cd[4]][10][cd[((32 * idx) + cd[36] + 36)]].field_0:
            revert with 0, 'NUM_SIG_EXISTS'
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(cd[4], 202) + 10
        numberOfSignersForDocument[cd[4]][10][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[100] + 36)]
        mem[96] = cd[((32 * idx) + cd[100] + 36)]
        emit LogSetNumberOfSignatureFields(cd[((32 * idx) + cd[100] + 36)], cd[4], address(cd[((32 * idx) + cd[68] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
    if stor151 != msg.sender:
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        uint64(stor51.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, stor51.field_64) = 0
        emit OwnershipTransferred(0, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if uint8(stor0.field_8):
        paused = 0
        stor151 = arg1
    else:
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            stor151 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                stor151 = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    stor151 = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    paused = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor151 = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor151 = arg1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor151 = arg1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor151 = arg1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}

function aggregateGetAllCommentsOfAllSigners(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    mem[0] = arg1
    mem[32] = 202
    if numberOfSignersForDocument[arg1].field_1536 > test266151307():
        revert with 0, 65
    mem[96] = numberOfSignersForDocument[arg1].field_1536
    mem[64] = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
    if not numberOfSignersForDocument[arg1].field_1536:
        idx = 0
        while idx < numberOfSignersForDocument[arg1].field_1536:
            if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
                revert with 0, 'ZERO_SENDER'
            mem[0] = arg1
            mem[32] = 202
            _82 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
            mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
            mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
            _85 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            mem[0] = sha3(mem[_85 + 32 len mem[_85]])
            mem[_82 + 192] = arg1
            mem[_82 + 224] = numberOfSignersForDocument[arg1].field_768
            mem[_82 + 256] = numberOfSignersForDocument[arg1].field_1024
            mem[_82 + 288] = numberOfSignersForDocument[arg1].field_1280
            mem[_82 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
            mem[_82 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
            mem[_82 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
            mem[_82 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
            mem[_82 + 160] = 244
            _100 = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, uint64(numberOfSignersForDocument[arg1][idx + 6].field_0))
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = address(numberOfSignersForDocument[arg1][idx + 6].field_0)
            mem[0] = _100
            mem[32] = sha3(arg1, 202) + 13
            mem[64] = _82 + 532
            mem[_82 + 436] = numberOfSignersForDocument[arg1][13][_100].field_0
            mem[_82 + 468] = numberOfSignersForDocument[arg1][13][_100].field_256
            mem[_82 + 500] = numberOfSignersForDocument[arg1][13][_100].field_512
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = _82 + 436
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _67 = mem[64]
        mem[mem[64]] = 32
        _69 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _69:
            _127 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _129 = mem[_127 + 32]
            mem[t + 32] = mem[mem[_127 + 32]]
            mem[t + 64] = mem[_129 + 32]
            mem[t + 96] = mem[_129 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _67 + (128 * _69) + -mem[64] + 64
    mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 128] = 0
    mem[64] = (32 * numberOfSignersForDocument[arg1].field_1536) + 288
    mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 192] = 0
    mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 224] = 0
    mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 256] = 0
    mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 160] = (32 * numberOfSignersForDocument[arg1].field_1536) + 192
    mem[var21002] = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
    s = (32 * numberOfSignersForDocument[arg1].field_1536) + 160
    s = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
    s = var21002
    idx = var21003
    while idx - 1:
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 0
        mem[64] = mem[64] + 96
        mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 192] = 0
        mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 224] = 0
        mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 256] = 0
        mem[_166 + 32] = (32 * numberOfSignersForDocument[arg1].field_1536) + 192
        mem[s + 32] = _166
        s = _166 + 32
        s = _166
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < numberOfSignersForDocument[arg1].field_1536:
        if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
            revert with 0, 'ZERO_SENDER'
        mem[0] = arg1
        mem[32] = 202
        _209 = mem[64]
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
        mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
        mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
        _211 = mem[64]
        mem[mem[64]] = 128
        mem[64] = mem[64] + 160
        mem[0] = sha3(mem[_211 + 32 len mem[_211]])
        mem[_209 + 192] = arg1
        mem[_209 + 224] = numberOfSignersForDocument[arg1].field_768
        mem[_209 + 256] = numberOfSignersForDocument[arg1].field_1024
        mem[_209 + 288] = numberOfSignersForDocument[arg1].field_1280
        mem[_209 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
        mem[_209 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
        mem[_209 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
        mem[_209 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
        mem[_209 + 160] = 244
        _218 = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, uint64(numberOfSignersForDocument[arg1][idx + 6].field_0))
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * idx) + 128]] = address(numberOfSignersForDocument[arg1][idx + 6].field_0)
        mem[0] = _218
        mem[32] = sha3(arg1, 202) + 13
        mem[64] = _209 + 532
        mem[_209 + 436] = numberOfSignersForDocument[arg1][13][_218].field_0
        mem[_209 + 468] = numberOfSignersForDocument[arg1][13][_218].field_256
        mem[_209 + 500] = numberOfSignersForDocument[arg1][13][_218].field_512
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * idx) + 128] + 32] = _209 + 436
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _196 = mem[64]
    mem[mem[64]] = 32
    _197 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _197:
        _225 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _227 = mem[_225 + 32]
        mem[t + 32] = mem[mem[_225 + 32]]
        mem[t + 64] = mem[_227 + 32]
        mem[t + 96] = mem[_227 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _196 + (128 * _197) + -mem[64] + 64
}

function sub_14036eca(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if paused:
            revert with 0, 'Pausable: paused'
        if not numberOfSignersForDocument[cd[((32 * idx) + cd[4] + 36)]].field_0:
            revert with 0, 'DOC_NOT_EXIST'
        if stor151 != msg.sender:
            if stor204[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                if stor204[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    if stor204[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] < 1:
                        revert with 0, 17
                    if stor204[address(msg.sender)] < 1:
                        revert with 0, 17
                    if stor204[address(msg.sender)] - 1 >= stor204[address(msg.sender)]:
                        revert with 0, 50
                    if stor204[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor204[address(msg.sender)]:
                        revert with 0, 50
                    stor204[address(msg.sender)][stor204[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]] = stor204[address(msg.sender)][stor204[address(msg.sender)]]
                    stor204[address(msg.sender)][1][stor204[address(msg.sender)][stor204[address(msg.sender)]]] = stor204[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]
                    if not stor204[address(msg.sender)]:
                        revert with 0, 49
                    stor204[address(msg.sender)][stor204[address(msg.sender)]] = 0
                    stor204[address(msg.sender)]--
                    stor204[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
        else:
            if stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]:
                if stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]:
                    if stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]] < 1:
                        revert with 0, 17
                    if stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                        revert with 0, 17
                    if stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96] - 1 >= stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 50
                    if stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 50
                    stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]] = stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]]
                    stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]]] = stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]
                    if not stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 49
                    stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]] = 0
                    stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                    stor204[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]] = 0
        if stor151 != msg.sender:
            if stor203[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                if stor203[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    if stor203[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] < 1:
                        revert with 0, 17
                    if stor203[address(msg.sender)] < 1:
                        revert with 0, 17
                    if stor203[address(msg.sender)] - 1 >= stor203[address(msg.sender)]:
                        revert with 0, 50
                    if stor203[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor203[address(msg.sender)]:
                        revert with 0, 50
                    stor203[address(msg.sender)][stor203[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]] = stor203[address(msg.sender)][stor203[address(msg.sender)]]
                    stor203[address(msg.sender)][1][stor203[address(msg.sender)][stor203[address(msg.sender)]]] = stor203[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]
                    if not stor203[address(msg.sender)]:
                        revert with 0, 49
                    stor203[address(msg.sender)][stor203[address(msg.sender)]] = 0
                    stor203[address(msg.sender)]--
                    stor203[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
        else:
            if stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]:
                if stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]:
                    if stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]] < 1:
                        revert with 0, 17
                    if stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                        revert with 0, 17
                    if stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96] - 1 >= stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 50
                    if stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 50
                    stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]] = stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]]
                    stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]]] = stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]
                    if not stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                        revert with 0, 49
                    stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]] = 0
                    stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                    stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]] = 0
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        if stor151 != msg.sender:
            mem[32] = sha3(address(msg.sender), 205) + 1
            if not stor205[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                stor205[address(msg.sender)]++
                stor205[address(msg.sender)][stor205[address(msg.sender)]] = cd[((32 * idx) + cd[4] + 36)]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = sha3(address(msg.sender), 205) + 1
                stor205[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = stor205[address(msg.sender)]
        else:
            mem[32] = sha3(Mask(64, 96, cd[(calldata.size - 20)]) << 96, 205) + 1
            if not stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]]:
                stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96]++
                stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96]] = cd[((32 * idx) + cd[4] + 36)]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = sha3(Mask(64, 96, cd[(calldata.size - 20)]) << 96, 205) + 1
                stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[((32 * idx) + cd[4] + 36)]] = stor205[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
        if stor151 != msg.sender:
            emit LogArchivedDocument(msg.sender, cd[((32 * idx) + cd[4] + 36)]);
        else:
            emit LogArchivedDocument(Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[((32 * idx) + cd[4] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0c2e1ab9(?) payable {
    require calldata.size - 4 >= 224
    require cd[196] == uint8(cd[196])
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if not numberOfSignersForDocument[cd[4]][7][address(msg.sender)].field_0:
            revert with 0, 'UNAUTH'
    else:
        if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[cd[4]].field_512 != numberOfSignersForDocument[cd[4]].field_1536:
        revert with 0, 'SIGNERS_NOT_FINALIZED'
    if cd[36] >= numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
        revert with 0, 'OUT_OF_BOUNDS'
    if stor151 != msg.sender:
        if not msg.sender:
            revert with 0, 'ZERO_SENDER'
        numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender, cd[36])].field_0 = cd[132]
        numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender, cd[36])].field_256 = cd[164]
        uint8(numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender, cd[36])].field_512) = uint8(cd[196])
        emit LogSignedDocumentSignatureField(cd[36], cd[4], msg.sender);
        if not numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender, cd[36])].field_0:
            if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                revert with 0, 17
            numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
            if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0:
                    numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                    address(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = msg.sender
                    Mask(96, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_160) = 0
                    numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                emit LogSignedDocument(cd[4], msg.sender);
        return not bool(numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender, cd[36])].field_0)
    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
        revert with 0, 'ZERO_SENDER'
    numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[36])].field_0 = cd[132]
    numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[36])].field_256 = cd[164]
    uint8(numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[36])].field_512) = uint8(cd[196])
    emit LogSignedDocumentSignatureField(cd[36], cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if not numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[36])].field_0:
        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
            revert with 0, 17
        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                uint64(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                Mask(192, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_64) = 0
                numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
            emit LogSignedDocument(cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    return not bool(numberOfSignersForDocument[cd[4]][12][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[36])].field_0)
}

function sub_f865897c(?) payable {
    require calldata.size - 4 >= 416
    require calldata.size >= 228
    require 420 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_EXIST'
    numberOfSignersForDocument[cd[4]].field_3840 = cd[36]
    numberOfSignersForDocument[cd[4]].field_0 = block.number
    numberOfSignersForDocument[cd[4]].field_256 = cd[68]
    if stor151 != msg.sender:
        address(numberOfSignersForDocument[cd[4]].field_3584) = msg.sender
        numberOfSignersForDocument[cd[4]].field_512 = cd[100]
        if not stor203[address(msg.sender)][1][cd[4]]:
            stor203[address(msg.sender)]++
            stor203[address(msg.sender)][stor203[address(msg.sender)]] = cd[4]
            stor203[address(msg.sender)][1][cd[4]] = stor203[address(msg.sender)]
    else:
        uint64(numberOfSignersForDocument[cd[4]].field_3584) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, numberOfSignersForDocument[cd[4]].field_3648) = 0
        numberOfSignersForDocument[cd[4]].field_512 = cd[100]
        if not stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[4]]:
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]++
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]] = cd[4]
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[4]] = stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
    emit LogNewDocument(numberOfSignersForDocument[cd[4]].field_512, cd[68], address(numberOfSignersForDocument[cd[4]].field_3584), cd[4], numberOfSignersForDocument[cd[4]].field_3840);
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
            revert with 0, 'UNAUTH'
    numberOfSignersForDocument[cd[4]].field_768 = cd[132]
    numberOfSignersForDocument[cd[4]].field_1024 = cd[228]
    numberOfSignersForDocument[cd[4]].field_1280 = cd[260]
    emit LogChangedDocumentStorage(cd[132], cd[228], cd[260], cd[4]);
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
            revert with 0, 'UNAUTH'
    numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0 = cd[164]
    numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256 = cd[292]
    numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512 = cd[324]
    emit LogChangedMetadataStorage(cd[164], cd[292], cd[324], cd[4]);
    if stor151 != msg.sender:
        if not msg.sender:
            revert with 0, 'ZERO_SENDER'
        if stor151 != msg.sender:
            if not numberOfSignersForDocument[cd[4]][7][address(msg.sender)].field_0:
                if stor151 != msg.sender:
                    if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                        revert with 0, 'COMMENT_UNAUTH'
                else:
                    if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                        revert with 0, 'COMMENT_UNAUTH'
        else:
            if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                if stor151 != msg.sender:
                    if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                        revert with 0, 'COMMENT_UNAUTH'
                else:
                    if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                        revert with 0, 'COMMENT_UNAUTH'
        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0:
            if stor151 != msg.sender:
                emit LogEditedCommentOnDocument(cd[196], cd[356], cd[388], msg.sender, cd[4]);
            else:
                emit LogEditedCommentOnDocument(cd[196], cd[356], cd[388], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        else:
            if stor151 != msg.sender:
                emit LogLeftNewCommentOnDocument(cd[196], cd[356], cd[388], msg.sender, cd[4]);
            else:
                emit LogLeftNewCommentOnDocument(cd[196], cd[356], cd[388], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0 = cd[196]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_256 = cd[356]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_512 = cd[388]
    else:
        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ZERO_SENDER'
        if stor151 != msg.sender:
            if not numberOfSignersForDocument[cd[4]][7][address(msg.sender)].field_0:
                if stor151 != msg.sender:
                    if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                        revert with 0, 'COMMENT_UNAUTH'
                else:
                    if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                        revert with 0, 'COMMENT_UNAUTH'
        else:
            if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                if stor151 != msg.sender:
                    if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                        revert with 0, 'COMMENT_UNAUTH'
                else:
                    if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                        revert with 0, 'COMMENT_UNAUTH'
        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0:
            if stor151 != msg.sender:
                emit LogEditedCommentOnDocument(cd[196], cd[356], cd[388], msg.sender, cd[4]);
            else:
                emit LogEditedCommentOnDocument(cd[196], cd[356], cd[388], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        else:
            if stor151 != msg.sender:
                emit LogLeftNewCommentOnDocument(cd[196], cd[356], cd[388], msg.sender, cd[4]);
            else:
                emit LogLeftNewCommentOnDocument(cd[196], cd[356], cd[388], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0 = cd[196]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_256 = cd[356]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_512 = cd[388]
}

function aggregateGetIsSignedForAllSignatureFields(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    mem[0] = arg1
    mem[32] = 202
    if numberOfSignersForDocument[arg1].field_1536 > test266151307():
        revert with 0, 65
    mem[96] = numberOfSignersForDocument[arg1].field_1536
    mem[64] = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
    if not numberOfSignersForDocument[arg1].field_1536:
        idx = 0
        while idx < numberOfSignersForDocument[arg1].field_1536:
            if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
                revert with 0, 'ZERO_SENDER'
            mem[0] = arg1
            mem[32] = 202
            _154 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
            mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
            mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
            _162 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            mem[0] = sha3(mem[_162 + 32 len mem[_162]])
            mem[_154 + 192] = arg1
            mem[_154 + 224] = numberOfSignersForDocument[arg1].field_768
            mem[_154 + 256] = numberOfSignersForDocument[arg1].field_1024
            mem[_154 + 288] = numberOfSignersForDocument[arg1].field_1280
            mem[_154 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
            mem[_154 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
            mem[_154 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
            mem[_154 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
            mem[_154 + 160] = 244
            mem[0] = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, uint64(numberOfSignersForDocument[arg1][idx + 6].field_0))
            mem[32] = sha3(arg1, 202) + 10
            _175 = sha3(mem[0], sha3(arg1, 202) + 10)
            if numberOfSignersForDocument[arg1][10][mem[0]].field_0 > test266151307():
                revert with 0, 65
            mem[_154 + 436] = numberOfSignersForDocument[arg1][10][mem[0]].field_0
            mem[64] = _154 + (32 * numberOfSignersForDocument[arg1][10][mem[0]].field_0) + 468
            if not numberOfSignersForDocument[arg1][10][mem[0]].field_0:
                s = 0
                while s < stor[_175]:
                    if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg1
                    mem[32] = 202
                    _292 = mem[64]
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
                    _297 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_297 + 32 len mem[_297]])
                    mem[_292 + 192] = arg1
                    mem[_292 + 224] = numberOfSignersForDocument[arg1].field_768
                    mem[_292 + 256] = numberOfSignersForDocument[arg1].field_1024
                    mem[_292 + 288] = numberOfSignersForDocument[arg1].field_1280
                    mem[_292 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
                    mem[_292 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
                    mem[_292 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
                    mem[_292 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
                    mem[_292 + 436] = s
                    mem[_292 + 160] = 276
                    mem[64] = _292 + 468
                    mem[0] = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, address(numberOfSignersForDocument[arg1][idx + 6].field_0), s)
                    mem[32] = sha3(arg1, 202) + 12
                    if s >= mem[_154 + 436]:
                        revert with 0, 50
                    if numberOfSignersForDocument[arg1][12][mem[0]].field_0:
                        mem[(32 * s) + _154 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_0)
                    else:
                        if numberOfSignersForDocument[arg1][12][mem[0]].field_256:
                            mem[(32 * s) + _154 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_256)
                        else:
                            mem[(32 * s) + _154 + 468] = bool(uint8(numberOfSignersForDocument[arg1][12][mem[0]].field_512))
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            else:
                mem[_154 + 468 len 32 * numberOfSignersForDocument[arg1][10][mem[0]].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg1][10][mem[0]].field_0]
                s = 0
                while s < stor[_175]:
                    if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg1
                    mem[32] = 202
                    _294 = mem[64]
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
                    _300 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_300 + 32 len mem[_300]])
                    mem[_294 + 192] = arg1
                    mem[_294 + 224] = numberOfSignersForDocument[arg1].field_768
                    mem[_294 + 256] = numberOfSignersForDocument[arg1].field_1024
                    mem[_294 + 288] = numberOfSignersForDocument[arg1].field_1280
                    mem[_294 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
                    mem[_294 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
                    mem[_294 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
                    mem[_294 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
                    mem[_294 + 436] = s
                    mem[_294 + 160] = 276
                    mem[64] = _294 + 468
                    mem[0] = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, address(numberOfSignersForDocument[arg1][idx + 6].field_0), s)
                    mem[32] = sha3(arg1, 202) + 12
                    if s >= mem[_154 + 436]:
                        revert with 0, 50
                    if numberOfSignersForDocument[arg1][12][mem[0]].field_0:
                        mem[(32 * s) + _154 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_0)
                    else:
                        if numberOfSignersForDocument[arg1][12][mem[0]].field_256:
                            mem[(32 * s) + _154 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_256)
                        else:
                            mem[(32 * s) + _154 + 468] = bool(uint8(numberOfSignersForDocument[arg1][12][mem[0]].field_512))
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = address(numberOfSignersForDocument[arg1][idx + 6].field_0)
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = _154 + 436
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = 32
        _141 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _141:
            mem[u] = t + -_140 - 64
            _273 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _275 = mem[_273 + 32]
            mem[t + 32] = 64
            _276 = mem[_275]
            mem[t + 64] = mem[_275]
            w = t + 96
            v = 0
            x = _275 + 32
            while v < _276:
                mem[w] = bool(mem[x])
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _276) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * numberOfSignersForDocument[arg1].field_1536) + 192
        mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 128] = 0
        mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 160] = 96
        mem[var17001] = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 128] = 0
            mem[(32 * numberOfSignersForDocument[arg1].field_1536) + 160] = 96
            mem[s + 32] = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < numberOfSignersForDocument[arg1].field_1536:
            if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
                revert with 0, 'ZERO_SENDER'
            mem[0] = arg1
            mem[32] = 202
            _400 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
            mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
            mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
            _402 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            mem[0] = sha3(mem[_402 + 32 len mem[_402]])
            mem[_400 + 192] = arg1
            mem[_400 + 224] = numberOfSignersForDocument[arg1].field_768
            mem[_400 + 256] = numberOfSignersForDocument[arg1].field_1024
            mem[_400 + 288] = numberOfSignersForDocument[arg1].field_1280
            mem[_400 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
            mem[_400 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
            mem[_400 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
            mem[_400 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
            mem[_400 + 160] = 244
            mem[0] = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, uint64(numberOfSignersForDocument[arg1][idx + 6].field_0))
            mem[32] = sha3(arg1, 202) + 10
            _410 = sha3(mem[0], sha3(arg1, 202) + 10)
            if numberOfSignersForDocument[arg1][10][mem[0]].field_0 > test266151307():
                revert with 0, 65
            mem[_400 + 436] = numberOfSignersForDocument[arg1][10][mem[0]].field_0
            mem[64] = _400 + (32 * numberOfSignersForDocument[arg1][10][mem[0]].field_0) + 468
            if not numberOfSignersForDocument[arg1][10][mem[0]].field_0:
                s = 0
                while s < stor[_410]:
                    if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg1
                    mem[32] = 202
                    _473 = mem[64]
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
                    _478 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_478 + 32 len mem[_478]])
                    mem[_473 + 192] = arg1
                    mem[_473 + 224] = numberOfSignersForDocument[arg1].field_768
                    mem[_473 + 256] = numberOfSignersForDocument[arg1].field_1024
                    mem[_473 + 288] = numberOfSignersForDocument[arg1].field_1280
                    mem[_473 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
                    mem[_473 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
                    mem[_473 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
                    mem[_473 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
                    mem[_473 + 436] = s
                    mem[_473 + 160] = 276
                    mem[64] = _473 + 468
                    mem[0] = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, address(numberOfSignersForDocument[arg1][idx + 6].field_0), s)
                    mem[32] = sha3(arg1, 202) + 12
                    if s >= mem[_400 + 436]:
                        revert with 0, 50
                    if numberOfSignersForDocument[arg1][12][mem[0]].field_0:
                        mem[(32 * s) + _400 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_0)
                    else:
                        if numberOfSignersForDocument[arg1][12][mem[0]].field_256:
                            mem[(32 * s) + _400 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_256)
                        else:
                            mem[(32 * s) + _400 + 468] = bool(uint8(numberOfSignersForDocument[arg1][12][mem[0]].field_512))
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            else:
                mem[_400 + 468 len 32 * numberOfSignersForDocument[arg1][10][mem[0]].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg1][10][mem[0]].field_0]
                s = 0
                while s < stor[_410]:
                    if not address(numberOfSignersForDocument[arg1][idx + 6].field_0):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg1
                    mem[32] = 202
                    _475 = mem[64]
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg1].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg1].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg1].field_1280
                    _481 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_481 + 32 len mem[_481]])
                    mem[_475 + 192] = arg1
                    mem[_475 + 224] = numberOfSignersForDocument[arg1].field_768
                    mem[_475 + 256] = numberOfSignersForDocument[arg1].field_1024
                    mem[_475 + 288] = numberOfSignersForDocument[arg1].field_1280
                    mem[_475 + 320] = numberOfSignersForDocument[arg1][8][mem[0]].field_0
                    mem[_475 + 352] = numberOfSignersForDocument[arg1][8][mem[0]].field_256
                    mem[_475 + 384] = numberOfSignersForDocument[arg1][8][mem[0]].field_512
                    mem[_475 + 416] = Mask(160, 96, address(numberOfSignersForDocument[arg1][idx + 6].field_0))
                    mem[_475 + 436] = s
                    mem[_475 + 160] = 276
                    mem[64] = _475 + 468
                    mem[0] = sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][mem[0]].field_0, numberOfSignersForDocument[arg1][8][mem[0]].field_256, numberOfSignersForDocument[arg1][8][mem[0]].field_512, address(numberOfSignersForDocument[arg1][idx + 6].field_0), s)
                    mem[32] = sha3(arg1, 202) + 12
                    if s >= mem[_400 + 436]:
                        revert with 0, 50
                    if numberOfSignersForDocument[arg1][12][mem[0]].field_0:
                        mem[(32 * s) + _400 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_0)
                    else:
                        if numberOfSignersForDocument[arg1][12][mem[0]].field_256:
                            mem[(32 * s) + _400 + 468] = bool(numberOfSignersForDocument[arg1][12][mem[0]].field_256)
                        else:
                            mem[(32 * s) + _400 + 468] = bool(uint8(numberOfSignersForDocument[arg1][12][mem[0]].field_512))
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = address(numberOfSignersForDocument[arg1][idx + 6].field_0)
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = _400 + 436
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _388 = mem[64]
        mem[mem[64]] = 32
        _389 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _389:
            mem[u] = t + -_388 - 64
            _454 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _456 = mem[_454 + 32]
            mem[t + 32] = 64
            _457 = mem[_456]
            mem[t + 64] = mem[_456]
            w = t + 96
            v = 0
            x = _456 + 32
            while v < _457:
                mem[w] = bool(mem[x])
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _457) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_8124bfcb(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require test266151307() >= cd[132]
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require test266151307() >= cd[164]
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require test266151307() >= cd[196]
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if ('cd', 164).length != ('cd', 132).length:
        revert with 0, 'BAD_ARRAYS'
    if ('cd', 196).length != ('cd', 132).length:
        revert with 0, 'BAD_ARRAYS'
    if ('cd', 132).length != ('cd', 36).length:
        revert with 0, 'BAD_ARRAYS'
    idx = 0
    while idx < ('cd', 132).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 132).length:
            revert with 0, 50
        if idx >= ('cd', 164).length:
            revert with 0, 50
        if idx >= ('cd', 196).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[196] + 36)] == uint8(cd[((32 * idx) + cd[196] + 36)])
        if paused:
            revert with 0, 'Pausable: paused'
        if not numberOfSignersForDocument[cd[4]].field_0:
            revert with 0, 'DOC_NOT_EXIST'
        if not numberOfSignersForDocument[cd[4]].field_256:
            if stor151 != msg.sender:
                if not numberOfSignersForDocument[cd[4]][7][address(msg.sender)].field_0:
                    revert with 0, 'UNAUTH'
                if numberOfSignersForDocument[cd[4]].field_512 != numberOfSignersForDocument[cd[4]].field_1536:
                    revert with 0, 'SIGNERS_NOT_FINALIZED'
                if cd[((32 * idx) + cd[36] + 36)] >= numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                    revert with 0, 'OUT_OF_BOUNDS'
                if stor151 != msg.sender:
                    if not msg.sender:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _387 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _417 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_417 + 32 len mem[_417]])
                    mem[_387 + 192] = cd[4]
                    mem[_387 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_387 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_387 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_387 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_387 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_387 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_387 + 416] = address(msg.sender)
                    mem[_387 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_387 + 160] = 276
                    mem[64] = _387 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, msg.sender, cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_387 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], msg.sender);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = msg.sender
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                address(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = msg.sender
                                Mask(96, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_160) = 0
                                mem[0] = msg.sender
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], msg.sender);
                else:
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _357 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _388 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_388 + 32 len mem[_388]])
                    mem[_357 + 192] = cd[4]
                    mem[_357 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_357 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_357 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_357 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_357 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_357 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_357 + 416] = Mask(64, 96, cd[(calldata.size - 20)])
                    mem[_357 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_357 + 160] = 276
                    mem[64] = _357 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_357 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                uint64(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                Mask(192, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_64) = 0
                                mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            else:
                if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                    revert with 0, 'UNAUTH'
                if numberOfSignersForDocument[cd[4]].field_512 != numberOfSignersForDocument[cd[4]].field_1536:
                    revert with 0, 'SIGNERS_NOT_FINALIZED'
                if cd[((32 * idx) + cd[36] + 36)] >= numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                    revert with 0, 'OUT_OF_BOUNDS'
                if stor151 != msg.sender:
                    if not msg.sender:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _359 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _391 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_391 + 32 len mem[_391]])
                    mem[_359 + 192] = cd[4]
                    mem[_359 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_359 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_359 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_359 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_359 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_359 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_359 + 416] = address(msg.sender)
                    mem[_359 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_359 + 160] = 276
                    mem[64] = _359 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, msg.sender, cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_359 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], msg.sender);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = msg.sender
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                address(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = msg.sender
                                Mask(96, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_160) = 0
                                mem[0] = msg.sender
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], msg.sender);
                else:
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _335 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _360 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_360 + 32 len mem[_360]])
                    mem[_335 + 192] = cd[4]
                    mem[_335 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_335 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_335 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_335 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_335 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_335 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_335 + 416] = Mask(64, 96, cd[(calldata.size - 20)])
                    mem[_335 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_335 + 160] = 276
                    mem[64] = _335 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_335 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                uint64(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                Mask(192, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_64) = 0
                                mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        else:
            if block.number > numberOfSignersForDocument[cd[4]].field_256:
                revert with 0, 'DOC_EXPIRED'
            if stor151 != msg.sender:
                if not numberOfSignersForDocument[cd[4]][7][address(msg.sender)].field_0:
                    revert with 0, 'UNAUTH'
                if numberOfSignersForDocument[cd[4]].field_512 != numberOfSignersForDocument[cd[4]].field_1536:
                    revert with 0, 'SIGNERS_NOT_FINALIZED'
                if cd[((32 * idx) + cd[36] + 36)] >= numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                    revert with 0, 'OUT_OF_BOUNDS'
                if stor151 != msg.sender:
                    if not msg.sender:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _410 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _438 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_438 + 32 len mem[_438]])
                    mem[_410 + 192] = cd[4]
                    mem[_410 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_410 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_410 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_410 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_410 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_410 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_410 + 416] = address(msg.sender)
                    mem[_410 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_410 + 160] = 276
                    mem[64] = _410 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, msg.sender, cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_410 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], msg.sender);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = msg.sender
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                address(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = msg.sender
                                Mask(96, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_160) = 0
                                mem[0] = msg.sender
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], msg.sender);
                else:
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _380 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _411 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_411 + 32 len mem[_411]])
                    mem[_380 + 192] = cd[4]
                    mem[_380 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_380 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_380 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_380 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_380 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_380 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_380 + 416] = Mask(64, 96, cd[(calldata.size - 20)])
                    mem[_380 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_380 + 160] = 276
                    mem[64] = _380 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_380 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                uint64(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                Mask(192, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_64) = 0
                                mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            else:
                if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                    revert with 0, 'UNAUTH'
                if numberOfSignersForDocument[cd[4]].field_512 != numberOfSignersForDocument[cd[4]].field_1536:
                    revert with 0, 'SIGNERS_NOT_FINALIZED'
                if cd[((32 * idx) + cd[36] + 36)] >= numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                    revert with 0, 'OUT_OF_BOUNDS'
                if stor151 != msg.sender:
                    if not msg.sender:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _382 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _414 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_414 + 32 len mem[_414]])
                    mem[_382 + 192] = cd[4]
                    mem[_382 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_382 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_382 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_382 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_382 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_382 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_382 + 416] = address(msg.sender)
                    mem[_382 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_382 + 160] = 276
                    mem[64] = _382 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, msg.sender, cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_382 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], msg.sender);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = msg.sender
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                address(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = msg.sender
                                Mask(96, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_160) = 0
                                mem[0] = msg.sender
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], msg.sender);
                else:
                    if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _354 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _383 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_383 + 32 len mem[_383]])
                    mem[_354 + 192] = cd[4]
                    mem[_354 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_354 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_354 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_354 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_354 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_354 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_354 + 416] = Mask(64, 96, cd[(calldata.size - 20)])
                    mem[_354 + 436] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_354 + 160] = 276
                    mem[64] = _354 + 468
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 202) + 12
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    numberOfSignersForDocument[cd[4]][12][mem[0]].field_256 = cd[((32 * idx) + cd[164] + 36)]
                    uint8(numberOfSignersForDocument[cd[4]][12][mem[0]].field_512) = uint8(cd[((32 * idx) + cd[196] + 36)])
                    mem[_354 + 468] = cd[((32 * idx) + cd[36] + 36)]
                    emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[36] + 36)], cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                    if not numberOfSignersForDocument[cd[4]][12][mem[0]].field_0:
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
                            revert with 0, 17
                        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
                        mem[0] = cd[68]
                        mem[32] = sha3(cd[4], 202) + 11
                        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
                            mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                            mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                            if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                                numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                                uint64(numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                Mask(192, 0, numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_64) = 0
                                mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                                mem[32] = sha3(cd[100], sha3(cd[4], 202) + 9) + 1
                                numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                            emit LogSignedDocument(cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3c0cf73b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg2].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if not numberOfSignersForDocument[arg2].field_256:
        if not address(arg1):
            revert with 0, 'ZERO_SENDER'
        mem[688 len arg4.length] = arg4[all]
        mem[arg4.length + 688] = 0
        if ext_code.size(arg1):
            require ext_code.size(address(arg1))
            staticcall address(arg1) with:
                    gas gas_remaining wei
                   args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1), arg3)), Array(len=arg4.length, data=arg4[all])
            if ext_call.success:
                require return_data.size >= 32
                require not 0, ext_call.return_data[4 len 28]
            revert with 0, 'BAD_SIGN'
        if 65 == arg4.length:
            if mem[720] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if arg4.length != 64:
            revert with 0, 'ECDSA: invalid signature length'
        if uint255(mem[720]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[720]) >> 255) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1), arg3)), (bool(mem[720]) >> 255) + 27 << 248, mem[688], uint255(mem[720])) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != address(arg1):
                revert with 0, 'BAD_SIGN'
            if not address(arg1):
                revert with 0, 'ZERO_SENDER'
            mem[ceil32(arg4.length) + 1604 len arg4.length] = arg4[all]
            mem[ceil32(arg4.length) + arg4.length + 1604] = 0
            _339 = mem[ceil32(arg4.length) + 1636]
            if numberOfSignersForDocument[arg2].field_512 != numberOfSignersForDocument[arg2].field_1536:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 21
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5349474e4552535f4e4f545f46494e414c495a45440000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if arg3 >= numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 13
                mem[(2 * ceil32(arg4.length)) + 1672] = 'OUT_OF_BOUNDS' << 152
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if not address(arg1):
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 11
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5a45524f5f53454e444552000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 1636] = arg2
            mem[(2 * ceil32(arg4.length)) + 1668] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1700] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1732] = numberOfSignersForDocument[arg2].field_1280
            mem[0] = sha3(mem[(2 * ceil32(arg4.length)) + 1636 len ceil32(arg4.length) + 128])
            mem[(2 * ceil32(arg4.length)) + 1796] = arg2
            mem[(2 * ceil32(arg4.length)) + 1828] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1860] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1892] = numberOfSignersForDocument[arg2].field_1280
            mem[(2 * ceil32(arg4.length)) + 1924] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
            mem[(2 * ceil32(arg4.length)) + 1956] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
            mem[(2 * ceil32(arg4.length)) + 1988] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
            mem[(2 * ceil32(arg4.length)) + 2020] = address(arg1)
            mem[(2 * ceil32(arg4.length)) + 2040] = arg3
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_0 = mem[ceil32(arg4.length) + 1604]
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_256 = _339
        else:
            if uint8((bool(mem[720]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1), arg3)), (bool(mem[720]) >> 255) + 27 << 248, mem[688], uint255(mem[720])) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != address(arg1):
                revert with 0, 'BAD_SIGN'
            if not address(arg1):
                revert with 0, 'ZERO_SENDER'
            mem[ceil32(arg4.length) + 1604 len arg4.length] = arg4[all]
            mem[ceil32(arg4.length) + arg4.length + 1604] = 0
            _355 = mem[ceil32(arg4.length) + 1636]
            if numberOfSignersForDocument[arg2].field_512 != numberOfSignersForDocument[arg2].field_1536:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 21
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5349474e4552535f4e4f545f46494e414c495a45440000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if arg3 >= numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 13
                mem[(2 * ceil32(arg4.length)) + 1672] = 'OUT_OF_BOUNDS' << 152
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if not address(arg1):
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 11
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5a45524f5f53454e444552000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 1636] = arg2
            mem[(2 * ceil32(arg4.length)) + 1668] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1700] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1732] = numberOfSignersForDocument[arg2].field_1280
            mem[0] = sha3(mem[(2 * ceil32(arg4.length)) + 1636 len ceil32(arg4.length) + 128])
            mem[(2 * ceil32(arg4.length)) + 1796] = arg2
            mem[(2 * ceil32(arg4.length)) + 1828] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1860] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1892] = numberOfSignersForDocument[arg2].field_1280
            mem[(2 * ceil32(arg4.length)) + 1924] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
            mem[(2 * ceil32(arg4.length)) + 1956] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
            mem[(2 * ceil32(arg4.length)) + 1988] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
            mem[(2 * ceil32(arg4.length)) + 2020] = address(arg1)
            mem[(2 * ceil32(arg4.length)) + 2040] = arg3
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_0 = mem[ceil32(arg4.length) + 1604]
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_256 = _355
    else:
        if block.number > numberOfSignersForDocument[arg2].field_256:
            revert with 0, 'DOC_EXPIRED'
        if not address(arg1):
            revert with 0, 'ZERO_SENDER'
        mem[688 len arg4.length] = arg4[all]
        mem[arg4.length + 688] = 0
        if ext_code.size(arg1):
            require ext_code.size(address(arg1))
            staticcall address(arg1) with:
                    gas gas_remaining wei
                   args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1), arg3)), Array(len=arg4.length, data=arg4[all])
            if ext_call.success:
                require return_data.size >= 32
                require not 0, ext_call.return_data[4 len 28]
            revert with 0, 'BAD_SIGN'
        if 65 == arg4.length:
            if mem[720] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if arg4.length != 64:
            revert with 0, 'ECDSA: invalid signature length'
        if uint255(mem[720]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[720]) >> 255) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1), arg3)), (bool(mem[720]) >> 255) + 27 << 248, mem[688], uint255(mem[720])) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != address(arg1):
                revert with 0, 'BAD_SIGN'
            if not address(arg1):
                revert with 0, 'ZERO_SENDER'
            mem[ceil32(arg4.length) + 1604 len arg4.length] = arg4[all]
            mem[ceil32(arg4.length) + arg4.length + 1604] = 0
            _361 = mem[ceil32(arg4.length) + 1636]
            if numberOfSignersForDocument[arg2].field_512 != numberOfSignersForDocument[arg2].field_1536:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 21
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5349474e4552535f4e4f545f46494e414c495a45440000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if arg3 >= numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 13
                mem[(2 * ceil32(arg4.length)) + 1672] = 'OUT_OF_BOUNDS' << 152
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if not address(arg1):
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 11
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5a45524f5f53454e444552000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 1636] = arg2
            mem[(2 * ceil32(arg4.length)) + 1668] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1700] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1732] = numberOfSignersForDocument[arg2].field_1280
            mem[0] = sha3(mem[(2 * ceil32(arg4.length)) + 1636 len ceil32(arg4.length) + 128])
            mem[(2 * ceil32(arg4.length)) + 1796] = arg2
            mem[(2 * ceil32(arg4.length)) + 1828] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1860] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1892] = numberOfSignersForDocument[arg2].field_1280
            mem[(2 * ceil32(arg4.length)) + 1924] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
            mem[(2 * ceil32(arg4.length)) + 1956] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
            mem[(2 * ceil32(arg4.length)) + 1988] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
            mem[(2 * ceil32(arg4.length)) + 2020] = address(arg1)
            mem[(2 * ceil32(arg4.length)) + 2040] = arg3
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_0 = mem[ceil32(arg4.length) + 1604]
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_256 = _361
        else:
            if uint8((bool(mem[720]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1), arg3)), (bool(mem[720]) >> 255) + 27 << 248, mem[688], uint255(mem[720])) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != address(arg1):
                revert with 0, 'BAD_SIGN'
            if not address(arg1):
                revert with 0, 'ZERO_SENDER'
            mem[ceil32(arg4.length) + 1604 len arg4.length] = arg4[all]
            mem[ceil32(arg4.length) + arg4.length + 1604] = 0
            _371 = mem[ceil32(arg4.length) + 1636]
            if numberOfSignersForDocument[arg2].field_512 != numberOfSignersForDocument[arg2].field_1536:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 21
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5349474e4552535f4e4f545f46494e414c495a45440000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if arg3 >= numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 13
                mem[(2 * ceil32(arg4.length)) + 1672] = 'OUT_OF_BOUNDS' << 152
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            if not address(arg1):
                mem[(2 * ceil32(arg4.length)) + 1604] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 1608] = 32
                mem[(2 * ceil32(arg4.length)) + 1640] = 11
                mem[(2 * ceil32(arg4.length)) + 1672] = 0x5a45524f5f53454e444552000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(arg4.length)) + 1604
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 1636] = arg2
            mem[(2 * ceil32(arg4.length)) + 1668] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1700] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1732] = numberOfSignersForDocument[arg2].field_1280
            mem[0] = sha3(mem[(2 * ceil32(arg4.length)) + 1636 len ceil32(arg4.length) + 128])
            mem[(2 * ceil32(arg4.length)) + 1796] = arg2
            mem[(2 * ceil32(arg4.length)) + 1828] = numberOfSignersForDocument[arg2].field_768
            mem[(2 * ceil32(arg4.length)) + 1860] = numberOfSignersForDocument[arg2].field_1024
            mem[(2 * ceil32(arg4.length)) + 1892] = numberOfSignersForDocument[arg2].field_1280
            mem[(2 * ceil32(arg4.length)) + 1924] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
            mem[(2 * ceil32(arg4.length)) + 1956] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
            mem[(2 * ceil32(arg4.length)) + 1988] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
            mem[(2 * ceil32(arg4.length)) + 2020] = address(arg1)
            mem[(2 * ceil32(arg4.length)) + 2040] = arg3
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_0 = mem[ceil32(arg4.length) + 1604]
            numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_256 = _371
    uint8(numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_512) = 0
    emit LogSignedDocumentSignatureField(arg3, arg2, address(arg1));
    if not numberOfSignersForDocument[arg2][12][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), arg3)].field_0:
        if numberOfSignersForDocument[arg2][11][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 == -1:
            revert with 0, 17
        numberOfSignersForDocument[arg2][11][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0++
        if numberOfSignersForDocument[arg2][11][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 == numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
            if not numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)][1][address(arg1)].field_0:
                numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)].field_0++
                address(numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)][numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)].field_0].field_0) = address(arg1)
                Mask(96, 0, numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)][numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)].field_0].field_160) = 0
                numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)][1][address(arg1)].field_0 = numberOfSignersForDocument[arg2][9][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512)].field_0
            emit LogSignedDocument(arg2, address(arg1));
}



}
