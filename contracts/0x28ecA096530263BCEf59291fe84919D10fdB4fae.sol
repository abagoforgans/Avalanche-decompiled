contract main {




// =====================  Runtime code  =====================


#
#  - getModules()
#  - setup(address[] arg1, uint256 arg2, address arg3, bytes arg4, address arg5, address arg6, uint256 arg7, address arg8)
#  - getModulesPaginated(address arg1, uint256 arg2)
#
const NAME = 'Gnosis Safe'

const VERSION = '1.1.1'


address stor0;
mapping of address stor1;
mapping of address stor2;
uint256 stor3;
uint256 threshold;
uint256 nonce;
uint256 domainSeparator;
mapping of uint256 signedMessages;
mapping of uint256 approvedHashes;
uint128 stor6C9A; offset 160
address stor6C9A;
uint256 stor6C9A;

function signedMessages(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return signedMessages[arg1]
}

function approvedHashes(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return approvedHashes[arg1][arg2]
}

function nonce() {
    return nonce
}

function getThreshold() {
    return threshold
}

function domainSeparator() {
    return domainSeparator
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return arg1 != 1
    return not not stor2[address(arg1)]
}

function approveHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'Only owners can approve a hash'
    approvedHashes[address(msg.sender)][arg1] = 1
    emit ApproveHash(arg1, msg.sender);
}

function _fallback() payable {
    if msg.value > 0:
    if not calldata.size:
    if not address(stor6C9A.field_0):
    call uint256(stor6C9A.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function setFallbackHandler(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    address(stor6C9A.field_0) = arg1
    Mask(96, 0, stor6C9A.field_160) = 0
}

function getOwners() {
    if stor3:
        mem[128 len 32 * stor3] = code.data[24040 len 32 * stor3]
    mem[0] = 1
    mem[32] = 2
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while address(idx) != 1:
        require s < stor3
        mem[(32 * s) + 128] = address(idx)
        mem[0] = address(idx)
        mem[32] = 2
        idx = stor2[address(idx)]
        s = s + 1
        continue 
    mem[(32 * stor3) + 192 len floor32(stor3)] = mem[128 len floor32(stor3)]
    return Array(len=stor3, data=mem[128 len floor32(stor3)], mem[(32 * stor3) + floor32(stor3) + 192 len (32 * stor3) - floor32(stor3)]), 
}

function getMessageHash(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]))
}

function enableModule(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'Invalid module address provided'
    if arg1 == 1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)]:
        revert with 0, 'Module has already been added'
    stor1[address(arg1)] = stor1[1]
    stor1[1] = arg1
    emit EnabledModule(arg1);
}

function changeMasterCopy(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
    emit ChangedMasterCopy(arg1);
}

function disableModule(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg2:
        revert with 0, 'Invalid module address provided'
    if arg2 == 1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)] != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64496e76616c696420707265764d6f64756c652c206d6f64756c6520706169722070726f76696465,
                    mem[204 len 24]
    stor1[address(arg1)] = stor1[address(arg2)]
    stor1[address(arg2)] = 0
    emit DisabledModule(arg2);
}

function changeThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if arg1 > stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                    mem[199 len 29]
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                    mem[200 len 28]
    threshold = arg1
    emit ChangedThreshold(threshold);
}

function signMessage(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    signedMessages[0][0][stor6][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])] = 1
    emit SignMsg(sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])));
}

function getTransactionHash(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))
}

function swapOwner(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg3:
        revert with 0, 'Invalid owner address provided'
    if arg3 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg3)]:
        revert with 0, 'Address is already an owner'
    if not arg2:
        revert with 0, 'Invalid owner address provided'
    if arg2 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)] != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[address(arg3)] = stor2[address(arg2)]
    stor2[address(arg1)] = arg3
    stor2[address(arg2)] = 0
    emit RemovedOwner(arg2);
    emit AddedOwner(arg3);
}

function encodeTransactionData(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return Array(len=66, data=0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0 >> 256, Mask(16, -512, 0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0) << 512), 
}

function addOwnerWithThreshold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'Invalid owner address provided'
    if arg1 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)]:
        revert with 0, 'Address is already an owner'
    stor2[address(arg1)] = stor2[1]
    stor2[1] = arg1
    stor3++
    emit AddedOwner(arg1);
    if threshold != arg2:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                        mem[208 len 20]
        if arg2 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                        mem[199 len 29]
        if arg2 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                        mem[200 len 28]
        threshold = arg2
        emit ChangedThreshold(threshold);
}

function execTransactionFromModule(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if msg.sender == 1:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        mem[ceil32(arg3.length) + 128] = bool(ext_call.success)
    else:
        require arg4 <= 1
        if arg4 != 1:
            emit ExecutionFromModuleFailure(msg.sender);
            mem[ceil32(arg3.length) + 128] = 0
        else:
            delegate arg1 with:
                 gas gas_remaining wei
                args arg3[all]
            if not delegate.return_code:
                emit ExecutionFromModuleFailure(msg.sender);
            else:
                emit ExecutionFromModuleSuccess(msg.sender);
            mem[ceil32(arg3.length) + 128] = bool(delegate.return_code)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function removeOwner(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if stor3 - 1 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x744e6577206f776e657220636f756e74206e6565647320746f206265206c6172676572207468616e206e6577207468726573686f6c,
                    mem[217 len 11]
    if not arg2:
        revert with 0, 'Invalid owner address provided'
    if arg2 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)] != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[address(arg1)] = stor2[address(arg2)]
    stor2[address(arg2)] = 0
    stor3--
    emit RemovedOwner(arg2);
    if threshold != arg3:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                        mem[208 len 20]
        if arg3 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                        mem[199 len 29]
        if arg3 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                        mem[200 len 28]
        threshold = arg3
        emit ChangedThreshold(threshold);
}

