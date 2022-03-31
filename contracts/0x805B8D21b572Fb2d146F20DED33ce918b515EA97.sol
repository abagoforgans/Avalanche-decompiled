contract main {




// =====================  Runtime code  =====================


#
#  - sub_d6829552(?)
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
    return stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 202))) + arg2].field_0
}

function getNumberOfSignersForDocument(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_1536
}

function sub_3dadf677(?) payable {
    require calldata.size - 4 >= 64
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1].field_1536, numberOfSignersForDocument[arg1][9][arg2].field_0
}

function sub_4c71ce59(?) payable {
    require calldata.size - 4 >= 128
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if arg4 >= numberOfSignersForDocument[arg1][10][arg2].field_0:
        revert with 0, 'OUT_OF_BOUNDS'
    return numberOfSignersForDocument[arg1][12][arg3].field_0, 
           numberOfSignersForDocument[arg1][12][arg3].field_256,
           numberOfSignersForDocument[arg1][12][arg3].field_512
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
    return numberOfSignersForDocument[arg1].field_3584, 
           numberOfSignersForDocument[arg1].field_3840,
           numberOfSignersForDocument[arg1].field_0,
           numberOfSignersForDocument[arg1].field_256,
           numberOfSignersForDocument[arg1].field_1536
}

function sub_b651cf69(?) payable {
    require calldata.size - 4 >= 64
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1][8][arg2].field_0, 
           numberOfSignersForDocument[arg1][8][arg2].field_256,
           numberOfSignersForDocument[arg1][8][arg2].field_512
}

function sub_fa7c8c1b(?) payable {
    require calldata.size - 4 >= 64
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1][13][arg2].field_0, 
           numberOfSignersForDocument[arg1][13][arg2].field_256,
           numberOfSignersForDocument[arg1][13][arg2].field_512
}

function sub_fee7c64a(?) payable {
    require calldata.size - 4 >= 64
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    return numberOfSignersForDocument[arg1][10][arg2].field_0
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
        if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[cd[4]].field_3584:
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
        if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[cd[4]].field_3584:
            revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[cd[4]][10][cd[36]].field_0:
        revert with 0, 'NUM_SIG_EXISTS'
    numberOfSignersForDocument[cd[4]][10][cd[36]].field_0 = cd[100]
    emit LogSetNumberOfSignatureFields(cd[100], cd[4], address(cd[68]));
}

