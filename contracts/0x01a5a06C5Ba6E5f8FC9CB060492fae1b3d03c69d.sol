contract main {




// =====================  Runtime code  =====================


#
#  - sub_e024dc7f(?)
#
const GENERIC_PARAMS = 32, 93, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[221 len 3] >> 488, 0

const EIP712_DOMAIN_TYPE = 32, 82, 0x6c454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374, mem[210 len 14] >> 400, 0


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 nonce;
mapping of uint8 stor126458473191486379248591357320499407634594732925551796506268252473899588235416179996591866747122596892736764574101996148513832246074594754870583968638002993711780030020464573070810965722963036431220;

function typeHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function domains(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_e2b62f2d(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[96 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 96] = 0
    mem[128] = cd[36]
    mem[160] = address(('cd', 4).length)
    mem[192] = address(('cd', 4)[0])
    mem[224] = ('cd', 4)[1]
    mem[256] = ('cd', 4)[2]
    mem[288] = ('cd', 4)[3]
    mem[320] = sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]])
    mem[352] = ('cd', 4)[5]
    mem[384 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    return Array(len=('cd', 68).length + 256, data=mem[128 len ceil32(('cd', 68).length) + 8])
}

function registerDomainSeparator(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    stor1[('name', 'stor6C45', 126458473191486379248591357320499407634594732925551796506268252473899588235416179996591866747122596892736764574101996148513832246074594754870583968638002993711780030020464573070810965722963036431220)][sha3(arg1[all])][sha3(arg2[all])][chainid][this.address] = 1
    emit DomainRegistered(bytes32 arg1, bytes arg2):
                          32,
                          160,
                          sha3(0x6c454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374),
                          sha3(arg1[all]),
                          sha3(arg2[all]),
                          chainid,
                          this.address,
                          sha3(sha3(0x6c454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(arg1[all]), sha3(arg2[all]), chainid, this.address),
}

function sub_ad9f99c7(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    require ('cd', 4).length == address(('cd', 4).length)
    if nonce[address(('cd', 4).length)] != ('cd', 4)[3]:
        revert with 0, 'FWD: nonce mismatch'
    if not stor1[cd[36]]:
        revert with 0, 'FWD: unregistered domain sep.'
    if not stor0[cd[68]]:
        revert with 0, 'FWD: unregistered typehash'
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[96 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 96] = 0
    require ('cd', 4).length == address(('cd', 4).length)
    mem[('cd', 100).length + 514 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 100).length + ('cd', 132).length + 514] = 0
    if 65 == ('cd', 132).length:
        if mem[('cd', 100).length + 546] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if ('cd', 132).length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[('cd', 100).length + 546]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[('cd', 100).length + 546]) >> 255) + 27) != 27:
        if uint8((bool(mem[('cd', 100).length + 546]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(0, cd[36], sha3(cd[68], address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], ('cd', 4)[2], ('cd', 4)[3], sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]), ('cd', 4)[5], call.data[cd[100] + 36 len ('cd', 100).length])), (bool(mem[('cd', 100).length + 546]) >> 255) + 27 << 248, mem[('cd', 100).length + 514], uint255(mem[('cd', 100).length + 546])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != address(('cd', 4).length):
        revert with 0, 'FWD: signature mismatch'
}

