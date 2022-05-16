contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct signers;
uint256 numConfirmationsRequired;

function signers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < signers.length
    return signers[arg1].field_0
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function numConfirmationsRequired() payable {
    return numConfirmationsRequired
}

function _fallback() payable {
    revert
}

function sub_328a39df(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    return sha3(this.address, Mask(32, 224, sha3(arg1[all])) >> 224, arg2)
}

function getSigners() payable {
    mem[64] = (32 * signers.length) + 128
    mem[96] = signers.length
    if not signers.length:
        mem[(32 * signers.length) + 128] = 32
        mem[(32 * signers.length) + 160] = signers.length
        idx = 0
        s = 128
        t = (32 * signers.length) + 192
        while idx < signers.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * signers.length) + 128
           len (96 * signers.length) + 64
    mem[128] = address(signers.field_0)
    idx = 128
    s = 0
    while (32 * signers.length) + 96 > idx:
        mem[idx + 32] = signers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * signers.length) + 128] = 32
    mem[(32 * signers.length) + 160] = signers.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < signers.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * signers.length) + -mem[64] + 192
}

function sub_a44095f7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _52 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_52] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_52 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_52 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _52
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if mem[96] != numConfirmationsRequired:
        revert with 0, 'invalid number of required confirmations'
    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
    mem[mem[64] + 60] = cd[36]
    _57 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _59 = sha3(mem[_57 + 32 len mem[_57]])
    _102 = mem[96]
    idx = 0
    while idx < _102:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128]] == 65:
            if mem[mem[(32 * idx) + 128] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 128]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _112 = mem[mem[(32 * idx) + 128] + 64]
        _113 = mem[mem[(32 * idx) + 128] + 32]
        if uint255(mem[mem[(32 * idx) + 128] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) == 27:
            _118 = mem[64]
            mem[64] = mem[64] + 32
            mem[_118 + 32] = _59
            mem[_118 + 64] = uint8((bool(_112) >> 255) + 27)
            mem[_118 + 96] = _113
            mem[_118 + 128] = uint255(_112)
            signer = erecover(_59, (bool(_112) >> 255) + 27 << 248, _113, uint255(_112)) 
            mem[_118] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _120 = mem[64]
            mem[64] = mem[64] + 32
            mem[_120 + 32] = _59
            mem[_120 + 64] = uint8((bool(_112) >> 255) + 27)
            mem[_120 + 96] = _113
            mem[_120 + 128] = uint255(_112)
            signer = erecover(_59, (bool(_112) >> 255) + 27 << 248, _113, uint255(_112)) 
            mem[_120] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        mem[0] = address(signer)
        mem[32] = 0
        if not stor0[address(signer)]:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        _102 = mem[96]
        idx = idx + 1
        continue 
    return 1
}