function requiredTxGas(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        require ext_call.success
    else:
        require arg4 <= 1
        require arg4 == 1
        delegate arg1 with:
             gas gas_remaining wei
            args arg3[all]
        require delegate.return_code
    mem[ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg3.length) + 128] = 32
    mem[64] = ceil32(arg3.length) + 192
    mem[ceil32(arg3.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 196] = 32
    mem[ceil32(arg3.length) + 228] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 260 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        revert with memory
          from ceil32(arg3.length) + 192
           len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 68
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 260] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 292 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    revert with memory
      from ceil32(arg3.length) + 192
       len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 100
}

function execTransactionFromModuleReturnData(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if msg.sender == 1:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    require arg4 <= 1
    if arg4 == 1:
        delegate arg1 with:
             gas gas_remaining wei
            args arg3[all]
        if not delegate.return_code:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(delegate.return_code), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    emit ExecutionFromModuleFailure(msg.sender);
    mem[ceil32(arg3.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + return_data.size + 160] = 0
    mem[ceil32(arg3.length) + return_data.size + 256 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]
    if not return_data.size % 32:
        return 0, 
               64,
               return_data.size,
               Mask(8 * return_data.size, -(8 * return_data.size) + 256, ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]) << (8 * return_data.size) - 256
    mem[floor32(return_data.size) + ceil32(arg3.length) + return_data.size + 256] = mem[(2 * floor32(return_data.size)) + ceil32(arg3.length) + 288 len return_data.size % 32]
    return 0, 
           64,
           return_data.size,
           Mask(8 * ceil32(return_data.size), -(8 * ceil32(return_data.size)) + 256, ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]) << (8 * ceil32(return_data.size)) - 256,
           mem[ceil32(arg3.length) + return_data.size + ceil32(return_data.size) + 256 len floor32(return_data.size) + -ceil32(return_data.size) + 32]
}

