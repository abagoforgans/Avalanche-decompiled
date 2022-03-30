contract main {




// =====================  Runtime code  =====================


#
#  - sub_82a75e4f(?)
#  - sub_e1d8f912(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
array of uint256 documentCreatedByMeAtIndex;
array of uint256 documentSharedWithMeAtIndex;
array of uint256 numOfDocumentsArchived;

function getDocumentSharedWithMeAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if documentSharedWithMeAtIndex[address(msg.sender)] <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= documentSharedWithMeAtIndex[address(msg.sender)]:
        revert with 'NH{q', 50
    return documentSharedWithMeAtIndex[address(msg.sender)][arg1]
}

function getDocumentSignerAtIndex(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_1536 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= numberOfSignersForDocument[arg1].field_1536:
        revert with 'NH{q', 50
    return stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 151))) + arg2].field_0
}

function getNumberOfSignersForDocument(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_1536
}

function getDocumentCreatedByMeAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if documentCreatedByMeAtIndex[address(msg.sender)] <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= documentCreatedByMeAtIndex[address(msg.sender)]:
        revert with 'NH{q', 50
    return documentCreatedByMeAtIndex[address(msg.sender)][arg1]
}

function getNumOfDocumentsArchived() payable {
    return numOfDocumentsArchived[address(msg.sender)]
}

function sub_3dadf677(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_1536, numberOfSignersForDocument[arg1][9][arg2].field_0
}

function sub_4c71ce59(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if arg4 >= numberOfSignersForDocument[arg1][10][arg2].field_0:
        revert with 0, 'OUT_OF_BOUNDS'
    return numberOfSignersForDocument[arg1][12][arg3].field_0, 
           numberOfSignersForDocument[arg1][12][arg3].field_256,
           numberOfSignersForDocument[arg1][12][arg3].field_512,
           numberOfSignersForDocument[arg1][12][arg3].field_768,
           numberOfSignersForDocument[arg1][12][arg3].field_1024
}

function getDocumentDocStorageInfo(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_768, 
           numberOfSignersForDocument[arg1].field_1024,
           numberOfSignersForDocument[arg1].field_1280
}

function paused() payable {
    return bool(paused)
}

function getNumOfDocumentsSharedWithMe() payable {
    return documentSharedWithMeAtIndex[address(msg.sender)]
}

function owner() payable {
    return owner
}

function getDocumentBasicInfo(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_3584, 
           numberOfSignersForDocument[arg1].field_3840,
           numberOfSignersForDocument[arg1].field_0,
           numberOfSignersForDocument[arg1].field_256,
           numberOfSignersForDocument[arg1].field_1536
}

function getDocumentArchivedAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numOfDocumentsArchived[address(msg.sender)] <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= numOfDocumentsArchived[address(msg.sender)]:
        revert with 'NH{q', 50
    return numOfDocumentsArchived[address(msg.sender)][arg1]
}

function sub_b651cf69(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1][8][arg2].field_0, 
           numberOfSignersForDocument[arg1][8][arg2].field_256,
           numberOfSignersForDocument[arg1][8][arg2].field_512
}

function getNumOfDocumentsCreatedByMe() payable {
    return documentCreatedByMeAtIndex[address(msg.sender)]
}

function sub_fa7c8c1b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1][13][arg2].field_0, 
           numberOfSignersForDocument[arg1][13][arg2].field_256,
           numberOfSignersForDocument[arg1][13][arg2].field_512
}

function sub_fee7c64a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1][10][arg2].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    emit LogContractPaused()
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    emit LogContractUnpaused()
}

function sub_27d54db9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return sha3(arg1[all])
}

function hashSaltedDocumentMappingKey(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_17dc15a0(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if numberOfSignersForDocument[arg1].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
        revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[arg1][10][arg2].field_0:
        revert with 0, 'NUM_SIG_EXISTS'
    numberOfSignersForDocument[arg1][10][arg2].field_0 = arg4
    emit LogSetNumberOfSignatureFields(arg4, arg1, address(arg3));
}

function hashSaltedMetaDocumentMappingKey(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512)
}

function sub_d1ca00a2(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if numberOfSignersForDocument[arg1].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
        revert with 0, 'UNAUTH'
    numberOfSignersForDocument[arg1][8][arg2].field_0 = arg3
    numberOfSignersForDocument[arg1][8][arg2].field_256 = arg4
    numberOfSignersForDocument[arg1][8][arg2].field_512 = arg5
    emit LogChangedMetadataStorage(arg3, arg4, arg5, arg1);
}

