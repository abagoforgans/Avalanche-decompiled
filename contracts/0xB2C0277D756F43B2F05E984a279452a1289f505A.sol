contract main {




// =====================  Runtime code  =====================


#
#  - sub_7ea95f21(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
uint8 paused;
address stor151;
array of struct stor212;
uint64 stor51;
uint128 stor51; offset 64
address owner;

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
    return (stor151 == arg1)
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
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 202
        if not numberOfSignersForDocument[cd[((32 * idx) + cd[4] + 36)]].field_0:
            revert with 0, 'DOC_NOT_EXIST'
        if stor151 != msg.sender:
            emit LogArchivedDocument(msg.sender, cd[((32 * idx) + cd[4] + 36)]);
        else:
            emit LogArchivedDocument(Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[((32 * idx) + cd[4] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function hashSaltedAddressMappingKey(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not arg2:
        revert with 0, 'ZERO_SENDER'
    return sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_0, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_256, numberOfSignersForDocument[arg1][8][sha3(arg1, numberOfSignersForDocument[arg1].field_768, numberOfSignersForDocument[arg1].field_1024, numberOfSignersForDocument[arg1].field_1280)].field_512, arg2)
}

function sub_77cb7637(?) payable {
    require calldata.size - 4 >= 64
    if stor151 != msg.sender:
        return sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender, cd[36])
    return sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]), cd[36])
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