function sub_92acd8f8(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _69 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_69] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_69 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_69 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _69
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'singer not valid!'
    _71 = mem[64]
    mem[64] = mem[64] + 64
    mem[_71] = 31
    mem[_71 + 32] = 'addSigner(bytes[],address,uint)'
    _75 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = Mask(32, 224, sha3('addSigner(bytes[],address,uint)'))
    mem[mem[64] + 56] = cd[68]
    _77 = mem[64]
    mem[mem[64]] = 56
    mem[64] = mem[64] + 88
    _79 = sha3(mem[_77 + 32 len mem[_77]])
    if mem[96] != numConfirmationsRequired:
        revert with 0, 'invalid number of required confirmations'
    mem[_75 + 120] = '\x19Ethereum Signed Message:\n32'
    mem[_75 + 148] = _79
    mem[_75 + 88] = 60
    mem[64] = _75 + 180
    _136 = mem[96]
    idx = 0
    while idx < _136:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128]] == 65:
            if mem[mem[(32 * idx) + 128] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 128]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _145 = mem[mem[(32 * idx) + 128] + 64]
        _146 = mem[mem[(32 * idx) + 128] + 32]
        if uint255(mem[mem[(32 * idx) + 128] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) == 27:
            _156 = mem[64]
            mem[64] = mem[64] + 32
            mem[_156 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _79)
            mem[_156 + 64] = uint8((bool(_145) >> 255) + 27)
            mem[_156 + 96] = _146
            mem[_156 + 128] = uint255(_145)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _79), (bool(_145) >> 255) + 27 << 248, _146, uint255(_145)) 
            mem[_156] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _158 = mem[64]
            mem[64] = mem[64] + 32
            mem[_158 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _79)
            mem[_158 + 64] = uint8((bool(_145) >> 255) + 27)
            mem[_158 + 96] = _146
            mem[_158 + 128] = uint255(_145)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _79), (bool(_145) >> 255) + 27 << 248, _146, uint255(_145)) 
            mem[_158] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        mem[0] = address(signer)
        mem[32] = 0
        if not stor0[address(signer)]:
            revert with 0, 'invalid signature'
        if idx == -1:
            revert with 'NH{q', 17
        _136 = mem[96]
        idx = idx + 1
        continue 
    if not address(cd[36]):
        revert with 0, 'invalid signer'
    if stor0[address(cd[36])]:
        revert with 0, 'signer not unique'
    stor0[address(cd[36])] = 1
    signers.length++
    signers[signers.length].field_0 = address(cd[36])
    emit 0x637c77a2: address(cd[36])
}

function sub_aace8497(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _68 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_68] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_68 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_68 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _68
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'singer not valid!'
    _70 = mem[64]
    mem[64] = mem[64] + 96
    mem[_70] = 34
    mem[_70 + 32 len 34] = 0xfe72656d6f76655369676e65722862797465735b5d2c616464726573732c75696e74
    _74 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = Mask(32, 224, sha3(0xfe72656d6f76655369676e65722862797465735b5d2c616464726573732c75696e74))
    mem[mem[64] + 56] = cd[68]
    _76 = mem[64]
    mem[mem[64]] = 56
    mem[64] = mem[64] + 88
    _78 = sha3(mem[_76 + 32 len mem[_76]])
    if mem[96] != numConfirmationsRequired:
        revert with 0, 'invalid number of required confirmations'
    mem[_74 + 120] = '\x19Ethereum Signed Message:\n32'
    mem[_74 + 148] = _78
    mem[_74 + 88] = 60
    mem[64] = _74 + 180
    _134 = mem[96]
    idx = 0
    while idx < _134:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128]] == 65:
            if mem[mem[(32 * idx) + 128] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 128]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _143 = mem[mem[(32 * idx) + 128] + 64]
        _144 = mem[mem[(32 * idx) + 128] + 32]
        if uint255(mem[mem[(32 * idx) + 128] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) == 27:
            _153 = mem[64]
            mem[64] = mem[64] + 32
            mem[_153 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78)
            mem[_153 + 64] = uint8((bool(_143) >> 255) + 27)
            mem[_153 + 96] = _144
            mem[_153 + 128] = uint255(_143)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78), (bool(_143) >> 255) + 27 << 248, _144, uint255(_143)) 
            mem[_153] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _155 = mem[64]
            mem[64] = mem[64] + 32
            mem[_155 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78)
            mem[_155 + 64] = uint8((bool(_143) >> 255) + 27)
            mem[_155 + 96] = _144
            mem[_155 + 128] = uint255(_143)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78), (bool(_143) >> 255) + 27 << 248, _144, uint255(_143)) 
            mem[_155] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        mem[0] = address(signer)
        mem[32] = 0
        if not stor0[address(signer)]:
            revert with 0, 'invalid signature'
        if idx == -1:
            revert with 'NH{q', 17
        _134 = mem[96]
        idx = idx + 1
        continue 
    if not address(cd[36]):
        revert with 0, 'invalid signer'
    if not stor0[address(cd[36])]:
        revert with 0, 'signer not exist'
    stor0[address(cd[36])] = 0
    emit 0x1803740e: address(cd[36])
}



}