function hashSaltedAddressWithIndexMappingKey(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not arg2:
        revert with 0, 'ZERO_SENDER'
    return sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512, arg2, arg3)
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
        if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[arg1].field_3584:
            revert with 0, 'UNAUTH'
    numberOfSignersForDocument[arg1].field_768 = arg2
    numberOfSignersForDocument[arg1].field_1024 = arg3
    numberOfSignersForDocument[arg1].field_1280 = arg4
    emit LogChangedDocumentStorage(arg2, arg3, arg4, arg1);
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
            revert with 0, 'UNAUTH'
    else:
        if not numberOfSignersForDocument[arg1][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[arg1][13][arg2].field_0:
        if stor151 != msg.sender:
            emit 0xc96185ab: msg.sender, arg1
        else:
            emit 0xc96185ab: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1
    else:
        if stor151 != msg.sender:
            emit 0x5d898c79: msg.sender, arg1
        else:
            emit 0x5d898c79: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1
    numberOfSignersForDocument[arg1][13][arg2].field_0 = arg3
    numberOfSignersForDocument[arg1][13][arg2].field_256 = arg4
    numberOfSignersForDocument[arg1][13][arg2].field_512 = arg5
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
        numberOfSignersForDocument[arg1].field_3584 = msg.sender
        numberOfSignersForDocument[arg1].field_512 = arg4
        if not stor203[address(msg.sender)][1][arg1]:
            stor203[address(msg.sender)]++
            stor203[address(msg.sender)][stor203[address(msg.sender)]] = arg1
            stor203[address(msg.sender)][1][arg1] = stor203[address(msg.sender)]
    else:
        numberOfSignersForDocument[arg1].field_3584 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        numberOfSignersForDocument[arg1].field_3648 = 0
        numberOfSignersForDocument[arg1].field_512 = arg4
        if not stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][arg1]:
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]++
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]] = arg1
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][arg1] = stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
    emit LogNewDocument(numberOfSignersForDocument[arg1].field_512, arg3, numberOfSignersForDocument[arg1].field_3584, arg1, numberOfSignersForDocument[arg1].field_3840);
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
        if numberOfSignersForDocument[arg1].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[arg1].field_3584:
            revert with 0, 'UNAUTH'
    if numberOfSignersForDocument[arg1].field_512 <= numberOfSignersForDocument[arg1].field_1536:
        revert with 0, 'SIGNERS_FINALIZED'
    if not numberOfSignersForDocument[arg1][7][address(arg2)].field_0:
        numberOfSignersForDocument[arg1].field_1536++
        stor[numberOfSignersForDocument[arg1].field_1536 + ('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 202)))].field_0 = arg2
        stor[numberOfSignersForDocument[arg1].field_1536 + ('array', 6, ('map', ('param', 'arg1'), ('name', 'numberOfSignersForDocument', 202)))].field_160 = 0
        numberOfSignersForDocument[arg1][7][address(arg2)].field_0 = numberOfSignersForDocument[arg1].field_1536
    if numberOfSignersForDocument[arg1].field_3584 != arg2:
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
    mem[284 len arg3.length] = arg3[all]
    mem[arg3.length + 284] = 0
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
        if mem[316] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg3.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[316]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[316]) >> 255) + 27) != 27:
        if uint8((bool(mem[316]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), (bool(mem[316]) >> 255) + 27 << 248, mem[284], uint255(mem[316])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return (address(signer) == address(arg1))
}

function sub_1741d3f0(?) payable {
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
                revert with 0, 'UNAUTH'
        else:
            if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'UNAUTH'
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(cd[4], 202) + 13
        if numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_0:
            if stor151 != msg.sender:
                emit 0xc96185ab: msg.sender, cd[4]
            else:
                emit 0xc96185ab: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        else:
            if stor151 != msg.sender:
                emit 0x5d898c79: msg.sender, cd[4]
            else:
                emit 0x5d898c79: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
        numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_256 = cd[((32 * idx) + cd[100] + 36)]
        numberOfSignersForDocument[cd[4]][13][cd[((32 * idx) + cd[36] + 36)]].field_512 = cd[((32 * idx) + cd[132] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_11adf21e(?) payable {
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
    numberOfSignersForDocument[cd[4]][12][cd[36]].field_0 = cd[132]
    numberOfSignersForDocument[cd[4]][12][cd[36]].field_256 = cd[164]
    numberOfSignersForDocument[cd[4]][12][cd[36]].field_512 = uint8(cd[196])
    if not numberOfSignersForDocument[cd[4]][12][cd[36]].field_0:
        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == -1:
            revert with 0, 17
        numberOfSignersForDocument[cd[4]][11][cd[68]].field_0++
        if numberOfSignersForDocument[cd[4]][11][cd[68]].field_0 == numberOfSignersForDocument[cd[4]][10][cd[68]].field_0:
            if stor151 != msg.sender:
                if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0:
                    numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                    numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0 = msg.sender
                    numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_160 = 0
                    numberOfSignersForDocument[cd[4]][9][cd[100]][1][address(msg.sender)].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                if stor151 != msg.sender:
                    emit LogSignedDocument(cd[4], msg.sender);
                else:
                    emit LogSignedDocument(cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            else:
                if not numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                    numberOfSignersForDocument[cd[4]][9][cd[100]].field_0++
                    numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_0 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    numberOfSignersForDocument[cd[4]][9][cd[100]][numberOfSignersForDocument[cd[4]][9][cd[100]].field_0].field_64 = 0
                    numberOfSignersForDocument[cd[4]][9][cd[100]][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = numberOfSignersForDocument[cd[4]][9][cd[100]].field_0
                if stor151 != msg.sender:
                    emit LogSignedDocument(cd[4], msg.sender);
                else:
                    emit LogSignedDocument(cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    return not bool(numberOfSignersForDocument[cd[4]][12][cd[36]].field_0)
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
            if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
                revert with 0, 'UNAUTH'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[cd[4]].field_3584:
                revert with 0, 'UNAUTH'
        if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
            revert with 0, 'SIGNERS_FINALIZED'
        if not numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[68] + 36)])].field_0:
            numberOfSignersForDocument[cd[4]].field_1536++
            stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_0 = address(cd[((32 * idx) + cd[68] + 36)])
            stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_160 = 0
            numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[68] + 36)])].field_0 = numberOfSignersForDocument[cd[4]].field_1536
        if numberOfSignersForDocument[cd[4]].field_3584 != address(cd[((32 * idx) + cd[68] + 36)]):
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
            if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
                revert with 0, 'UNAUTH'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[cd[4]].field_3584:
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