function sub_44a2953c(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[arg1].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if numberOfSignersForDocument[arg1].field_256:
        if block.number > numberOfSignersForDocument[arg1].field_256:
            revert with 0, 'DOC_EXPIRED'
    if numberOfSignersForDocument[arg1].field_1536:
        revert with 0, 'NOT_NEW_DOC'
    mem[316 len arg3.length] = arg3[all]
    mem[arg3.length + 316] = 0
    if ext_code.size(address(numberOfSignersForDocument[arg1].field_3584)):
        require ext_code.size(address(numberOfSignersForDocument[arg1].field_3584))
        staticcall address(numberOfSignersForDocument[arg1].field_3584) with:
                gas gas_remaining wei
               args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, address(arg2))), Array(len=arg3.length, data=arg3[all])
        if ext_call.success:
            require return_data.size >= 32
            require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'BAD_SIG'
    if 65 == arg3.length:
        if mem[348] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg3.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[348]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[348]) >> 255) + 27) != 27:
        if uint8((bool(mem[348]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, address(arg2))), (bool(mem[348]) >> 255) + 27 << 248, mem[316], uint255(mem[348])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != address(numberOfSignersForDocument[arg1].field_3584):
        revert with 0, 'BAD_SIG'
    address(numberOfSignersForDocument[arg1].field_3584) = address(arg2)
    emit 0x34aa85a6: address(arg2), arg1
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
    mem[var20002] = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
    s = (32 * numberOfSignersForDocument[arg1].field_1536) + 160
    s = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
    s = var20002
    idx = var20003
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

function sub_23a559d5(?) payable {
    require calldata.size - 4 >= 128
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
    if stor151 != msg.sender:
        if not msg.sender:
            revert with 0, 'ZERO_SENDER'
        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0:
            if stor151 != msg.sender:
                emit LogEditedCommentOnDocument(cd[36], cd[68], cd[100], msg.sender, cd[4]);
            else:
                emit LogEditedCommentOnDocument(cd[36], cd[68], cd[100], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        else:
            if stor151 != msg.sender:
                emit LogLeftNewCommentOnDocument(cd[36], cd[68], cd[100], msg.sender, cd[4]);
            else:
                emit LogLeftNewCommentOnDocument(cd[36], cd[68], cd[100], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0 = cd[36]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_256 = cd[68]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_512 = cd[100]
    else:
        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ZERO_SENDER'
        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0:
            if stor151 != msg.sender:
                emit LogEditedCommentOnDocument(cd[36], cd[68], cd[100], msg.sender, cd[4]);
            else:
                emit LogEditedCommentOnDocument(cd[36], cd[68], cd[100], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        else:
            if stor151 != msg.sender:
                emit LogLeftNewCommentOnDocument(cd[36], cd[68], cd[100], msg.sender, cd[4]);
            else:
                emit LogLeftNewCommentOnDocument(cd[36], cd[68], cd[100], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]);
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0 = cd[36]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_256 = cd[68]
        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_512 = cd[100]
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
        emit LogNewDocument(cd[100], cd[68], msg.sender, cd[4], numberOfSignersForDocument[cd[4]].field_3840);
    else:
        uint64(numberOfSignersForDocument[cd[4]].field_3584) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, numberOfSignersForDocument[cd[4]].field_3648) = 0
        numberOfSignersForDocument[cd[4]].field_512 = cd[100]
        emit LogNewDocument(cd[100], cd[68], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4], numberOfSignersForDocument[cd[4]].field_3840);
    numberOfSignersForDocument[cd[4]].field_768 = cd[132]
    numberOfSignersForDocument[cd[4]].field_1024 = cd[228]
    numberOfSignersForDocument[cd[4]].field_1280 = cd[260]
    emit LogChangedDocumentStorage(cd[132], cd[228], cd[260], cd[4]);
    numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0 = cd[164]
    numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256 = cd[292]
    numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512 = cd[324]
    emit LogChangedMetadataStorage(cd[164], cd[292], cd[324], cd[4]);
    if cd[196]:
        if stor151 != msg.sender:
            if not msg.sender:
                revert with 0, 'ZERO_SENDER'
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
        mem[var16001] = (32 * numberOfSignersForDocument[arg1].field_1536) + 128
        s = var16001
        idx = var16002
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

function sub_63638ae6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[96] = 96
    s = 96
    idx = 20
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if not address(arg1):
        revert with 0, 'ZERO_SENDER'
    mem[768] = arg2
    mem[800] = numberOfSignersForDocument[arg2].field_768
    mem[832] = numberOfSignersForDocument[arg2].field_1024
    mem[864] = numberOfSignersForDocument[arg2].field_1280
    mem[736] = 128
    mem[928] = arg2
    mem[960] = numberOfSignersForDocument[arg2].field_768
    mem[992] = numberOfSignersForDocument[arg2].field_1024
    mem[1024] = numberOfSignersForDocument[arg2].field_1280
    mem[1056] = numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0
    mem[1088] = numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256
    mem[1120] = numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512
    mem[1152] = address(arg1)
    mem[896] = 244
    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))
    mem[32] = sha3(arg2, 212)
    mem[64] = 1812
    s = 1172
    idx = 0
    while idx < 20:
        if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0):
            if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0) == uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1) < 32:
                revert with 0, 34
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1)) + 32
            mem[_26] = uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1)
            if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0):
                if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0) == uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1) < 32:
                    revert with 0, 34
                if uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1):
                    if 31 >= uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1):
                        mem[_26 + 32] = 256 * Mask(248, 0, stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_8)
                    else:
                        mem[0] = idx + sha3(sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1)), sha3(arg2, 212))
                        mem[_26 + 32] = stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0
                        t = _26 + 32
                        u = sha3(mem[0])
                        while _26 + uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0) == stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128:
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128:
                mem[_26 + 32] = 256 * Mask(248, 0, stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_8)
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = idx + sha3(sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1)), sha3(arg2, 212))
            mem[_26 + 32] = stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0
            t = _26 + 32
            u = sha3(mem[0])
            while _26 + stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _26
            t = t + 32
            u = u + 1
            continue 
        if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0) == stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128 < 32:
            revert with 0, 34
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128) + 32
        mem[_28] = stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128
        if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0):
            if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0) == uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1) < 32:
                revert with 0, 34
            if not uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1):
                mem[s] = _28
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1):
                mem[_28 + 32] = 256 * Mask(248, 0, stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_8)
                mem[s] = _28
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = idx + sha3(sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1)), sha3(arg2, 212))
            mem[_28 + 32] = stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0
            t = _28 + 32
            u = sha3(mem[0])
            while _28 + uint255(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _28
            t = t + 32
            u = u + 1
            continue 
        if bool(stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0) == stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128:
            if 31 >= stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128:
                mem[_28 + 32] = 256 * Mask(248, 0, stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_8)
            else:
                mem[0] = idx + sha3(sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1)), sha3(arg2, 212))
                mem[_28 + 32] = stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_0
                t = _28 + 32
                u = sha3(mem[0])
                while _28 + stor212[arg2][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_0, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_256, stor202[arg2][8][sha3(arg2, stor202[arg2].field_768, stor202[arg2].field_1024, stor202[arg2].field_1280)].field_512, address(arg1))][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    idx = 0
    s = 1172
    t = mem[64] + 32
    u = mem[64] + 672
    while idx < 20:
        mem[t] = u + -_24 - 32
        _34 = mem[s]
        _36 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _36:
            mem[v + u + 32] = mem[_34 + v + 32]
            v = v + 32
            continue 
        if ceil32(_36) > _36:
            mem[u + _36 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_36) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_165569c2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if not numberOfSignersForDocument[cd[4]].field_256:
        if stor151 != msg.sender:
            if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
                revert with 0, 'SIGNERS_FINALIZED'
            if ('cd', 68).length != ('cd', 36).length:
                revert with 0, 'BAD_ARRAYS'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _273 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _296 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_296 + 32 len mem[_296]])
                    mem[_273 + 192] = cd[4]
                    mem[_273 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_273 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_273 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_273 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_273 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_273 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_273 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_273 + 160] = 244
                    mem[64] = _273 + 436
                    _338 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _338
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_338].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_273 + 436] = cd[((32 * idx) + cd[68] + 36)]
                else:
                    numberOfSignersForDocument[cd[4]].field_1536++
                    address(stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_0) = address(cd[((32 * idx) + cd[36] + 36)])
                    Mask(96, 0, stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_160) = 0
                    numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0 = numberOfSignersForDocument[cd[4]].field_1536
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _275 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _299 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_299 + 32 len mem[_299]])
                    mem[_275 + 192] = cd[4]
                    mem[_275 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_275 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_275 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_275 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_275 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_275 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_275 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_275 + 160] = 244
                    mem[64] = _275 + 436
                    _341 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _341
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_341].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_275 + 436] = cd[((32 * idx) + cd[68] + 36)]
                emit LogSetNumberOfSignatureFields(cd[((32 * idx) + cd[68] + 36)], cd[4], address(cd[((32 * idx) + cd[36] + 36)]));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
                revert with 0, 'SIGNERS_FINALIZED'
            if ('cd', 68).length != ('cd', 36).length:
                revert with 0, 'BAD_ARRAYS'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _277 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _302 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_302 + 32 len mem[_302]])
                    mem[_277 + 192] = cd[4]
                    mem[_277 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_277 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_277 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_277 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_277 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_277 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_277 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_277 + 160] = 244
                    mem[64] = _277 + 436
                    _344 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _344
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_344].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_277 + 436] = cd[((32 * idx) + cd[68] + 36)]
                else:
                    numberOfSignersForDocument[cd[4]].field_1536++
                    address(stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_0) = address(cd[((32 * idx) + cd[36] + 36)])
                    Mask(96, 0, stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_160) = 0
                    numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0 = numberOfSignersForDocument[cd[4]].field_1536
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _279 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _305 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_305 + 32 len mem[_305]])
                    mem[_279 + 192] = cd[4]
                    mem[_279 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_279 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_279 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_279 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_279 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_279 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_279 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_279 + 160] = 244
                    mem[64] = _279 + 436
                    _347 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _347
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_347].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_279 + 436] = cd[((32 * idx) + cd[68] + 36)]
                emit LogSetNumberOfSignatureFields(cd[((32 * idx) + cd[68] + 36)], cd[4], address(cd[((32 * idx) + cd[36] + 36)]));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
        if stor151 != msg.sender:
            if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
                revert with 0, 'SIGNERS_FINALIZED'
            if ('cd', 68).length != ('cd', 36).length:
                revert with 0, 'BAD_ARRAYS'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _281 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _308 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_308 + 32 len mem[_308]])
                    mem[_281 + 192] = cd[4]
                    mem[_281 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_281 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_281 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_281 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_281 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_281 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_281 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_281 + 160] = 244
                    mem[64] = _281 + 436
                    _350 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _350
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_350].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_281 + 436] = cd[((32 * idx) + cd[68] + 36)]
                else:
                    numberOfSignersForDocument[cd[4]].field_1536++
                    address(stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_0) = address(cd[((32 * idx) + cd[36] + 36)])
                    Mask(96, 0, stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_160) = 0
                    numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0 = numberOfSignersForDocument[cd[4]].field_1536
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _283 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _311 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_311 + 32 len mem[_311]])
                    mem[_283 + 192] = cd[4]
                    mem[_283 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_283 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_283 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_283 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_283 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_283 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_283 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_283 + 160] = 244
                    mem[64] = _283 + 436
                    _353 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _353
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_353].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_283 + 436] = cd[((32 * idx) + cd[68] + 36)]
                emit LogSetNumberOfSignatureFields(cd[((32 * idx) + cd[68] + 36)], cd[4], address(cd[((32 * idx) + cd[36] + 36)]));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            if numberOfSignersForDocument[cd[4]].field_512 <= numberOfSignersForDocument[cd[4]].field_1536:
                revert with 0, 'SIGNERS_FINALIZED'
            if ('cd', 68).length != ('cd', 36).length:
                revert with 0, 'BAD_ARRAYS'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _285 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _314 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_314 + 32 len mem[_314]])
                    mem[_285 + 192] = cd[4]
                    mem[_285 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_285 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_285 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_285 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_285 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_285 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_285 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_285 + 160] = 244
                    mem[64] = _285 + 436
                    _356 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _356
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_356].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_285 + 436] = cd[((32 * idx) + cd[68] + 36)]
                else:
                    numberOfSignersForDocument[cd[4]].field_1536++
                    address(stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_0) = address(cd[((32 * idx) + cd[36] + 36)])
                    Mask(96, 0, stor[numberOfSignersForDocument[cd[4]].field_1536 + ('array', 6, ('map', ('cd', 4), ('name', 'numberOfSignersForDocument', 202)))].field_160) = 0
                    numberOfSignersForDocument[cd[4]][7][address(cd[((32 * idx) + cd[36] + 36)])].field_0 = numberOfSignersForDocument[cd[4]].field_1536
                    emit LogAddedNewSignerForDocument(address(cd[((32 * idx) + cd[36] + 36)]), cd[4]);
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = cd[4]
                    mem[32] = 202
                    _287 = mem[64]
                    mem[mem[64] + 32] = cd[4]
                    mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                    _317 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_317 + 32 len mem[_317]])
                    mem[_287 + 192] = cd[4]
                    mem[_287 + 224] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_287 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_287 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_287 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                    mem[_287 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                    mem[_287 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                    mem[_287 + 416] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_287 + 160] = 244
                    mem[64] = _287 + 436
                    _359 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[((32 * idx) + cd[36] + 36)]))
                    if numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                        revert with 0, 'NUM_SIG_EXISTS'
                    mem[0] = _359
                    mem[32] = sha3(cd[4], 202) + 10
                    numberOfSignersForDocument[cd[4]][10][_359].field_0 = cd[((32 * idx) + cd[68] + 36)]
                    mem[_287 + 436] = cd[((32 * idx) + cd[68] + 36)]
                emit LogSetNumberOfSignatureFields(cd[((32 * idx) + cd[68] + 36)], cd[4], address(cd[((32 * idx) + cd[36] + 36)]));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_b9c38e6b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
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
    if not numberOfSignersForDocument[cd[4]].field_256:
        mem[0] = address(cd[36])
        mem[32] = sha3(cd[4], 202) + 7
        if not numberOfSignersForDocument[cd[4]][7][address(cd[36])].field_0:
            revert with 0, 'UNAUTH'
        idx = 0
        while idx < ('cd', 100).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            if not address(cd[36]):
                revert with 0, 'ZERO_SENDER'
            mem[0] = cd[4]
            mem[32] = 202
            _1899 = mem[64]
            mem[mem[64] + 32] = cd[4]
            mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
            mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
            mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
            _1904 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            mem[0] = sha3(mem[_1904 + 32 len mem[_1904]])
            mem[_1899 + 192] = cd[4]
            mem[_1899 + 224] = numberOfSignersForDocument[cd[4]].field_768
            mem[_1899 + 256] = numberOfSignersForDocument[cd[4]].field_1024
            mem[_1899 + 288] = numberOfSignersForDocument[cd[4]].field_1280
            mem[_1899 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
            mem[_1899 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
            mem[_1899 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
            mem[_1899 + 416] = address(cd[36])
            mem[_1899 + 160] = 244
            _1916 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[36]))
            if numberOfSignersForDocument[cd[4]].field_512 != numberOfSignersForDocument[cd[4]].field_1536:
                revert with 0, 'SIGNERS_NOT_FINALIZED'
            mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[36]))
            if cd[((32 * idx) + cd[68] + 36)] >= numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                revert with 0, 'OUT_OF_BOUNDS'
            if not address(cd[36]):
                revert with 0, 'ZERO_SENDER'
            mem[_1899 + 468] = cd[4]
            mem[_1899 + 500] = numberOfSignersForDocument[cd[4]].field_768
            mem[_1899 + 532] = numberOfSignersForDocument[cd[4]].field_1024
            mem[_1899 + 564] = numberOfSignersForDocument[cd[4]].field_1280
            mem[_1899 + 436] = 128
            mem[_1899 + 628] = cd[4]
            mem[_1899 + 660] = numberOfSignersForDocument[cd[4]].field_768
            mem[_1899 + 692] = numberOfSignersForDocument[cd[4]].field_1024
            mem[_1899 + 724] = numberOfSignersForDocument[cd[4]].field_1280
            mem[_1899 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
            mem[_1899 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
            mem[_1899 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
            mem[_1899 + 852] = address(cd[36])
            mem[_1899 + 872] = cd[((32 * idx) + cd[68] + 36)]
            mem[_1899 + 596] = 276
            mem[_1899 + 936] = '\x19Ethereum Signed Message:\n32'
            mem[_1899 + 964] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)])
            mem[_1899 + 904] = 60
            mem[_1899 + 996] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            mem[_1899 + 1028 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
            mem[_1899 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 1028] = 0
            if ext_code.size(cd[36]):
                mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1028] = 0x1626ba7e00000000000000000000000000000000000000000000000000000000
                mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1032] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)]))
                mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1064] = 64
                mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1096] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                s = 0
                while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    mem[s + _1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1128] = mem[_1899 + s + 1028]
                    s = s + 32
                    continue 
                if ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) > cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 1128] = 0
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]) with:
                        gas gas_remaining wei
                       args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)])), Array(len=cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)], data=mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1128 len ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])])
                if ext_call.success:
                    require return_data.size >= 32
                    require not 0, ext_call.return_data[4 len 28]
                revert with 0, 'INVALID_SIGNER'
            if 65 == cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                if mem[_1899 + 1060] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _1981 = mem[_1899 + 1060]
            _1982 = mem[_1899 + 1028]
            if uint255(mem[_1899 + 1060]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[_1899 + 1060]) >> 255) + 27) != 27:
                if uint8((bool(mem[_1899 + 1060]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
            mem[64] = _1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1060
            mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1092] = uint8((bool(_1981) >> 255) + 27)
            mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1124] = _1982
            mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1156] = uint255(_1981)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)])), (bool(_1981) >> 255) + 27 << 248, _1982, uint255(_1981)) 
            mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1028] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != address(cd[36]):
                revert with 0, 'INVALID_SIGNER'
            if cd[((32 * idx) + cd[68] + 36)] >= 20:
                revert with 0, 50
            if bool(stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_0):
                if bool(stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_0) == uint255(stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_1) < 32:
                    revert with 0, 34
                if not cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_0 = 0
                    s = sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    while sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (uint255(stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_0 = (2 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
                    while cd[100] + cd[(cd[100] + (32 * idx) + 36)] + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (uint255(stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_1) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_0) == stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                if not cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_0 = 0
                    s = sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    while sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_0 = (2 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
                    while cd[100] + cd[(cd[100] + (32 * idx) + 36)] + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(_1916, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (stor212[cd[4]][_1916][cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1060] = cd[((32 * idx) + cd[68] + 36)]
            emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[68] + 36)], cd[4], address(cd[36]));
            mem[0] = _1916
            mem[32] = sha3(cd[4], 212) + 1
            if cd[((32 * idx) + cd[68] + 36)] >= 20:
                revert with 0, 50
            if not stor('array', ('div', 0.03125, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 68)))), ('map', ('var', '_1916'), ('array', 1, ('map', ('cd', 4), ('name', 'stor212', 212)))))[uint8(cd[((32 * idx) + cd[68] + 36)])]:
                if cd[((32 * idx) + cd[68] + 36)] >= 20:
                    revert with 0, 50
                stor212[cd[4]][1][_1916][0.03125 / cd[((32 * idx) + cd[68] + 36)]].field_0 = 256^(cd[((32 * idx) + cd[68] + 36)] % 32) or !(255 * 256^(cd[((32 * idx) + cd[68] + 36)] % 32)) and stor212[cd[4]][1][_1916][0.03125 / cd[((32 * idx) + cd[68] + 36)]].field_0
                if numberOfSignersForDocument[cd[4]][11][_1916].field_0 == -1:
                    revert with 0, 17
                numberOfSignersForDocument[cd[4]][11][_1916].field_0++
                mem[0] = _1916
                mem[32] = sha3(cd[4], 202) + 11
                if numberOfSignersForDocument[cd[4]][11][_1916].field_0 == numberOfSignersForDocument[cd[4]][10][_1916].field_0:
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1092] = cd[4]
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1124] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1156] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1188] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1060] = 128
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1252] = cd[4]
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1284] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1316] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1348] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1380] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1412] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1444] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                    mem[_1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1220] = 224
                    mem[64] = _1899 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1476
                    mem[0] = address(cd[36])
                    mem[32] = sha3(sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512), sha3(cd[4], 202) + 9) + 1
                    if not numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][1][address(cd[36])].field_0:
                        numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0++
                        address(numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0].field_0) = address(cd[36])
                        Mask(96, 0, numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0].field_160) = 0
                        mem[0] = address(cd[36])
                        mem[32] = sha3(sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512), sha3(cd[4], 202) + 9) + 1
                        numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][1][address(cd[36])].field_0 = numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0
                    emit LogSignedDocument(cd[4], address(cd[36]));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
        mem[0] = address(cd[36])
        mem[32] = sha3(cd[4], 202) + 7
        if not numberOfSignersForDocument[cd[4]][7][address(cd[36])].field_0:
            revert with 0, 'UNAUTH'
        idx = 0
        while idx < ('cd', 100).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            if not address(cd[36]):
                revert with 0, 'ZERO_SENDER'
            mem[0] = cd[4]
            mem[32] = 202
            _1901 = mem[64]
            mem[mem[64] + 32] = cd[4]
            mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
            mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
            mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
            _1907 = mem[64]
            mem[mem[64]] = 128
            mem[64] = mem[64] + 160
            mem[0] = sha3(mem[_1907 + 32 len mem[_1907]])
            mem[_1901 + 192] = cd[4]
            mem[_1901 + 224] = numberOfSignersForDocument[cd[4]].field_768
            mem[_1901 + 256] = numberOfSignersForDocument[cd[4]].field_1024
            mem[_1901 + 288] = numberOfSignersForDocument[cd[4]].field_1280
            mem[_1901 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
            mem[_1901 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
            mem[_1901 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
            mem[_1901 + 416] = address(cd[36])
            mem[_1901 + 160] = 244
            _1919 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[36]))
            if numberOfSignersForDocument[cd[4]].field_512 != numberOfSignersForDocument[cd[4]].field_1536:
                revert with 0, 'SIGNERS_NOT_FINALIZED'
            mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, address(cd[36]))
            if cd[((32 * idx) + cd[68] + 36)] >= numberOfSignersForDocument[cd[4]][10][mem[0]].field_0:
                revert with 0, 'OUT_OF_BOUNDS'
            if not address(cd[36]):
                revert with 0, 'ZERO_SENDER'
            mem[_1901 + 468] = cd[4]
            mem[_1901 + 500] = numberOfSignersForDocument[cd[4]].field_768
            mem[_1901 + 532] = numberOfSignersForDocument[cd[4]].field_1024
            mem[_1901 + 564] = numberOfSignersForDocument[cd[4]].field_1280
            mem[_1901 + 436] = 128
            mem[_1901 + 628] = cd[4]
            mem[_1901 + 660] = numberOfSignersForDocument[cd[4]].field_768
            mem[_1901 + 692] = numberOfSignersForDocument[cd[4]].field_1024
            mem[_1901 + 724] = numberOfSignersForDocument[cd[4]].field_1280
            mem[_1901 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
            mem[_1901 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
            mem[_1901 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
            mem[_1901 + 852] = address(cd[36])
            mem[_1901 + 872] = cd[((32 * idx) + cd[68] + 36)]
            mem[_1901 + 596] = 276
            mem[_1901 + 936] = '\x19Ethereum Signed Message:\n32'
            mem[_1901 + 964] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)])
            mem[_1901 + 904] = 60
            mem[_1901 + 996] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            mem[_1901 + 1028 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
            mem[_1901 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 1028] = 0
            if ext_code.size(cd[36]):
                mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1028] = 0x1626ba7e00000000000000000000000000000000000000000000000000000000
                mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1032] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)]))
                mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1064] = 64
                mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1096] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                s = 0
                while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    mem[s + _1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1128] = mem[_1901 + s + 1028]
                    s = s + 32
                    continue 
                if ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) > cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 1128] = 0
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]) with:
                        gas gas_remaining wei
                       args sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)])), Array(len=cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)], data=mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1128 len ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])])
                if ext_call.success:
                    require return_data.size >= 32
                    require not 0, ext_call.return_data[4 len 28]
                revert with 0, 'INVALID_SIGNER'
            if 65 == cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                if mem[_1901 + 1060] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _1984 = mem[_1901 + 1060]
            _1985 = mem[_1901 + 1028]
            if uint255(mem[_1901 + 1060]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[_1901 + 1060]) >> 255) + 27) != 27:
                if uint8((bool(mem[_1901 + 1060]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
            mem[64] = _1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1060
            mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1092] = uint8((bool(_1984) >> 255) + 27)
            mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1124] = _1985
            mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1156] = uint255(_1984)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, address(cd[36]), cd[((32 * idx) + cd[68] + 36)])), (bool(_1984) >> 255) + 27 << 248, _1985, uint255(_1984)) 
            mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1028] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != address(cd[36]):
                revert with 0, 'INVALID_SIGNER'
            if cd[((32 * idx) + cd[68] + 36)] >= 20:
                revert with 0, 50
            if bool(stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_0):
                if bool(stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_0) == uint255(stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_1) < 32:
                    revert with 0, 34
                if not cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_0 = 0
                    s = sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    while sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (uint255(stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_0 = (2 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
                    while cd[100] + cd[(cd[100] + (32 * idx) + 36)] + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (uint255(stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_1) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_0) == stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                if not cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_0 = 0
                    s = sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    while sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_0 = (2 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)])
                    t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
                    while cd[100] + cd[(cd[100] + (32 * idx) + 36)] + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(_1919, sha3(cd[4], 212)) + cd[((32 * idx) + cd[68] + 36)]) + (stor212[cd[4]][_1919][cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1060] = cd[((32 * idx) + cd[68] + 36)]
            emit LogSignedDocumentSignatureField(cd[((32 * idx) + cd[68] + 36)], cd[4], address(cd[36]));
            mem[0] = _1919
            mem[32] = sha3(cd[4], 212) + 1
            if cd[((32 * idx) + cd[68] + 36)] >= 20:
                revert with 0, 50
            if not stor('array', ('div', 0.03125, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 68)))), ('map', ('var', '_1919'), ('array', 1, ('map', ('cd', 4), ('name', 'stor212', 212)))))[uint8(cd[((32 * idx) + cd[68] + 36)])]:
                if cd[((32 * idx) + cd[68] + 36)] >= 20:
                    revert with 0, 50
                stor212[cd[4]][1][_1919][0.03125 / cd[((32 * idx) + cd[68] + 36)]].field_0 = 256^(cd[((32 * idx) + cd[68] + 36)] % 32) or !(255 * 256^(cd[((32 * idx) + cd[68] + 36)] % 32)) and stor212[cd[4]][1][_1919][0.03125 / cd[((32 * idx) + cd[68] + 36)]].field_0
                if numberOfSignersForDocument[cd[4]][11][_1919].field_0 == -1:
                    revert with 0, 17
                numberOfSignersForDocument[cd[4]][11][_1919].field_0++
                mem[0] = _1919
                mem[32] = sha3(cd[4], 202) + 11
                if numberOfSignersForDocument[cd[4]][11][_1919].field_0 == numberOfSignersForDocument[cd[4]][10][_1919].field_0:
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1092] = cd[4]
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1124] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1156] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1188] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1060] = 128
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1252] = cd[4]
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1284] = numberOfSignersForDocument[cd[4]].field_768
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1316] = numberOfSignersForDocument[cd[4]].field_1024
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1348] = numberOfSignersForDocument[cd[4]].field_1280
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1380] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1412] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1444] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                    mem[_1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1220] = 224
                    mem[64] = _1901 + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 1476
                    mem[0] = address(cd[36])
                    mem[32] = sha3(sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512), sha3(cd[4], 202) + 9) + 1
                    if not numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][1][address(cd[36])].field_0:
                        numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0++
                        address(numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0].field_0) = address(cd[36])
                        Mask(96, 0, numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0].field_160) = 0
                        mem[0] = address(cd[36])
                        mem[32] = sha3(sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512), sha3(cd[4], 202) + 9) + 1
                        numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)][1][address(cd[36])].field_0 = numberOfSignersForDocument[cd[4]][9][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512)].field_0
                    emit LogSignedDocument(cd[4], address(cd[36]));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_039a2195(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if not numberOfSignersForDocument[cd[4]].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if not numberOfSignersForDocument[cd[4]].field_256:
        if stor151 != msg.sender:
            if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            idx = 0
            while idx < numberOfSignersForDocument[cd[4]].field_1536:
                if not address(numberOfSignersForDocument[cd[4]][idx + 6].field_0):
                    revert with 0, 'ZERO_SENDER'
                mem[0] = cd[4]
                mem[32] = 202
                _309 = mem[64]
                mem[mem[64] + 32] = cd[4]
                mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                _320 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                mem[0] = sha3(mem[_320 + 32 len mem[_320]])
                mem[_309 + 192] = cd[4]
                mem[_309 + 224] = numberOfSignersForDocument[cd[4]].field_768
                mem[_309 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                mem[_309 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                mem[_309 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                mem[_309 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                mem[_309 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                mem[_309 + 416] = Mask(160, 96, address(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                mem[_309 + 160] = 244
                mem[64] = _309 + 436
                _342 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                if sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0)):
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                    mem[32] = sha3(cd[4], 202) + 13
                    mem[_309 + 436] = 0
                    mem[_309 + 468] = 0
                    mem[_309 + 500] = 0
                    if numberOfSignersForDocument[cd[4]][13][_342].field_0:
                        if stor151 != msg.sender:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            msg.sender,
                                                            cd[4],
                        else:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                            cd[4],
                    else:
                        if stor151 != msg.sender:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             msg.sender,
                                                             cd[4],
                        else:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                             cd[4],
                    numberOfSignersForDocument[cd[4]][13][_342].field_0 = 0
                    numberOfSignersForDocument[cd[4]][13][_342].field_256 = 0
                    numberOfSignersForDocument[cd[4]][13][_342].field_512 = 0
                else:
                    if stor151 != msg.sender:
                        if not msg.sender:
                            revert with 0, 'ZERO_SENDER'
                        mem[_309 + 468] = cd[4]
                        mem[_309 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_309 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_309 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_309 + 436] = 128
                        mem[_309 + 628] = cd[4]
                        mem[_309 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_309 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_309 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_309 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_309 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_309 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_309 + 852] = address(msg.sender)
                        mem[_309 + 596] = 244
                        mem[64] = _309 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_309 + 872] = 0
                        mem[_309 + 904] = 0
                        mem[_309 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_512 = 0
                    else:
                        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'ZERO_SENDER'
                        mem[_309 + 468] = cd[4]
                        mem[_309 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_309 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_309 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_309 + 436] = 128
                        mem[_309 + 628] = cd[4]
                        mem[_309 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_309 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_309 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_309 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_309 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_309 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_309 + 852] = Mask(64, 96, cd[(calldata.size - 20)])
                        mem[_309 + 596] = 244
                        mem[64] = _309 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_309 + 872] = 0
                        mem[_309 + 904] = 0
                        mem[_309 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_512 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            idx = 0
            while idx < numberOfSignersForDocument[cd[4]].field_1536:
                if not address(numberOfSignersForDocument[cd[4]][idx + 6].field_0):
                    revert with 0, 'ZERO_SENDER'
                mem[0] = cd[4]
                mem[32] = 202
                _311 = mem[64]
                mem[mem[64] + 32] = cd[4]
                mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                _323 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                mem[0] = sha3(mem[_323 + 32 len mem[_323]])
                mem[_311 + 192] = cd[4]
                mem[_311 + 224] = numberOfSignersForDocument[cd[4]].field_768
                mem[_311 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                mem[_311 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                mem[_311 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                mem[_311 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                mem[_311 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                mem[_311 + 416] = Mask(160, 96, address(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                mem[_311 + 160] = 244
                mem[64] = _311 + 436
                _345 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                if sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0)):
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                    mem[32] = sha3(cd[4], 202) + 13
                    mem[_311 + 436] = 0
                    mem[_311 + 468] = 0
                    mem[_311 + 500] = 0
                    if numberOfSignersForDocument[cd[4]][13][_345].field_0:
                        if stor151 != msg.sender:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            msg.sender,
                                                            cd[4],
                        else:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                            cd[4],
                    else:
                        if stor151 != msg.sender:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             msg.sender,
                                                             cd[4],
                        else:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                             cd[4],
                    numberOfSignersForDocument[cd[4]][13][_345].field_0 = 0
                    numberOfSignersForDocument[cd[4]][13][_345].field_256 = 0
                    numberOfSignersForDocument[cd[4]][13][_345].field_512 = 0
                else:
                    if stor151 != msg.sender:
                        if not msg.sender:
                            revert with 0, 'ZERO_SENDER'
                        mem[_311 + 468] = cd[4]
                        mem[_311 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_311 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_311 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_311 + 436] = 128
                        mem[_311 + 628] = cd[4]
                        mem[_311 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_311 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_311 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_311 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_311 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_311 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_311 + 852] = address(msg.sender)
                        mem[_311 + 596] = 244
                        mem[64] = _311 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_311 + 872] = 0
                        mem[_311 + 904] = 0
                        mem[_311 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_512 = 0
                    else:
                        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'ZERO_SENDER'
                        mem[_311 + 468] = cd[4]
                        mem[_311 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_311 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_311 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_311 + 436] = 128
                        mem[_311 + 628] = cd[4]
                        mem[_311 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_311 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_311 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_311 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_311 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_311 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_311 + 852] = Mask(64, 96, cd[(calldata.size - 20)])
                        mem[_311 + 596] = 244
                        mem[64] = _311 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_311 + 872] = 0
                        mem[_311 + 904] = 0
                        mem[_311 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_512 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if block.number > numberOfSignersForDocument[cd[4]].field_256:
            revert with 0, 'DOC_EXPIRED'
        if stor151 != msg.sender:
            if address(numberOfSignersForDocument[cd[4]].field_3584) != msg.sender:
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            idx = 0
            while idx < numberOfSignersForDocument[cd[4]].field_1536:
                if not address(numberOfSignersForDocument[cd[4]][idx + 6].field_0):
                    revert with 0, 'ZERO_SENDER'
                mem[0] = cd[4]
                mem[32] = 202
                _313 = mem[64]
                mem[mem[64] + 32] = cd[4]
                mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                _326 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                mem[0] = sha3(mem[_326 + 32 len mem[_326]])
                mem[_313 + 192] = cd[4]
                mem[_313 + 224] = numberOfSignersForDocument[cd[4]].field_768
                mem[_313 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                mem[_313 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                mem[_313 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                mem[_313 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                mem[_313 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                mem[_313 + 416] = Mask(160, 96, address(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                mem[_313 + 160] = 244
                mem[64] = _313 + 436
                _348 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                if sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0)):
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                    mem[32] = sha3(cd[4], 202) + 13
                    mem[_313 + 436] = 0
                    mem[_313 + 468] = 0
                    mem[_313 + 500] = 0
                    if numberOfSignersForDocument[cd[4]][13][_348].field_0:
                        if stor151 != msg.sender:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            msg.sender,
                                                            cd[4],
                        else:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                            cd[4],
                    else:
                        if stor151 != msg.sender:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             msg.sender,
                                                             cd[4],
                        else:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                             cd[4],
                    numberOfSignersForDocument[cd[4]][13][_348].field_0 = 0
                    numberOfSignersForDocument[cd[4]][13][_348].field_256 = 0
                    numberOfSignersForDocument[cd[4]][13][_348].field_512 = 0
                else:
                    if stor151 != msg.sender:
                        if not msg.sender:
                            revert with 0, 'ZERO_SENDER'
                        mem[_313 + 468] = cd[4]
                        mem[_313 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_313 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_313 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_313 + 436] = 128
                        mem[_313 + 628] = cd[4]
                        mem[_313 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_313 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_313 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_313 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_313 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_313 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_313 + 852] = address(msg.sender)
                        mem[_313 + 596] = 244
                        mem[64] = _313 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_313 + 872] = 0
                        mem[_313 + 904] = 0
                        mem[_313 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_512 = 0
                    else:
                        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'ZERO_SENDER'
                        mem[_313 + 468] = cd[4]
                        mem[_313 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_313 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_313 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_313 + 436] = 128
                        mem[_313 + 628] = cd[4]
                        mem[_313 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_313 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_313 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_313 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_313 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_313 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_313 + 852] = Mask(64, 96, cd[(calldata.size - 20)])
                        mem[_313 + 596] = 244
                        mem[64] = _313 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_313 + 872] = 0
                        mem[_313 + 904] = 0
                        mem[_313 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_512 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(numberOfSignersForDocument[cd[4]].field_3584):
                revert with 0, 'UNAUTH'
            mem[0] = cd[4]
            mem[32] = 202
            idx = 0
            while idx < numberOfSignersForDocument[cd[4]].field_1536:
                if not address(numberOfSignersForDocument[cd[4]][idx + 6].field_0):
                    revert with 0, 'ZERO_SENDER'
                mem[0] = cd[4]
                mem[32] = 202
                _315 = mem[64]
                mem[mem[64] + 32] = cd[4]
                mem[mem[64] + 64] = numberOfSignersForDocument[cd[4]].field_768
                mem[mem[64] + 96] = numberOfSignersForDocument[cd[4]].field_1024
                mem[mem[64] + 128] = numberOfSignersForDocument[cd[4]].field_1280
                _329 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                mem[0] = sha3(mem[_329 + 32 len mem[_329]])
                mem[_315 + 192] = cd[4]
                mem[_315 + 224] = numberOfSignersForDocument[cd[4]].field_768
                mem[_315 + 256] = numberOfSignersForDocument[cd[4]].field_1024
                mem[_315 + 288] = numberOfSignersForDocument[cd[4]].field_1280
                mem[_315 + 320] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_0
                mem[_315 + 352] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_256
                mem[_315 + 384] = numberOfSignersForDocument[cd[4]][8][mem[0]].field_512
                mem[_315 + 416] = Mask(160, 96, address(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                mem[_315 + 160] = 244
                mem[64] = _315 + 436
                _351 = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                if sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0)):
                    mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][mem[0]].field_0, numberOfSignersForDocument[cd[4]][8][mem[0]].field_256, numberOfSignersForDocument[cd[4]][8][mem[0]].field_512, uint64(numberOfSignersForDocument[cd[4]][idx + 6].field_0))
                    mem[32] = sha3(cd[4], 202) + 13
                    mem[_315 + 436] = 0
                    mem[_315 + 468] = 0
                    mem[_315 + 500] = 0
                    if numberOfSignersForDocument[cd[4]][13][_351].field_0:
                        if stor151 != msg.sender:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            msg.sender,
                                                            cd[4],
                        else:
                            emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                            0,
                                                            Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                            cd[4],
                    else:
                        if stor151 != msg.sender:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             msg.sender,
                                                             cd[4],
                        else:
                            emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                             0,
                                                             Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                             cd[4],
                    numberOfSignersForDocument[cd[4]][13][_351].field_0 = 0
                    numberOfSignersForDocument[cd[4]][13][_351].field_256 = 0
                    numberOfSignersForDocument[cd[4]][13][_351].field_512 = 0
                else:
                    if stor151 != msg.sender:
                        if not msg.sender:
                            revert with 0, 'ZERO_SENDER'
                        mem[_315 + 468] = cd[4]
                        mem[_315 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_315 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_315 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_315 + 436] = 128
                        mem[_315 + 628] = cd[4]
                        mem[_315 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_315 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_315 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_315 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_315 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_315 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_315 + 852] = address(msg.sender)
                        mem[_315 + 596] = 244
                        mem[64] = _315 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_315 + 872] = 0
                        mem[_315 + 904] = 0
                        mem[_315 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, msg.sender)].field_512 = 0
                    else:
                        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'ZERO_SENDER'
                        mem[_315 + 468] = cd[4]
                        mem[_315 + 500] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_315 + 532] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_315 + 564] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_315 + 436] = 128
                        mem[_315 + 628] = cd[4]
                        mem[_315 + 660] = numberOfSignersForDocument[cd[4]].field_768
                        mem[_315 + 692] = numberOfSignersForDocument[cd[4]].field_1024
                        mem[_315 + 724] = numberOfSignersForDocument[cd[4]].field_1280
                        mem[_315 + 756] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0
                        mem[_315 + 788] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256
                        mem[_315 + 820] = numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512
                        mem[_315 + 852] = Mask(64, 96, cd[(calldata.size - 20)])
                        mem[_315 + 596] = 244
                        mem[64] = _315 + 872
                        mem[0] = sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))
                        mem[32] = sha3(cd[4], 202) + 13
                        mem[_315 + 872] = 0
                        mem[_315 + 904] = 0
                        mem[_315 + 936] = 0
                        if numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0:
                            if stor151 != msg.sender:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                msg.sender,
                                                                cd[4],
                            else:
                                emit LogEditedCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                0,
                                                                Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                cd[4],
                        else:
                            if stor151 != msg.sender:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 msg.sender,
                                                                 cd[4],
                            else:
                                emit LogLeftNewCommentOnDocument(address rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5):
                                                                 0,
                                                                 Mask(64, 96, cd[(calldata.size - 20)]) >> 96,
                                                                 cd[4],
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_0 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_256 = 0
                        numberOfSignersForDocument[cd[4]][13][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_0, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_256, numberOfSignersForDocument[cd[4]][8][sha3(cd[4], numberOfSignersForDocument[cd[4]].field_768, numberOfSignersForDocument[cd[4]].field_1024, numberOfSignersForDocument[cd[4]].field_1280)].field_512, Mask(64, 96, cd[(calldata.size - 20)]))].field_512 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_4fc62e71(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not numberOfSignersForDocument[arg2].field_0:
        revert with 0, 'DOC_NOT_EXIST'
    if not address(arg1):
        revert with 0, 'ZERO_SENDER'
    mem[128] = arg2
    mem[160] = numberOfSignersForDocument[arg2].field_768
    mem[192] = numberOfSignersForDocument[arg2].field_1024
    mem[224] = numberOfSignersForDocument[arg2].field_1280
    mem[96] = 128
    mem[288] = arg2
    mem[320] = numberOfSignersForDocument[arg2].field_768
    mem[352] = numberOfSignersForDocument[arg2].field_1024
    mem[384] = numberOfSignersForDocument[arg2].field_1280
    mem[416] = numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0
    mem[448] = numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256
    mem[480] = numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512
    mem[512] = address(arg1)
    mem[256] = 244
    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))
    mem[32] = sha3(arg2, 202) + 10
    if numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 > test266151307():
        revert with 0, 65
    mem[532] = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0
    if not numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
        if numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564] = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0
        if not numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
            if numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 > test266151307():
                revert with 0, 65
            mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0
            mem[64] = (98 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
            if not numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _253 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _284 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_284 + 32 len mem[_284]])
                    mem[_253 + 192] = arg2
                    mem[_253 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_253 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_253 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_253 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_253 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_253 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_253 + 416] = address(arg1)
                    mem[_253 + 436] = idx
                    mem[_253 + 160] = 276
                    mem[64] = _253 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _227 = mem[64]
                mem[mem[64]] = 96
                _251 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _251] = mem[564 len 32 * _251]
                mem[mem[64] + 32] = (32 * _251) + 128
                _435 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_227 + (32 * _251) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_227 + (32 * _251) + 160 len 32 * _435] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _435]
                mem[_227 + 64] = (32 * _251) + (32 * _435) + 160
                _483 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_227 + (32 * _251) + (32 * _435) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _227 + (32 * _251) + (32 * _435) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _483:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628 len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0]
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _256 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _288 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_288 + 32 len mem[_288]])
                    mem[_256 + 192] = arg2
                    mem[_256 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_256 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_256 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_256 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_256 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_256 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_256 + 416] = address(arg1)
                    mem[_256 + 436] = idx
                    mem[_256 + 160] = 276
                    mem[64] = _256 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _228 = mem[64]
                mem[mem[64]] = 96
                _254 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _254] = mem[564 len 32 * _254]
                mem[_228 + 32] = (32 * _254) + 128
                _436 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_228 + (32 * _254) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_228 + (32 * _254) + 160 len 32 * _436] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _436]
                mem[_228 + 64] = (32 * _254) + (32 * _436) + 160
                _484 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_228 + (32 * _254) + (32 * _436) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _228 + (32 * _254) + (32 * _436) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _484:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0]
            if numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 > test266151307():
                revert with 0, 65
            mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0
            mem[64] = (98 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
            if not numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _259 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _292 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_292 + 32 len mem[_292]])
                    mem[_259 + 192] = arg2
                    mem[_259 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_259 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_259 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_259 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_259 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_259 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_259 + 416] = address(arg1)
                    mem[_259 + 436] = idx
                    mem[_259 + 160] = 276
                    mem[64] = _259 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _229 = mem[64]
                mem[mem[64]] = 96
                _257 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _257] = mem[564 len 32 * _257]
                mem[_229 + 32] = (32 * _257) + 128
                _437 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_229 + (32 * _257) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_229 + (32 * _257) + 160 len 32 * _437] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _437]
                mem[_229 + 64] = (32 * _257) + (32 * _437) + 160
                _485 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_229 + (32 * _257) + (32 * _437) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _229 + (32 * _257) + (32 * _437) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _485:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628 len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0]
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _262 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _296 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_296 + 32 len mem[_296]])
                    mem[_262 + 192] = arg2
                    mem[_262 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_262 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_262 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_262 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_262 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_262 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_262 + 416] = address(arg1)
                    mem[_262 + 436] = idx
                    mem[_262 + 160] = 276
                    mem[64] = _262 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _230 = mem[64]
                mem[mem[64]] = 96
                _260 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _260] = mem[564 len 32 * _260]
                mem[mem[64] + 32] = (32 * _260) + 128
                _438 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_230 + (32 * _260) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_230 + (32 * _260) + 160 len 32 * _438] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _438]
                mem[_230 + 64] = (32 * _260) + (32 * _438) + 160
                _486 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_230 + (32 * _260) + (32 * _438) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _230 + (32 * _260) + (32 * _438) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _486:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[564 len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0]
        if numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564] = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0
        if not numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
            if numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 > test266151307():
                revert with 0, 65
            mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0
            mem[64] = (98 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
            if not numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _265 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _300 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_300 + 32 len mem[_300]])
                    mem[_265 + 192] = arg2
                    mem[_265 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_265 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_265 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_265 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_265 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_265 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_265 + 416] = address(arg1)
                    mem[_265 + 436] = idx
                    mem[_265 + 160] = 276
                    mem[64] = _265 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _231 = mem[64]
                mem[mem[64]] = 96
                _263 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _263] = mem[564 len 32 * _263]
                mem[_231 + 32] = (32 * _263) + 128
                _439 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_231 + (32 * _263) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_231 + (32 * _263) + 160 len 32 * _439] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _439]
                mem[_231 + 64] = (32 * _263) + (32 * _439) + 160
                _487 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_231 + (32 * _263) + (32 * _439) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _231 + (32 * _263) + (32 * _439) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _487:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628 len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0]
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _268 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _304 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_304 + 32 len mem[_304]])
                    mem[_268 + 192] = arg2
                    mem[_268 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_268 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_268 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_268 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_268 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_268 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_268 + 416] = address(arg1)
                    mem[_268 + 436] = idx
                    mem[_268 + 160] = 276
                    mem[64] = _268 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _232 = mem[64]
                mem[mem[64]] = 96
                _266 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _266] = mem[564 len 32 * _266]
                mem[_232 + 32] = (32 * _266) + 128
                _440 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_232 + (32 * _266) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_232 + (32 * _266) + 160 len 32 * _440] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _440]
                mem[_232 + 64] = (32 * _266) + (32 * _440) + 160
                _488 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_232 + (32 * _266) + (32 * _440) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _232 + (32 * _266) + (32 * _440) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _488:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0]
            if numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 > test266151307():
                revert with 0, 65
            mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0
            mem[64] = (98 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
            if not numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _271 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _308 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_308 + 32 len mem[_308]])
                    mem[_271 + 192] = arg2
                    mem[_271 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_271 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_271 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_271 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_271 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_271 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_271 + 416] = address(arg1)
                    mem[_271 + 436] = idx
                    mem[_271 + 160] = 276
                    mem[64] = _271 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _233 = mem[64]
                mem[mem[64]] = 96
                _269 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _269] = mem[564 len 32 * _269]
                mem[mem[64] + 32] = (32 * _269) + 128
                _441 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_233 + (32 * _269) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_233 + (32 * _269) + 160 len 32 * _441] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _441]
                mem[_233 + 64] = (32 * _269) + (32 * _441) + 160
                _489 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_233 + (32 * _269) + (32 * _441) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _233 + (32 * _269) + (32 * _441) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _489:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628 len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0] = call.data[calldata.size len 32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0]
                idx = 0
                while idx < numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0:
                    if not address(arg1):
                        revert with 0, 'ZERO_SENDER'
                    mem[0] = arg2
                    mem[32] = 202
                    _274 = mem[64]
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = numberOfSignersForDocument[arg2].field_768
                    mem[mem[64] + 96] = numberOfSignersForDocument[arg2].field_1024
                    mem[mem[64] + 128] = numberOfSignersForDocument[arg2].field_1280
                    _312 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    mem[0] = sha3(mem[_312 + 32 len mem[_312]])
                    mem[_274 + 192] = arg2
                    mem[_274 + 224] = numberOfSignersForDocument[arg2].field_768
                    mem[_274 + 256] = numberOfSignersForDocument[arg2].field_1024
                    mem[_274 + 288] = numberOfSignersForDocument[arg2].field_1280
                    mem[_274 + 320] = numberOfSignersForDocument[arg2][8][mem[0]].field_0
                    mem[_274 + 352] = numberOfSignersForDocument[arg2][8][mem[0]].field_256
                    mem[_274 + 384] = numberOfSignersForDocument[arg2][8][mem[0]].field_512
                    mem[_274 + 416] = address(arg1)
                    mem[_274 + 436] = idx
                    mem[_274 + 160] = 276
                    mem[64] = _274 + 468
                    mem[0] = sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][mem[0]].field_0, numberOfSignersForDocument[arg2][8][mem[0]].field_256, numberOfSignersForDocument[arg2][8][mem[0]].field_512, address(arg1), idx)
                    mem[32] = sha3(arg2, 202) + 12
                    if idx >= mem[532]:
                        revert with 0, 50
                    mem[(32 * idx) + 564] = numberOfSignersForDocument[arg2][12][mem[0]].field_0
                    if idx >= mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596] = numberOfSignersForDocument[arg2][12][mem[0]].field_256
                    if idx >= mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628] = uint8(numberOfSignersForDocument[arg2][12][mem[0]].field_512)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _234 = mem[64]
                mem[mem[64]] = 96
                _272 = mem[532]
                mem[mem[64] + 96] = mem[532]
                mem[mem[64] + 128 len 32 * _272] = mem[564 len 32 * _272]
                mem[_234 + 32] = (32 * _272) + 128
                _442 = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_234 + (32 * _272) + 128] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 564]
                mem[_234 + (32 * _272) + 160 len 32 * _442] = mem[(32 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596 len 32 * _442]
                mem[_234 + 64] = (32 * _272) + (32 * _442) + 160
                _490 = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                mem[_234 + (32 * _272) + (32 * _442) + 160] = mem[(64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 596]
                s = 0
                s = _234 + (32 * _272) + (32 * _442) + 192
                t = (64 * numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0) + 628
                while numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 < _490:
                    mem[s] = mem[t + 31 len 1]
                    s = numberOfSignersForDocument[arg2][10][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_0, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_256, numberOfSignersForDocument[arg2][8][sha3(arg2, numberOfSignersForDocument[arg2].field_768, numberOfSignersForDocument[arg2].field_1024, numberOfSignersForDocument[arg2].field_1280)].field_512, address(arg1))].field_0 + 1
                    s = s + 32
                    t = t + 32
                    continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