function registerRequestType(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if Mask(8, 248, cd[(arg1 + idx + 36)]) == 0x2800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'FWD: invalid typename'
        if Mask(8, 248, cd[(arg1 + idx + 36)]) == 0x2900000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'FWD: invalid typename'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor0[arg1[all]][0][0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[221 len 3] >> 488][0][arg2[all]] = 1
    mem[arg2.length + arg1.length + 415 len floor32(arg2.length + arg1.length + 126)] = arg1[all], 0, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[221 len 3] >> 488, 0, arg2[all], Mask(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95, -(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95) + 256, 32) >> -(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95) + 256
    if floor32(arg2.length + arg1.length + 126) <= arg2.length + arg1.length + 95:
        emit RequestTypeRegistered(bytes32 arg1, string arg2):
                                   32,
                                   arg2.length + arg1.length + 95,
                                   arg1[all],
                                   0,
                                   0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[221 len 3] >> 488,
                                   0,
                                   arg2[all],
                                   Mask(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95, -(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95) + 256, 32) >> -(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95) + 256,
                                   sha3(arg1[all], 0, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[221 len 3] >> 488, 0, arg2[all]),
    else:
        mem[(2 * arg2.length) + (2 * arg1.length) + 510] = 0
        emit RequestTypeRegistered(Array(len=arg2.length + arg1.length + 95, data=Mask(8 * arg2.length + arg1.length + 95, -(8 * arg2.length + arg1.length + 95) + 256, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[221 len 3] >> 488, 0, arg2[all], Mask(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95, -(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95) + 256, 32) >> -(8 * floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95) + 256) << (8 * arg2.length + arg1.length + 95) - 256, mem[(2 * arg2.length) + (2 * arg1.length) + 510 len floor32(arg2.length + arg1.length + 126) + -arg2.length + -arg1.length - 95]), sha3(arg1[all], 0, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[221 len 3] >> 488, 0, arg2[all]));
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0xc3f28abd(?????) > uint32(call.func_hash) >> 224:
        if GENERIC_PARAMS() == uint32(call.func_hash) >> 224:
            require not msg.value
            return 32, 93, 
                   0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[253 len 3] >> 488,
                   0
        if unknown_0x21fe98df(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            return bool(stor0[cd[4]])
        if unknown_0x2d0335ab(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            return nonce[address(cd[4])]
        if unknown_0x9c7b4592(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + ('cd', 4).length + 36 <= calldata.size
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + ('cd', 36).length + 36 <= calldata.size
            stor1[('name', 'stor6C45', 126458473191486379248591357320499407634594732925551796506268252473899588235416179996591866747122596892736764574101996148513832246074594754870583968638002993711780030020464573070810965722963036431220)][sha3(call.data[cd[4] + 36 len ('cd', 4).length])][sha3(call.data[cd[36] + 36 len ('cd', 36).length])][chainid][this.address] = 1
            emit DomainRegistered(bytes32 arg1, bytes arg2):
                                  32,
                                  160,
                                  sha3(0x6c454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374),
                                  sha3(call.data[cd[4] + 36 len ('cd', 4).length]),
                                  sha3(call.data[cd[36] + 36 len ('cd', 36).length]),
                                  chainid,
                                  this.address,
                                  sha3(sha3(0x6c454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(call.data[cd[4] + 36 len ('cd', 4).length]), sha3(call.data[cd[36] + 36 len ('cd', 36).length]), chainid, this.address),
        else:
            require unknown_0xad9f99c7(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 160
            require cd[4] <= test266151307()
            require calldata.size + -cd[4] - 4 >= 224
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            require ('cd', 100).length <= test266151307()
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            require cd[132] <= test266151307()
            require cd[132] + 35 < calldata.size
            require ('cd', 132).length <= test266151307()
            require cd[132] + ('cd', 132).length + 36 <= calldata.size
            require ('cd', 4).length == address(('cd', 4).length)
            if nonce[address(('cd', 4).length)] != ('cd', 4)[3]:
                revert with 0, 'FWD: nonce mismatch'
            if not stor1[cd[36]]:
                revert with 0, 'FWD: unregistered domain sep.'
            if not stor0[cd[68]]:
                revert with 0, 'FWD: unregistered typehash'
            require ('cd', 4).length == address(('cd', 4).length)
            require ('cd', 4)[0] == address(('cd', 4)[0])
            require ('cd', 4)[4] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[4] + 4)]
            mem[128 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
            mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 128] = 0
            require ('cd', 4).length == address(('cd', 4).length)
            mem[('cd', 100).length + 546 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
            mem[('cd', 100).length + ('cd', 132).length + 546] = 0
            if 65 == ('cd', 132).length:
                if mem[('cd', 100).length + 578] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if ('cd', 132).length != 64:
                revert with 0, 'ECDSA: invalid signature length'
            if uint255(mem[('cd', 100).length + 578]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[('cd', 100).length + 578]) >> 255) + 27) != 27:
                if uint8((bool(mem[('cd', 100).length + 578]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
            signer = erecover(sha3(0, cd[36], sha3(cd[68], address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], ('cd', 4)[2], ('cd', 4)[3], sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]), ('cd', 4)[5], call.data[cd[100] + 36 len ('cd', 100).length])), (bool(mem[('cd', 100).length + 578]) >> 255) + 27 << 248, mem[('cd', 100).length + 546], uint255(mem[('cd', 100).length + 578])) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != address(('cd', 4).length):
                revert with 0, 'FWD: signature mismatch'
    if unknown_0xc3f28abd(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return 32, 82, 
               0x6c454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374, mem[242 len 14] >> 400,
               0
    if unknown_0xc722f177(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        return bool(stor1[cd[4]])
    if unknown_0xd9210be5(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        require ('cd', 4).length <= test266151307()
        require cd[4] + ('cd', 4).length + 36 <= calldata.size
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        require ('cd', 36).length <= test266151307()
        require cd[36] + ('cd', 36).length + 36 <= calldata.size
        idx = 0
        while idx < ('cd', 4).length:
            if Mask(8, 248, cd[(cd[4] + idx + 36)]) == 0x2800000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'FWD: invalid typename'
            if Mask(8, 248, cd[(cd[4] + idx + 36)]) == 0x2900000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'FWD: invalid typename'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor0[call.data[cd[4] + 36 len ('cd', 4).length]][0][0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[253 len 3] >> 488][0][call.data[cd[36] + 36 len ('cd', 36).length]] = 1
        mem[('cd', 36).length + ('cd', 4).length + 447 len floor32(('cd', 36).length + ('cd', 4).length + 126)] = call.data[cd[4] + 36 len ('cd', 4).length], 0, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[253 len 3] >> 488, 0, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95, -(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95) + 256, 32) >> -(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95) + 256
        if floor32(('cd', 36).length + ('cd', 4).length + 126) <= ('cd', 36).length + ('cd', 4).length + 95:
            emit RequestTypeRegistered(bytes32 arg1, string arg2):
                                       32,
                                       ('cd', 36).length + ('cd', 4).length + 95,
                                       call.data[cd[4] + 36 len ('cd', 4).length],
                                       0,
                                       0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[253 len 3] >> 488,
                                       0,
                                       call.data[cd[36] + 36 len ('cd', 36).length],
                                       Mask(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95, -(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95) + 256, 32) >> -(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95) + 256,
                                       sha3(call.data[cd[4] + 36 len ('cd', 4).length], 0, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[253 len 3] >> 488, 0, call.data[cd[36] + 36 len ('cd', 36).length]),
        else:
            mem[(2 * ('cd', 36).length) + (2 * ('cd', 4).length) + 542] = 0
            emit RequestTypeRegistered(Array(len=('cd', 36).length + ('cd', 4).length + 95, data=Mask(8 * ('cd', 36).length + ('cd', 4).length + 95, -(8 * ('cd', 36).length + ('cd', 4).length + 95) + 256, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[253 len 3] >> 488, 0, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95, -(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95) + 256, 32) >> -(8 * floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95) + 256) << (8 * ('cd', 36).length + ('cd', 4).length + 95) - 256, mem[(2 * ('cd', 36).length) + (2 * ('cd', 4).length) + 542 len floor32(('cd', 36).length + ('cd', 4).length + 126) + -('cd', 36).length + -('cd', 4).length - 95]), sha3(call.data[cd[4] + 36 len ('cd', 4).length], 0, 0xfe616464726573732066726f6d2c6164647265737320746f2c75696e743235362076616c75652c75696e74323536206761732c75696e74323536206e6f6e63652c627974657320646174612c75696e743235362076616c6964556e7469, mem[253 len 3] >> 488, 0, call.data[cd[36] + 36 len ('cd', 36).length]));
    if uint32(call.func_hash) >> 224 != unknown_0xe024dc7f(?????):
        require unknown_0xe2b62f2d(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 96
        require cd[4] <= test266151307()
        require calldata.size + -cd[4] - 4 >= 224
        require cd[68] <= test266151307()
        require cd[68] + 35 < calldata.size
        require ('cd', 68).length <= test266151307()
        require cd[68] + ('cd', 68).length + 36 <= calldata.size
        require ('cd', 4).length == address(('cd', 4).length)
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require ('cd', 4)[4] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[4] + 4)]
        mem[128 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
        mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 128] = 0
        mem[160] = cd[36]
        mem[192] = address(('cd', 4).length)
        mem[224] = address(('cd', 4)[0])
        mem[256] = ('cd', 4)[1]
        mem[288] = ('cd', 4)[2]
        mem[320] = ('cd', 4)[3]
        mem[352] = sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]])
        mem[384] = ('cd', 4)[5]
        mem[416 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
        return Array(len=('cd', 68).length + 256, data=mem[160 len ceil32(('cd', 68).length) + 8])
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    if not stor1[cd[36]]:
        revert with 0, 'FWD: unregistered domain sep.'
    if not stor0[cd[68]]:
        revert with 0, 'FWD: unregistered typehash'
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[128 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 128] = 0
    mem[160] = cd[68]
    mem[192] = address(('cd', 4).length)
    mem[224] = address(('cd', 4)[0])
    mem[256] = ('cd', 4)[1]
    mem[288] = ('cd', 4)[2]
    mem[320] = ('cd', 4)[3]
    mem[352] = sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]])
    mem[384] = ('cd', 4)[5]
    mem[416 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[128] = ('cd', 100).length + 256
    mem[('cd', 100).length + 448] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[('cd', 100).length + 450] = cd[36]
    mem[('cd', 100).length + 482] = sha3(cd[68], address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], ('cd', 4)[2], ('cd', 4)[3], sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]), ('cd', 4)[5], call.data[cd[100] + 36 len ('cd', 100).length])
    mem[('cd', 100).length + 416] = 66
    require ('cd', 4).length == address(('cd', 4).length)
    mem[('cd', 100).length + 514] = ('cd', 132).length
    mem[('cd', 100).length + 546 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 100).length + ('cd', 132).length + 546] = 0
    if 65 == ('cd', 132).length:
        if mem[('cd', 100).length + 578] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if ('cd', 132).length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[('cd', 100).length + 578]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[('cd', 100).length + 578]) >> 255) + 27) != 27:
        if uint8((bool(mem[('cd', 100).length + 578]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    mem[('cd', 100).length + ceil32(('cd', 132).length) + 610] = uint8((bool(mem[('cd', 100).length + 578]) >> 255) + 27)
    mem[('cd', 100).length + ceil32(('cd', 132).length) + 642] = mem[('cd', 100).length + 546]
    mem[('cd', 100).length + ceil32(('cd', 132).length) + 674] = uint255(mem[('cd', 100).length + 578])
    signer = erecover(sha3(0, cd[36], sha3(cd[68], address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], ('cd', 4)[2], ('cd', 4)[3], sha3(call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]), ('cd', 4)[5], call.data[cd[100] + 36 len ('cd', 100).length])), (bool(mem[('cd', 100).length + 578]) >> 255) + 27 << 248, mem[('cd', 100).length + 546], uint255(mem[('cd', 100).length + 578])) 
    mem[('cd', 100).length + ceil32(('cd', 132).length) + 546] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != address(('cd', 4).length):
        revert with 0, 'FWD: signature mismatch'
    require ('cd', 4).length == address(('cd', 4).length)
    if nonce[address(('cd', 4).length)] == -1:
        revert with 0, 17
    nonce[address(('cd', 4).length)]++
    if nonce[address(('cd', 4).length)] != ('cd', 4)[3]:
        revert with 0, 'FWD: nonce mismatch'
    if ('cd', 4)[5]:
        if ('cd', 4)[5] <= block.number:
            revert with 0, 'FWD: request expired'
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[4] + 4)]
    require ('cd', 4).length == address(('cd', 4).length)
    mem[('cd', 100).length + ceil32(('cd', 132).length) + 610 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 610] = address(('cd', 4).length)
    mem[('cd', 100).length + ceil32(('cd', 132).length) + 578] = cd[(cd[4] + ('cd', 4)[4] + 4)] + 20
    if not ('cd', 4)[1]:
        if ('cd', 4)[2] > -1:
            revert with 0, 17
        if gas_remaining > 0x410410410410410410410410410410410410410410410410410410410410410:
            revert with 0, 17
        if 63 * gas_remaining / 64 < ('cd', 4)[2]:
            revert with 0, 'FWD: insufficient gas'
    else:
        if ('cd', 4)[2] > -40001:
            revert with 0, 17
        if gas_remaining > 0x410410410410410410410410410410410410410410410410410410410410410:
            revert with 0, 17
        if 63 * gas_remaining / 64 < ('cd', 4)[2] + 40000:
            revert with 0, 'FWD: insufficient gas'
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 630 len floor32(cd[(cd[4] + ('cd', 4)[4] + 4)] + 51)] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]], address(('cd', 4).length), mem[('cd', 100).length + ceil32(('cd', 132).length) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 642 len floor32(cd[(cd[4] + ('cd', 4)[4] + 4)] + 51) + -cd[(cd[4] + ('cd', 4)[4] + 4)] - 32]
    if floor32(cd[(cd[4] + ('cd', 4)[4] + 4)] + 51) > cd[(cd[4] + ('cd', 4)[4] + 4)] + 20:
        mem[(2 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + ('cd', 100).length + ceil32(('cd', 132).length) + 650] = 0
    call address(('cd', 4)[0]).mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 630 len 4] with:
       value ('cd', 4)[1] wei
         gas ('cd', 4)[2] wei
        args mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 634 len cd[(cd[4] + ('cd', 4)[4] + 4)] + 16]
    if ('cd', 4)[1]:
        if eth.balance(this.address) > 0:
            require ('cd', 4).length == address(('cd', 4).length)
            call address(('cd', 4).length) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 630] = bool(ext_call.success)
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 662] = 64
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 694] = mem[96]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 726 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + mem[96] + 726] = 0
    return bool(ext_call.success), 
           Array(len=mem[96], data=mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ('cd', 100).length + ceil32(('cd', 132).length) + 726 len ceil32(mem[96])])
}



}