function isValidSignature(bytes arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    _7 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 257] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 258] = domainSeparator
    mem[ceil32(arg1.length) + 290] = _7
    mem[ceil32(arg1.length) + 224] = 66
    if not arg2.length:
        if not signedMessages[0][0][stor6][_7]:
            revert with 0, 'Hash not approved'
        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 322] = arg1.length
    mem[ceil32(arg1.length) + 354 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 354] = 0
    mem[64] = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
    mem[(2 * ceil32(arg1.length)) + 354] = arg2.length
    mem[(2 * ceil32(arg1.length)) + 386 len arg2.length] = arg2[all]
    mem[(2 * ceil32(arg1.length)) + arg2.length + 386] = 0
    if threshold <= 0:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 30
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Threshold needs to be defined!'
    else:
        if not threshold:
            if arg2.length >= 0:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while idx < threshold:
                    _412 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                    _413 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    _414 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 419]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] == 1:
                            if msg.sender == mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]:
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]]:
                                    revert with 0, 'Invalid owner provided'
                            else:
                                if not approvedHashes[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                    revert with 0, 'Hash has not been approved'
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[address(mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386])]:
                                    revert with 0, 'Invalid owner provided'
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] == 1:
                                revert with 0, 'Invalid owner provided'
                            idx = idx + 1
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            continue 
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] <= 30:
                            _431 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_431 + 32] = sha3(0, 0, domainSeparator, _7)
                            mem[_431 + 64] = uint8(_414)
                            mem[_431 + 96] = _412
                            mem[_431 + 128] = _413
                            signer = erecover(sha3(0, 0, domainSeparator, _7), _414 << 248, _412, _413) 
                            mem[_431] = signer
                        else:
                            _434 = mem[64]
                            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                            mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                            _435 = mem[64]
                            mem[mem[64]] = 60
                            mem[64] = mem[64] + 92
                            _437 = sha3(mem[_435 + 32 len mem[_435]])
                            mem[_434 + 92] = 0
                            mem[64] = _434 + 124
                            mem[_434 + 124] = _437
                            mem[_434 + 156] = uint8(uint8(_414) - 4)
                            mem[_434 + 188] = _412
                            mem[_434 + 220] = _413
                            signer = erecover(_437, uint8(_414) - 4 << 248, _412, _413) 
                            mem[_434 + 92] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = address(signer)
                        mem[32] = 2
                        if not stor2[address(signer)]:
                            revert with 0, 'Invalid owner provided'
                        if address(signer) == 1:
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = _413
                        s = _412
                        s = uint8(_414)
                        s = signer
                        s = signer
                        continue 
                    if not threshold:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 0:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _546 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _546:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _546 % 32:
                            mem[mem[64] + 36] = _546 + 96
                            mem[_546 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _805 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _805:
                                mem[_546 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _805 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _546 + 96, mem[mem[64] + 68 len _805 + _546 + 64]
                            else:
                                mem[floor32(_805) + _546 + mem[64] + 132] = mem[floor32(_805) + _546 + mem[64] + -(_805 % 32) + 164 len _805 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _546 + 96, mem[mem[64] + 68 len floor32(_805) + _546 + 96]
                        else:
                            mem[floor32(_546) + mem[64] + 100] = mem[floor32(_546) + mem[64] + -(_546 % 32) + 132 len _546 % 32]
                            mem[mem[64] + 36] = floor32(_546) + 128
                            mem[floor32(_546) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _814 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _814:
                                mem[floor32(_546) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _814 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_546) + 128, mem[mem[64] + 68 len _814 + floor32(_546) + 96]
                            else:
                                mem[floor32(_814) + floor32(_546) + mem[64] + 164] = mem[floor32(_814) + floor32(_546) + mem[64] + -(_814 % 32) + 196 len _814 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_546) + 128, mem[mem[64] + 68 len floor32(_814) + floor32(_546) + 128]
                    else:
                        require threshold
                        require 65 * threshold / threshold == 65
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 65 * threshold:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _557 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _557:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _557 % 32:
                            mem[mem[64] + 36] = _557 + 96
                            mem[_557 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _802 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _802:
                                mem[_557 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _802 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _557 + 96, mem[mem[64] + 68 len _802 + _557 + 64]
                            else:
                                mem[floor32(_802) + _557 + mem[64] + 132] = mem[floor32(_802) + _557 + mem[64] + -(_802 % 32) + 164 len _802 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _557 + 96, mem[mem[64] + 68 len floor32(_802) + _557 + 96]
                        else:
                            mem[floor32(_557) + mem[64] + 100] = mem[floor32(_557) + mem[64] + -(_557 % 32) + 132 len _557 % 32]
                            mem[mem[64] + 36] = floor32(_557) + 128
                            mem[floor32(_557) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _812 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _812:
                                mem[floor32(_557) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _812 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_557) + 128, mem[mem[64] + 68 len _812 + floor32(_557) + 96]
                            else:
                                mem[floor32(_812) + floor32(_557) + mem[64] + 164] = mem[floor32(_812) + floor32(_557) + mem[64] + -(_812 % 32) + 196 len _812 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_557) + 128, mem[mem[64] + 68 len floor32(_812) + floor32(_557) + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
                    if address(_412) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(_412)
                    mem[32] = 2
                    if not stor2[address(_412)]:
                        revert with 0, 'Invalid owner provided'
                    if address(_412) == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _413
                    s = _412
                    s = uint8(_414)
                    s = _412
                    s = _412
                    continue 
                return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
        else:
            require threshold
            require 65 * threshold / threshold == 65
            if arg2.length >= 65 * threshold:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while idx < threshold:
                    _409 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                    _410 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    _411 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 419]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] == 1:
                            if msg.sender == mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]:
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]]:
                                    revert with 0, 'Invalid owner provided'
                            else:
                                if not approvedHashes[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                    revert with 0, 'Hash has not been approved'
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[address(mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386])]:
                                    revert with 0, 'Invalid owner provided'
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] == 1:
                                revert with 0, 'Invalid owner provided'
                            idx = idx + 1
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            continue 
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] <= 30:
                            _419 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_419 + 32] = sha3(0, 0, domainSeparator, _7)
                            mem[_419 + 64] = uint8(_411)
                            mem[_419 + 96] = _409
                            mem[_419 + 128] = _410
                            signer = erecover(sha3(0, 0, domainSeparator, _7), _411 << 248, _409, _410) 
                            mem[_419] = signer
                        else:
                            _422 = mem[64]
                            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                            mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                            _423 = mem[64]
                            mem[mem[64]] = 60
                            mem[64] = mem[64] + 92
                            _425 = sha3(mem[_423 + 32 len mem[_423]])
                            mem[_422 + 92] = 0
                            mem[64] = _422 + 124
                            mem[_422 + 124] = _425
                            mem[_422 + 156] = uint8(uint8(_411) - 4)
                            mem[_422 + 188] = _409
                            mem[_422 + 220] = _410
                            signer = erecover(_425, uint8(_411) - 4 << 248, _409, _410) 
                            mem[_422 + 92] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = address(signer)
                        mem[32] = 2
                        if not stor2[address(signer)]:
                            revert with 0, 'Invalid owner provided'
                        if address(signer) == 1:
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = _410
                        s = _409
                        s = uint8(_411)
                        s = signer
                        s = signer
                        continue 
                    if not threshold:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 0:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _541 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _541:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _541 % 32:
                            mem[mem[64] + 36] = _541 + 96
                            mem[_541 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _799 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _799:
                                mem[_541 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _799 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _541 + 96, mem[mem[64] + 68 len _799 + _541 + 64]
                            else:
                                mem[floor32(_799) + _541 + mem[64] + 132] = mem[floor32(_799) + _541 + mem[64] + -(_799 % 32) + 164 len _799 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _541 + 96, mem[mem[64] + 68 len floor32(_799) + _541 + 96]
                        else:
                            mem[floor32(_541) + mem[64] + 100] = mem[floor32(_541) + mem[64] + -(_541 % 32) + 132 len _541 % 32]
                            mem[mem[64] + 36] = floor32(_541) + 128
                            mem[floor32(_541) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _810 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _810:
                                mem[floor32(_541) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _810 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_541) + 128, mem[mem[64] + 68 len _810 + floor32(_541) + 96]
                            else:
                                mem[floor32(_810) + floor32(_541) + mem[64] + 164] = mem[floor32(_810) + floor32(_541) + mem[64] + -(_810 % 32) + 196 len _810 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_541) + 128, mem[mem[64] + 68 len floor32(_810) + floor32(_541) + 128]
                    else:
                        require threshold
                        require 65 * threshold / threshold == 65
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 65 * threshold:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _551 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _551:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _551 % 32:
                            mem[mem[64] + 36] = _551 + 96
                            mem[_551 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _796 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _796:
                                mem[_551 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _796 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _551 + 96, mem[mem[64] + 68 len _796 + _551 + 64]
                            else:
                                mem[floor32(_796) + _551 + mem[64] + 132] = mem[floor32(_796) + _551 + mem[64] + -(_796 % 32) + 164 len _796 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _551 + 96, mem[mem[64] + 68 len floor32(_796) + _551 + 96]
                        else:
                            mem[floor32(_551) + mem[64] + 100] = mem[floor32(_551) + mem[64] + -(_551 % 32) + 132 len _551 % 32]
                            mem[mem[64] + 36] = floor32(_551) + 128
                            mem[floor32(_551) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _808 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _808:
                                mem[floor32(_551) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _808 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_551) + 128, mem[mem[64] + 68 len _808 + floor32(_551) + 96]
                            else:
                                mem[floor32(_808) + floor32(_551) + mem[64] + 164] = mem[floor32(_808) + floor32(_551) + mem[64] + -(_808 % 32) + 196 len _808 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_551) + 128, mem[mem[64] + 68 len floor32(_808) + floor32(_551) + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
                    if address(_409) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(_409)
                    mem[32] = 2
                    if not stor2[address(_409)]:
                        revert with 0, 'Invalid owner provided'
                    if address(_409) == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _410
                    s = _409
                    s = uint8(_411)
                    s = _409
                    s = _409
                    continue 
                return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 25
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Signatures data too short'
    revert with memory
      from (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
       len ceil32(arg1.length) + 100
}

function execTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, bytes arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = nonce
    mem[ceil32(arg3.length) + 128] = 352
    _7 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    mem[ceil32(arg3.length) + 544] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 545] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 546] = domainSeparator
    mem[ceil32(arg3.length) + 578] = _7
    mem[ceil32(arg3.length) + 512] = 66
    nonce++
    mem[64] = ceil32(arg3.length) + ceil32(arg10.length) + 642
    mem[ceil32(arg3.length) + 610] = arg10.length
    mem[ceil32(arg3.length) + 642 len arg10.length] = arg10[all]
    mem[ceil32(arg3.length) + arg10.length + 642] = 0
    if threshold <= 0:
        revert with 0, 'Threshold needs to be defined!'
    if not threshold:
        if arg10.length < 0:
            revert with 0, 'Signatures data too short'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < threshold:
            _3648 = mem[ceil32(arg3.length) + (65 * idx) + 642]
            _3649 = mem[ceil32(arg3.length) + (65 * idx) + 674]
            _3650 = mem[ceil32(arg3.length) + (65 * idx) + 675]
            if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]:
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] == 1:
                    if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                        if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]]:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])]:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[ceil32(arg3.length) + (65 * idx) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])]:
                            revert with 0, 'Invalid owner provided'
                    if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[ceil32(arg3.length) + (65 * idx) + 674]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    continue 
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] <= 30:
                    _3669 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3669 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_3669 + 64] = uint8(_3650)
                    mem[_3669 + 96] = _3648
                    mem[_3669 + 128] = _3649
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _3650 << 248, _3648, _3649) 
                    mem[_3669] = signer
                else:
                    _3672 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                    _3673 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _3675 = sha3(mem[_3673 + 32 len mem[_3673]])
                    mem[_3672 + 92] = 0
                    mem[64] = _3672 + 124
                    mem[_3672 + 124] = _3675
                    mem[_3672 + 156] = uint8(uint8(_3650) - 4)
                    mem[_3672 + 188] = _3648
                    mem[_3672 + 220] = _3649
                    signer = erecover(_3675, uint8(_3650) - 4 << 248, _3648, _3649) 
                    mem[_3672 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(signer)
                mem[32] = 2
                if not stor2[address(signer)]:
                    revert with 0, 'Invalid owner provided'
                if address(signer) == 1:
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _3649
                s = _3648
                s = uint8(_3650)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 0:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3856 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3856:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3856 % 32:
                    mem[mem[64] + 36] = _3856 + 96
                    mem[_3856 + mem[64] + 100] = mem[ceil32(arg3.length) + _3649 + 642]
                    _7283 = mem[ceil32(arg3.length) + _3649 + 642]
                    t = 0
                    while t < _7283:
                        mem[_3856 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _3649 + t + 674]
                        t = t + 32
                        continue 
                    if not _7283 % 32:
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3856 + 96, mem[mem[64] + 68 len _7283 + _3856 + 64]
                    else:
                        mem[floor32(_7283) + _3856 + mem[64] + 132] = mem[floor32(_7283) + _3856 + mem[64] + -(_7283 % 32) + 164 len _7283 % 32]
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3856 + 96, mem[mem[64] + 68 len floor32(_7283) + _3856 + 96]
                else:
                    mem[floor32(_3856) + mem[64] + 100] = mem[floor32(_3856) + mem[64] + -(_3856 % 32) + 132 len _3856 % 32]
                    mem[mem[64] + 36] = floor32(_3856) + 128
                    mem[floor32(_3856) + mem[64] + 132] = mem[ceil32(arg3.length) + _3649 + 642]
                    _7292 = mem[ceil32(arg3.length) + _3649 + 642]
                    t = 0
                    while t < _7292:
                        mem[floor32(_3856) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _3649 + t + 674]
                        t = t + 32
                        continue 
                    if not _7292 % 32:
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3856) + 128, mem[mem[64] + 68 len _7292 + floor32(_3856) + 96]
                    else:
                        mem[floor32(_7292) + floor32(_3856) + mem[64] + 164] = mem[floor32(_7292) + floor32(_3856) + mem[64] + -(_7292 % 32) + 196 len _7292 % 32]
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3856) + 128, mem[mem[64] + 68 len floor32(_7292) + floor32(_3856) + 128]
            else:
                require threshold
                require 65 * threshold / threshold == 65
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 65 * threshold:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3903 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3903:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3903 % 32:
                    mem[mem[64] + 36] = _3903 + 96
                    mem[_3903 + mem[64] + 100] = mem[ceil32(arg3.length) + _3649 + 642]
                    _7280 = mem[ceil32(arg3.length) + _3649 + 642]
                    t = 0
                    while t < _7280:
                        mem[_3903 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _3649 + t + 674]
                        t = t + 32
                        continue 
                    if not _7280 % 32:
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3903 + 96, mem[mem[64] + 68 len _7280 + _3903 + 64]
                    else:
                        mem[floor32(_7280) + _3903 + mem[64] + 132] = mem[floor32(_7280) + _3903 + mem[64] + -(_7280 % 32) + 164 len _7280 % 32]
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3903 + 96, mem[mem[64] + 68 len floor32(_7280) + _3903 + 96]
                else:
                    mem[floor32(_3903) + mem[64] + 100] = mem[floor32(_3903) + mem[64] + -(_3903 % 32) + 132 len _3903 % 32]
                    mem[mem[64] + 36] = floor32(_3903) + 128
                    mem[floor32(_3903) + mem[64] + 132] = mem[ceil32(arg3.length) + _3649 + 642]
                    _7290 = mem[ceil32(arg3.length) + _3649 + 642]
                    t = 0
                    while t < _7290:
                        mem[floor32(_3903) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _3649 + t + 674]
                        t = t + 32
                        continue 
                    if not _7290 % 32:
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3903) + 128, mem[mem[64] + 68 len _7290 + floor32(_3903) + 96]
                    else:
                        mem[floor32(_7290) + floor32(_3903) + mem[64] + 164] = mem[floor32(_7290) + floor32(_3903) + mem[64] + -(_7290 % 32) + 196 len _7290 % 32]
                        require ext_code.size(address(_3648))
                        staticcall address(_3648).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3903) + 128, mem[mem[64] + 68 len floor32(_7290) + floor32(_3903) + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
            if address(_3648) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_3648)
            mem[32] = 2
            if not stor2[address(_3648)]:
                revert with 0, 'Invalid owner provided'
            if address(_3648) == 1:
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _3649
            s = _3648
            s = uint8(_3650)
            s = _3648
            s = _3648
            continue 
        if gas_remaining < arg5:
            revert with 0, 
                        32,
                        42,
                        0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                        mem[mem[64] + 110 len 22]
        _3654 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_3654] = arg3.length
        mem[_3654 + 32 len arg3.length] = arg3[all]
        mem[_3654 + arg3.length + 32] = 0
        require arg4 <= 1
        if arg5:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not ext_call.success:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4044 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4045 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4045 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4045 + 36 len mem[_4045] - 4]
                                mem[_4044 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4044 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4044 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4044 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4044 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4197 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _4198 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4198 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4198 + 36 len mem[_4198] - 4]
                                mem[_4197 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4197 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4197 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4197 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4197 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4049 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4050 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4050 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4050 + 36 len mem[_4050] - 4]
                                mem[_4049 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4049 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4049 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4049 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4049 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4207 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _4208 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4208 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4208 + 36 len mem[_4208] - 4]
                                mem[_4207 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4207 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4207 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4207 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4207 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                return bool(ext_call.success)
            require arg4 <= 1
            if arg4 != 1:
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4187 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4188 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4188 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4188 + 36 len mem[_4188] - 4]
                                mem[_4187 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4187 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4187 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4187 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4187 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4489 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _4490 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4490 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4490 + 36 len mem[_4490] - 4]
                                mem[_4489 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4489 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4489 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4489 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4489 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4192 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4193 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4193 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4193 + 36 len mem[_4193] - 4]
                                mem[_4192 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4192 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4192 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4192 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4192 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4499 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _4500 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4500 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4500 + 36 len mem[_4500] - 4]
                                mem[_4499 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4499 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4499 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4499 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4499 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                return 0
            delegate arg1 with:
                 gas arg5 wei
                args arg3[all]
            require gas_remaining <= gas_remaining
            if arg7 <= 0:
                if not delegate.return_code:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
            else:
                require arg6 >= 0
                if not arg9:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                call tx.origin with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * block.gasprice / arg6 == block.gasprice
                                call tx.origin with:
                                   value arg6 * block.gasprice wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                    else:
                        if not arg6:
                            _4509 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = 0
                            _4510 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4510 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4510 + 36 len mem[_4510] - 4]
                            mem[_4509 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4509 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4509 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4509 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4509 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            _4930 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = arg6 * arg7
                            _4931 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4931 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4931 + 36 len mem[_4931] - 4]
                            mem[_4930 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4930 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4930 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4930 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4930 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                else:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                call arg9 with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * block.gasprice / arg6 == block.gasprice
                                call arg9 with:
                                   value arg6 * block.gasprice wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                    else:
                        if not arg6:
                            _4514 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = 0
                            _4515 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4515 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4515 + 36 len mem[_4515] - 4]
                            mem[_4514 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4514 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4514 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4514 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4514 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            _4940 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = arg6 * arg7
                            _4941 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4941 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4941 + 36 len mem[_4941] - 4]
                            mem[_4940 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4940 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4940 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4940 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4940 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
        else:
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4105 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4106 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4106 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4106 + 36 len mem[_4106] - 4]
                                    mem[_4105 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4105 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4105 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4105 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4105 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4350 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4351 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4351 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4351 + 36 len mem[_4351] - 4]
                                    mem[_4350 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4350 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4350 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4350 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4350 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4110 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4111 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4111 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4111 + 36 len mem[_4111] - 4]
                                    mem[_4110 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4110 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4110 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4110 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4110 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4360 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4361 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4361 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4361 + 36 len mem[_4361] - 4]
                                    mem[_4360 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4360 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4360 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4360 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4360 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4340 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4341 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4341 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4341 + 36 len mem[_4341] - 4]
                                    mem[_4340 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4340 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4340 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4340 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4340 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4715 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4716 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4716 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4716 + 36 len mem[_4716] - 4]
                                    mem[_4715 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4715 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4715 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4715 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4715 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4345 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4346 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4346 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4346 + 36 len mem[_4346] - 4]
                                    mem[_4345 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4345 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4345 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4345 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4345 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4725 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4726 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4726 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4726 + 36 len mem[_4726] - 4]
                                    mem[_4725 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4725 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4725 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4725 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4725 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas gas_remaining wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4735 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4736 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4736 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4736 + 36 len mem[_4736] - 4]
                                mem[_4735 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4735 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4735 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4735 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4735 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5187 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5188 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5188 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5188 + 36 len mem[_5188] - 4]
                                mem[_5187 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5187 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5187 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5187 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5187 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4740 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4741 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4741 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4741 + 36 len mem[_4741] - 4]
                                mem[_4740 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4740 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4740 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4740 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4740 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5197 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5198 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5198 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5198 + 36 len mem[_5198] - 4]
                                mem[_5197 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5197 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5197 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5197 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5197 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4115 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4116 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4116 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4116 + 36 len mem[_4116] - 4]
                                    mem[_4115 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4115 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4115 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4115 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4115 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4380 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4381 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4381 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4381 + 36 len mem[_4381] - 4]
                                    mem[_4380 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4380 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4380 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4380 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4380 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4120 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4121 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4121 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4121 + 36 len mem[_4121] - 4]
                                    mem[_4120 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4120 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4120 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4120 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4120 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4390 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4391 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4391 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4391 + 36 len mem[_4391] - 4]
                                    mem[_4390 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4390 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4390 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4390 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4390 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4370 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4371 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4371 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4371 + 36 len mem[_4371] - 4]
                                    mem[_4370 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4370 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4370 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4370 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4370 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4759 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4760 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4760 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4760 + 36 len mem[_4760] - 4]
                                    mem[_4759 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4759 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4759 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4759 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4759 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4375 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4376 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4376 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4376 + 36 len mem[_4376] - 4]
                                    mem[_4375 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4375 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4375 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4375 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4375 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4769 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4770 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4770 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4770 + 36 len mem[_4770] - 4]
                                    mem[_4769 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4769 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4769 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4769 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4769 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4779 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4780 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4780 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4780 + 36 len mem[_4780] - 4]
                                mem[_4779 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4779 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4779 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4779 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4779 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5233 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5234 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5234 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5234 + 36 len mem[_5234] - 4]
                                mem[_5233 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5233 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5233 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5233 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5233 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4784 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4785 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4785 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4785 + 36 len mem[_4785] - 4]
                                mem[_4784 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4784 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4784 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4784 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4784 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5243 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5244 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5244 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5244 + 36 len mem[_5244] - 4]
                                mem[_5243 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5243 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5243 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5243 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5243 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
    else:
        require threshold
        require 65 * threshold / threshold == 65
        if arg10.length < 65 * threshold:
            revert with 0, 'Signatures data too short'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < threshold:
            _3645 = mem[ceil32(arg3.length) + (65 * idx) + 642]
            _3646 = mem[ceil32(arg3.length) + (65 * idx) + 674]
            _3647 = mem[ceil32(arg3.length) + (65 * idx) + 675]
            if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]:
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] == 1:
                    if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                        if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]]:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])]:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[ceil32(arg3.length) + (65 * idx) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])]:
                            revert with 0, 'Invalid owner provided'
                    if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[ceil32(arg3.length) + (65 * idx) + 674]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    continue 
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] <= 30:
                    _3657 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3657 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_3657 + 64] = uint8(_3647)
                    mem[_3657 + 96] = _3645
                    mem[_3657 + 128] = _3646
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _3647 << 248, _3645, _3646) 
                    mem[_3657] = signer
                else:
                    _3660 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                    _3661 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _3663 = sha3(mem[_3661 + 32 len mem[_3661]])
                    mem[_3660 + 92] = 0
                    mem[64] = _3660 + 124
                    mem[_3660 + 124] = _3663
                    mem[_3660 + 156] = uint8(uint8(_3647) - 4)
                    mem[_3660 + 188] = _3645
                    mem[_3660 + 220] = _3646
                    signer = erecover(_3663, uint8(_3647) - 4 << 248, _3645, _3646) 
                    mem[_3660 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(signer)
                mem[32] = 2
                if not stor2[address(signer)]:
                    revert with 0, 'Invalid owner provided'
                if address(signer) == 1:
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _3646
                s = _3645
                s = uint8(_3647)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 0:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3843 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3843:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3843 % 32:
                    mem[mem[64] + 36] = _3843 + 96
                    mem[_3843 + mem[64] + 100] = mem[ceil32(arg3.length) + _3646 + 642]
                    _7277 = mem[ceil32(arg3.length) + _3646 + 642]
                    t = 0
                    while t < _7277:
                        mem[_3843 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _3646 + t + 674]
                        t = t + 32
                        continue 
                    if not _7277 % 32:
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3843 + 96, mem[mem[64] + 68 len _7277 + _3843 + 64]
                    else:
                        mem[floor32(_7277) + _3843 + mem[64] + 132] = mem[floor32(_7277) + _3843 + mem[64] + -(_7277 % 32) + 164 len _7277 % 32]
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3843 + 96, mem[mem[64] + 68 len floor32(_7277) + _3843 + 96]
                else:
                    mem[floor32(_3843) + mem[64] + 100] = mem[floor32(_3843) + mem[64] + -(_3843 % 32) + 132 len _3843 % 32]
                    mem[mem[64] + 36] = floor32(_3843) + 128
                    mem[floor32(_3843) + mem[64] + 132] = mem[ceil32(arg3.length) + _3646 + 642]
                    _7288 = mem[ceil32(arg3.length) + _3646 + 642]
                    t = 0
                    while t < _7288:
                        mem[floor32(_3843) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _3646 + t + 674]
                        t = t + 32
                        continue 
                    if not _7288 % 32:
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3843) + 128, mem[mem[64] + 68 len _7288 + floor32(_3843) + 96]
                    else:
                        mem[floor32(_7288) + floor32(_3843) + mem[64] + 164] = mem[floor32(_7288) + floor32(_3843) + mem[64] + -(_7288 % 32) + 196 len _7288 % 32]
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3843) + 128, mem[mem[64] + 68 len floor32(_7288) + floor32(_3843) + 128]
            else:
                require threshold
                require 65 * threshold / threshold == 65
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 65 * threshold:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _3885 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _3885:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _3885 % 32:
                    mem[mem[64] + 36] = _3885 + 96
                    mem[_3885 + mem[64] + 100] = mem[ceil32(arg3.length) + _3646 + 642]
                    _7274 = mem[ceil32(arg3.length) + _3646 + 642]
                    t = 0
                    while t < _7274:
                        mem[_3885 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _3646 + t + 674]
                        t = t + 32
                        continue 
                    if not _7274 % 32:
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3885 + 96, mem[mem[64] + 68 len _7274 + _3885 + 64]
                    else:
                        mem[floor32(_7274) + _3885 + mem[64] + 132] = mem[floor32(_7274) + _3885 + mem[64] + -(_7274 % 32) + 164 len _7274 % 32]
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _3885 + 96, mem[mem[64] + 68 len floor32(_7274) + _3885 + 96]
                else:
                    mem[floor32(_3885) + mem[64] + 100] = mem[floor32(_3885) + mem[64] + -(_3885 % 32) + 132 len _3885 % 32]
                    mem[mem[64] + 36] = floor32(_3885) + 128
                    mem[floor32(_3885) + mem[64] + 132] = mem[ceil32(arg3.length) + _3646 + 642]
                    _7286 = mem[ceil32(arg3.length) + _3646 + 642]
                    t = 0
                    while t < _7286:
                        mem[floor32(_3885) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _3646 + t + 674]
                        t = t + 32
                        continue 
                    if not _7286 % 32:
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3885) + 128, mem[mem[64] + 68 len _7286 + floor32(_3885) + 96]
                    else:
                        mem[floor32(_7286) + floor32(_3885) + mem[64] + 164] = mem[floor32(_7286) + floor32(_3885) + mem[64] + -(_7286 % 32) + 196 len _7286 % 32]
                        require ext_code.size(address(_3645))
                        staticcall address(_3645).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_3885) + 128, mem[mem[64] + 68 len floor32(_7286) + floor32(_3885) + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
            if address(_3645) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_3645)
            mem[32] = 2
            if not stor2[address(_3645)]:
                revert with 0, 'Invalid owner provided'
            if address(_3645) == 1:
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _3646
            s = _3645
            s = uint8(_3647)
            s = _3645
            s = _3645
            continue 
        if gas_remaining < arg5:
            revert with 0, 
                        32,
                        42,
                        0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                        mem[mem[64] + 110 len 22]
        _3651 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_3651] = arg3.length
        mem[_3651 + 32 len arg3.length] = arg3[all]
        mem[_3651 + arg3.length + 32] = 0
        require arg4 <= 1
        if arg5:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not ext_call.success:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4027 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4028 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4028 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4028 + 36 len mem[_4028] - 4]
                                mem[_4027 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4027 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4027 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4027 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4027 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4143 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _4144 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4144 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4144 + 36 len mem[_4144] - 4]
                                mem[_4143 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4143 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4143 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4143 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4143 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4032 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4033 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4033 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4033 + 36 len mem[_4033] - 4]
                                mem[_4032 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4032 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4032 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4032 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4032 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4153 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _4154 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4154 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4154 + 36 len mem[_4154] - 4]
                                mem[_4153 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4153 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4153 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4153 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4153 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                return bool(ext_call.success)
            require arg4 <= 1
            if arg4 != 1:
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4133 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4134 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4134 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4134 + 36 len mem[_4134] - 4]
                                mem[_4133 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4133 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4133 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4133 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4133 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4407 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _4408 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4408 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4408 + 36 len mem[_4408] - 4]
                                mem[_4407 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4407 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4407 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4407 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4407 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4138 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4139 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4139 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4139 + 36 len mem[_4139] - 4]
                                mem[_4138 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4138 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4138 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4138 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4138 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _4417 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _4418 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4418 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4418 + 36 len mem[_4418] - 4]
                                mem[_4417 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4417 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4417 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4417 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4417 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                return 0
            delegate arg1 with:
                 gas arg5 wei
                args arg3[all]
            require gas_remaining <= gas_remaining
            if arg7 <= 0:
                if not delegate.return_code:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
            else:
                require arg6 >= 0
                if not arg9:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                call tx.origin with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * block.gasprice / arg6 == block.gasprice
                                call tx.origin with:
                                   value arg6 * block.gasprice wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                    else:
                        if not arg6:
                            _4427 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = 0
                            _4428 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4428 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4428 + 36 len mem[_4428] - 4]
                            mem[_4427 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4427 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4427 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4427 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4427 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            _4825 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = arg6 * arg7
                            _4826 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4826 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4826 + 36 len mem[_4826] - 4]
                            mem[_4825 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4825 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4825 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4825 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4825 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                else:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                call arg9 with:
                                   value arg6 * arg7 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * block.gasprice / arg6 == block.gasprice
                                call arg9 with:
                                   value arg6 * block.gasprice wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                    else:
                        if not arg6:
                            _4432 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = 0
                            _4433 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4433 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4433 + 36 len mem[_4433] - 4]
                            mem[_4432 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4432 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4432 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4432 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4432 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg6
                            require arg6 * arg7 / arg6 == arg7
                            _4835 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = arg6 * arg7
                            _4836 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4836 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_4836 + 36 len mem[_4836] - 4]
                            mem[_4835 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4835 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4835 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_4835 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_4835 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
        else:
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4069 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4070 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4070 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4070 + 36 len mem[_4070] - 4]
                                    mem[_4069 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4069 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4069 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4069 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4069 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4267 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4268 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4268 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4268 + 36 len mem[_4268] - 4]
                                    mem[_4267 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4267 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4267 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4267 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4267 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4074 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4075 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4075 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4075 + 36 len mem[_4075] - 4]
                                    mem[_4074 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4074 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4074 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4074 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4074 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4277 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4278 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4278 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4278 + 36 len mem[_4278] - 4]
                                    mem[_4277 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4277 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4277 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4277 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4277 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4257 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4258 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4258 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4258 + 36 len mem[_4258] - 4]
                                    mem[_4257 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4257 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4257 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4257 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4257 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4595 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4596 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4596 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4596 + 36 len mem[_4596] - 4]
                                    mem[_4595 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4595 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4595 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4595 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4595 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4262 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4263 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4263 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4263 + 36 len mem[_4263] - 4]
                                    mem[_4262 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4262 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4262 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4262 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4262 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4605 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4606 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4606 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4606 + 36 len mem[_4606] - 4]
                                    mem[_4605 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4605 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4605 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4605 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4605 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas gas_remaining wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4615 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4616 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4616 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4616 + 36 len mem[_4616] - 4]
                                mem[_4615 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4615 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4615 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4615 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4615 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5059 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5060 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5060 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5060 + 36 len mem[_5060] - 4]
                                mem[_5059 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5059 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5059 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5059 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5059 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4620 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4621 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4621 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4621 + 36 len mem[_4621] - 4]
                                mem[_4620 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4620 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4620 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4620 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4620 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5069 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5070 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5070 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5070 + 36 len mem[_5070] - 4]
                                mem[_5069 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5069 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5069 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5069 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5069 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        if not ext_call.success:
                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4079 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4080 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4080 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4080 + 36 len mem[_4080] - 4]
                                    mem[_4079 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4079 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4079 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4079 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4079 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4297 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4298 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4298 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4298 + 36 len mem[_4298] - 4]
                                    mem[_4297 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4297 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4297 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4297 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4297 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4084 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4085 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4085 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4085 + 36 len mem[_4085] - 4]
                                    mem[_4084 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4084 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4084 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4084 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4084 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4307 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4308 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4308 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4308 + 36 len mem[_4308] - 4]
                                    mem[_4307 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4307 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4307 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4307 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4307 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        require arg6 >= 0
                        if not arg9:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4287 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _4288 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4288 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4288 + 36 len mem[_4288] - 4]
                                    mem[_4287 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4287 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4287 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4287 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4287 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4639 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4640 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4640 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4640 + 36 len mem[_4640] - 4]
                                    mem[_4639 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4639 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4639 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4639 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4639 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                        else:
                            if not arg8:
                                if arg7 < block.gasprice:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _4292 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _4293 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4293 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4293 + 36 len mem[_4293] - 4]
                                    mem[_4292 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4292 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4292 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4292 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4292 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _4649 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _4650 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4650 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_4650 + 36 len mem[_4650] - 4]
                                    mem[_4649 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4649 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4649 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_4649 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_4649 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
                    if not delegate.return_code:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4659 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _4660 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4660 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4660 + 36 len mem[_4660] - 4]
                                mem[_4659 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4659 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4659 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4659 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4659 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5105 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _5106 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5106 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5106 + 36 len mem[_5106] - 4]
                                mem[_5105 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5105 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5105 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5105 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5105 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _4664 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _4665 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4665 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_4665 + 36 len mem[_4665] - 4]
                                mem[_4664 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4664 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4664 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_4664 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_4664 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _5115 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _5116 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5116 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5116 + 36 len mem[_5116] - 4]
                                mem[_5115 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5115 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5115 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5115 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5115 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
    return bool(delegate.return_code)
}



}