function setDocStorageForDocument(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if numberOfSignersForDocument[arg1].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
        revert with 0, 'UNAUTH'
    numberOfSignersForDocument[arg1].field_768 = arg2
    numberOfSignersForDocument[arg1].field_1024 = arg3
    numberOfSignersForDocument[arg1].field_1280 = arg4
    emit LogChangedDocumentStorage(arg2, arg3, arg4, arg1);
}

function hashSaltedAddressMappingKey(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        revert with 0, 'ZERO_SENDER'
    return sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512, arg2)
}

function hashSaltedAddressWithIndexMappingKey(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg2:
        revert with 0, 'ZERO_SENDER'
    return sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512, arg2, arg3)
}

function setDocumentCommentsForSigner(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if numberOfSignersForDocument[arg1].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if not numberOfSignersForDocument[arg1][7][address(msg.sender)].field_0:
        revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[arg1][13][arg2].field_0:
        emit 0xc96185ab: msg.sender, arg1
    else:
        emit 0x5d898c79: msg.sender, arg1
    numberOfSignersForDocument[arg1][13][arg2].field_0 = arg3
    numberOfSignersForDocument[arg1][13][arg2].field_256 = arg4
    numberOfSignersForDocument[arg1][13][arg2].field_512 = arg5
}

function newBasicDocument(bytes32 arg1, bytes32 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if paused:
        revert with 0, 'Pausable: paused'
    if numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_EXIST'
    numberOfSignersForDocument[arg1].field_3840 = arg2
    numberOfSignersForDocument[arg1].field_0 = block.number
    numberOfSignersForDocument[arg1].field_256 = arg3
    numberOfSignersForDocument[arg1].field_3584 = msg.sender
    numberOfSignersForDocument[arg1].field_512 = arg4
    if not documentCreatedByMeAtIndex[address(msg.sender)][1][arg1]:
        documentCreatedByMeAtIndex[address(msg.sender)]++
        documentCreatedByMeAtIndex[address(msg.sender)][documentCreatedByMeAtIndex[address(msg.sender)]] = arg1
        documentCreatedByMeAtIndex[address(msg.sender)][1][arg1] = documentCreatedByMeAtIndex[address(msg.sender)]
    emit LogNewDocument(numberOfSignersForDocument[arg1].field_512, arg3, numberOfSignersForDocument[arg1].field_3584, arg1, numberOfSignersForDocument[arg1].field_3840);
}

function addSignerForDocument(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if numberOfSignersForDocument[arg1].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
        revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[arg1].field_512 <= numberOfSignersForDocument[arg1].field_1536:
        revert with 0, 'SIGNERS_FINALIZED'
    if not numberOfSignersForDocument[arg1][7][address(arg2)].field_0:
        numberOfSignersForDocument[arg1].field_1536++
        stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 151))) + numberOfSignersForDocument[arg1].field_1536].field_0 = arg2
        stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 151))) + numberOfSignersForDocument[arg1].field_1536].field_160 = 0
        numberOfSignersForDocument[arg1][7][address(arg2)].field_0 = numberOfSignersForDocument[arg1].field_1536
    if numberOfSignersForDocument[arg1].field_3584 != arg2:
        if not documentSharedWithMeAtIndex[address(arg2)][1][arg1]:
            documentSharedWithMeAtIndex[address(arg2)]++
            documentSharedWithMeAtIndex[address(arg2)][documentSharedWithMeAtIndex[address(arg2)]] = arg1
            documentSharedWithMeAtIndex[address(arg2)][1][arg1] = documentSharedWithMeAtIndex[address(arg2)]
    emit LogAddedNewSignerForDocument(arg2, arg1);
}