function sub_f865897c(?) payable {
    require calldata.size - 4 >= 416
    require 228 <= calldata.size
    require 420 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_EXIST'
    numberOfSignersForDocument[cd[4]].field_3840 = cd[36]
    numberOfSignersForDocument[cd[4]].field_0 = block.number
    numberOfSignersForDocument[cd[4]].field_256 = cd[68]
    if stor151 != msg.sender:
        numberOfSignersForDocument[cd[4]].field_3584 = msg.sender
        numberOfSignersForDocument[cd[4]].field_512 = cd[100]
        if not stor203[address(msg.sender)][1][cd[4]]:
            stor203[address(msg.sender)]++
            stor203[address(msg.sender)][stor203[address(msg.sender)]] = cd[4]
            stor203[address(msg.sender)][1][cd[4]] = stor203[address(msg.sender)]
    else:
        numberOfSignersForDocument[cd[4]].field_3584 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        numberOfSignersForDocument[cd[4]].field_3648 = 0
        numberOfSignersForDocument[cd[4]].field_512 = cd[100]
        if not stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[4]]:
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]++
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]] = cd[4]
            stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1][cd[4]] = stor203[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
    emit LogNewDocument(numberOfSignersForDocument[cd[4]].field_512, cd[68], numberOfSignersForDocument[cd[4]].field_3584, cd[4], numberOfSignersForDocument[cd[4]].field_3840);
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[4]].field_256:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
    if stor151 != msg.sender:
        if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[cd[4]].field_3584:
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
        if numberOfSignersForDocument[cd[4]].field_3584 != msg.sender:
            revert with 0, 'UNAUTH'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != numberOfSignersForDocument[cd[4]].field_3584:
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
                revert with 0, 'UNAUTH'
        else:
            if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'UNAUTH'
        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0:
            if stor151 != msg.sender:
                emit 0xc96185ab: msg.sender, cd[4]
            else:
                emit 0xc96185ab: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        else:
            if stor151 != msg.sender:
                emit 0x5d898c79: msg.sender, cd[4]
            else:
                emit 0x5d898c79: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0 = cd[196]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_256 = cd[356]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_512 = cd[388]
    else:
        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ZERO_SENDER'
        if stor151 != msg.sender:
            if not numberOfSignersForDocument[cd[4]][7][address(msg.sender)].field_0:
                revert with 0, 'UNAUTH'
        else:
            if not numberOfSignersForDocument[cd[4]][7][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'UNAUTH'
        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0:
            if stor151 != msg.sender:
                emit 0xc96185ab: msg.sender, cd[4]
            else:
                emit 0xc96185ab: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        else:
            if stor151 != msg.sender:
                emit 0x5d898c79: msg.sender, cd[4]
            else:
                emit 0x5d898c79: Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0 = cd[196]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_256 = cd[356]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_512 = cd[388]
}