function sub_a88f43ad(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require 196 <= calldata.size
    require 324 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_EXIST'
    if paused:
        revert with 0, 'Pausable: paused'
    if numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_EXIST'
    numberOfSignersForDocument[arg1].field_3840 = arg2
    numberOfSignersForDocument[arg1].field_0 = block.number
    numberOfSignersForDocument[arg1].field_256 = arg3
    numberOfSignersForDocument[arg1].field_3584 = msg.sender
    numberOfSignersForDocument[arg1].field_512 = arg4
    if not documentCreatedByMeAtIndex[address(msg.sender)][1][arg1]:
        documentCreatedByMeAtIndex[address(msg.sender)]++
        documentCreatedByMeAtIndex[address(msg.sender)][documentCreatedByMeAtIndex[address(msg.sender)]] = arg1
        documentCreatedByMeAtIndex[address(msg.sender)][1][arg1] = documentCreatedByMeAtIndex[address(msg.sender)]
    emit LogNewDocument(numberOfSignersForDocument[arg1].field_512, arg3, numberOfSignersForDocument[arg1].field_3584, arg1, numberOfSignersForDocument[arg1].field_3840);
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if numberOfSignersForDocument[arg1].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
        revert with 0, 'UNAUTH'
    numberOfSignersForDocument[arg1].field_768 = arg5
    numberOfSignersForDocument[arg1].field_1024 = arg7
    numberOfSignersForDocument[arg1].field_1280 = arg8
    emit LogChangedDocumentStorage(arg5, arg7, arg8, arg1);
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if numberOfSignersForDocument[arg1].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
        revert with 0, 'UNAUTH'
    numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0 = arg6
    numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256 = arg9
    numberOfSignersForDocument[arg1][8][sha3(numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512 = arg10
    emit LogChangedMetadataStorage(arg6, arg9, arg10, arg1);
}

function sub_9f534a7d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if documentSharedWithMeAtIndex[address(msg.sender)][1][arg1]:
        if documentSharedWithMeAtIndex[address(msg.sender)][1][arg1]:
            if documentSharedWithMeAtIndex[address(msg.sender)][1][arg1] < 1:
                revert with 'NH{q', 17
            if documentSharedWithMeAtIndex[address(msg.sender)] < 1:
                revert with 'NH{q', 17
            if documentSharedWithMeAtIndex[address(msg.sender)] - 1 >= documentSharedWithMeAtIndex[address(msg.sender)]:
                revert with 'NH{q', 50
            if documentSharedWithMeAtIndex[address(msg.sender)][1][arg1] - 1 >= documentSharedWithMeAtIndex[address(msg.sender)]:
                revert with 'NH{q', 50
            documentSharedWithMeAtIndex[address(msg.sender)][documentSharedWithMeAtIndex[address(msg.sender)][1][arg1]] = documentSharedWithMeAtIndex[address(msg.sender)][documentSharedWithMeAtIndex[address(msg.sender)]]
            documentSharedWithMeAtIndex[address(msg.sender)][1][documentSharedWithMeAtIndex[address(msg.sender)][documentSharedWithMeAtIndex[address(msg.sender)]]] = documentSharedWithMeAtIndex[address(msg.sender)][1][arg1]
            if not documentSharedWithMeAtIndex[address(msg.sender)]:
                revert with 'NH{q', 49
            documentSharedWithMeAtIndex[address(msg.sender)][documentSharedWithMeAtIndex[address(msg.sender)]] = 0
            documentSharedWithMeAtIndex[address(msg.sender)]--
            documentSharedWithMeAtIndex[address(msg.sender)][1][arg1] = 0
    if documentCreatedByMeAtIndex[address(msg.sender)][1][arg1]:
        if documentCreatedByMeAtIndex[address(msg.sender)][1][arg1]:
            if documentCreatedByMeAtIndex[address(msg.sender)][1][arg1] < 1:
                revert with 'NH{q', 17
            if documentCreatedByMeAtIndex[address(msg.sender)] < 1:
                revert with 'NH{q', 17
            if documentCreatedByMeAtIndex[address(msg.sender)] - 1 >= documentCreatedByMeAtIndex[address(msg.sender)]:
                revert with 'NH{q', 50
            if documentCreatedByMeAtIndex[address(msg.sender)][1][arg1] - 1 >= documentCreatedByMeAtIndex[address(msg.sender)]:
                revert with 'NH{q', 50
            documentCreatedByMeAtIndex[address(msg.sender)][documentCreatedByMeAtIndex[address(msg.sender)][1][arg1]] = documentCreatedByMeAtIndex[address(msg.sender)][documentCreatedByMeAtIndex[address(msg.sender)]]
            documentCreatedByMeAtIndex[address(msg.sender)][1][documentCreatedByMeAtIndex[address(msg.sender)][documentCreatedByMeAtIndex[address(msg.sender)]]] = documentCreatedByMeAtIndex[address(msg.sender)][1][arg1]
            if not documentCreatedByMeAtIndex[address(msg.sender)]:
                revert with 'NH{q', 49
            documentCreatedByMeAtIndex[address(msg.sender)][documentCreatedByMeAtIndex[address(msg.sender)]] = 0
            documentCreatedByMeAtIndex[address(msg.sender)]--
            documentCreatedByMeAtIndex[address(msg.sender)][1][arg1] = 0
    if not numOfDocumentsArchived[address(msg.sender)][1][arg1]:
        numOfDocumentsArchived[address(msg.sender)]++
        numOfDocumentsArchived[address(msg.sender)][numOfDocumentsArchived[address(msg.sender)]] = arg1
        numOfDocumentsArchived[address(msg.sender)][1][arg1] = numOfDocumentsArchived[address(msg.sender)]
    emit LogArchivedDocument(msg.sender, arg1);
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            Mask(248, 0, stor0.field_8) = 1
                            uint8(stor0.field_0) = 1
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                            else:
                                Mask(248, 0, stor0.field_8) = 1
                                uint8(stor0.field_0) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                else:
                                    Mask(248, 0, stor0.field_8) = 1
                                    uint8(stor0.field_0) = 1
                                    paused = 0
                                    Mask(248, 0, stor0.field_8) = 0
                                    Mask(248, 0, stor0.field_8) = 0
                                    Mask(248, 0, stor0.field_8) = 0
}

function sub_765a729a(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if numberOfSignersForDocument[cd[4]].field_256 < block.number:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
        revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
        revert with 0, 'SIGNERS_FINALIZED'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'BAD_ARRAYS'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'BAD_ARRAYS'
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if paused:
            revert with 0, 'Pausable: paused'
        if not numberOfSignersForDocument[cd[4]].field_0:
            revert with 0, 'DOC_NOT_EXIST'
        if numberOfSignersForDocument[cd[4]].field_256:
            if numberOfSignersForDocument[cd[4]].field_256 < block.number:
                revert with 0, 'DOC_EXPIRED'
        if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
        if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
            revert with 0, 'SIGNERS_FINALIZED'
        if not numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[68] + 36)])].field_0:
            numberOfSignersForDocument[cd[4]].field_1536++
            stor[('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 151))) + numberOfSignersForDocument[cd[4]].field_1536].field_0 = address(cd[((32 * idx) + cd[68] + 36)])
            stor[('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 151))) + numberOfSignersForDocument[cd[4]].field_1536].field_160 = 0
            numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[68] + 36)])].field_0 = numberOfSignersForDocument[cd[4]].field_1536
        if numberOfSignersForDocument[cd[4]].field_3584 != address(cd[((32 * idx) + cd[68] + 36)]):
            if not documentSharedWithMeAtIndex[address(cd[((32 * idx) + cd[68] + 36)])][1][cd[4]]:
                documentSharedWithMeAtIndex[address(cd[((32 * idx) + cd[68] + 36)])]++
                documentSharedWithMeAtIndex[address(cd[((32 * idx) + cd[68] + 36)])][documentSharedWithMeAtIndex[address(cd[((32 * idx) + cd[68] + 36)])]] = cd[4]
                documentSharedWithMeAtIndex[address(cd[((32 * idx) + cd[68] + 36)])][1][cd[4]] = documentSharedWithMeAtIndex[address(cd[((32 * idx) + cd[68] + 36)])]
        emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[68] + 36)]), cd[4]);
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        if paused:
            revert with 0, 'Pausable: paused'
        if not numberOfSignersForDocument[cd[4]].field_0:
            revert with 0, 'DOC_NOT_EXIST'
        if numberOfSignersForDocument[cd[4]].field_256:
            if numberOfSignersForDocument[cd[4]].field_256 < block.number:
                revert with 0, 'DOC_EXPIRED'
        if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
        if numberOfSignersForDocument[cd[4]][10][cd[((32 * idx) + cd[36] + 36)]].field_0:
            revert with 0, 'NUM_SIG_EXISTS'
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(cd[4], 151) + 10
        numberOfSignersForDocument[cd[4]][10][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[100] + 36)]
        mem[96] = cd[((32 * idx) + cd[100] + 36)]
        emit LogSetNumberOfSignatureFields(cd[((32 * idx) + cd[100] + 36)], cd[4], address(cd[((32 * idx) + cd[68] + 36)]));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