function sub_3c0cf73b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[36]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[cd[36]].field_256:
        if block.number > numberOfSignersForDocument[cd[36]].field_256:
            revert with 0, 'DOC_EXPIRED'
    if not address(cd[4]):
        revert with 0, 'ZERO_SENDER'
    mem[752 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[('cd', 100).length + 752] = 0
    if ext_code.size(cd[4]):
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]) with:
                gas gas_remaining wei
               args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]), cd[68])), Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
        if ext_call.success:
            require return_data.size >= 32
            require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'BAD_SIGN'
    if 65 == ('cd', 100).length:
        if mem[784] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if ('cd', 100).length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[784]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[784]) >> 255) + 27) != 27:
        if uint8((bool(mem[784]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]), cd[68])), (bool(mem[784]) >> 255) + 27 << 248, mem[752], uint255(mem[784])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != address(cd[4]):
        revert with 0, 'BAD_SIGN'
    if not address(cd[4]):
        revert with 0, 'ZERO_SENDER'
    mem[ceil32(('cd', 100).length) + 1668 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[ceil32(('cd', 100).length) + ('cd', 100).length + 1668] = 0
    if numberOfSignersForDocument[cd[36]].field_512 != numberOfSignersForDocument[cd[36]].field_1536:
        mem[(2 * ceil32(('cd', 100).length)) + 1668] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(('cd', 100).length)) + 1672] = 32
        mem[(2 * ceil32(('cd', 100).length)) + 1704] = 21
        mem[(2 * ceil32(('cd', 100).length)) + 1736] = 0x5349474e4552535f4e4f545f46494e414c495a45440000000000000000000000
        revert with memory
          from (2 * ceil32(('cd', 100).length)) + 1668
           len ceil32(('cd', 100).length) + 100
    numberOfSignersForDocument[cd[36]][12][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]), cd[68])].field_0 = mem[ceil32(('cd', 100).length) + 1668]
    numberOfSignersForDocument[cd[36]][12][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]), cd[68])].field_256 = mem[ceil32(('cd', 100).length) + 1700]
    numberOfSignersForDocument[cd[36]][12][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]), cd[68])].field_512 = 0
    if not numberOfSignersForDocument[cd[36]][12][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]), cd[68])].field_0:
        if numberOfSignersForDocument[cd[36]][11][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]))].field_0 == -1:
            revert with 0, 17
        numberOfSignersForDocument[cd[36]][11][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]))].field_0++
        if numberOfSignersForDocument[cd[36]][11][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]))].field_0 == numberOfSignersForDocument[cd[36]][10][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]))].field_0:
            if stor151 != msg.sender:
                if not numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][1][address(msg.sender)].field_0:
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0++
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0].field_0 = msg.sender
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0].field_160 = 0
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][1][address(msg.sender)].field_0 = numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0
                if stor151 != msg.sender:
                    emit LogSignedDocument(cd[36], msg.sender);
                else:
                    emit LogSignedDocument(cd[36], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            else:
                if not numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0++
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0].field_0 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0].field_64 = 0
                    numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = numberOfSignersForDocument[cd[36]][9][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512)].field_0
                if stor151 != msg.sender:
                    emit LogSignedDocument(cd[36], msg.sender);
                else:
                    emit LogSignedDocument(cd[36], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    mem[(2 * ceil32(('cd', 100).length)) + 1668] = not bool(numberOfSignersForDocument[cd[36]][12][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_0, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_256, numberOfSignersForDocument[cd[36]][8][sha3(cd[36], numberOfSignersForDocument[cd[36]].field_768, numberOfSignersForDocument[cd[36]].field_1024, numberOfSignersForDocument[cd[36]].field_1280)].field_512, address(cd[4]), cd[68])].field_0)
    return memory
      from (2 * ceil32(('cd', 100).length)) + 1668
       len ceil32(('cd', 100).length) + 32
}



}
