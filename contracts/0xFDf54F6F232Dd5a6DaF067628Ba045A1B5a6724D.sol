contract main {




// =====================  Runtime code  =====================


const sub_3c0e39bf(?) = 0x5345545f5448524553484f4c4400000000000000000000000000000000000000

const sub_51f61efa(?) = 0x5345545f56414c494441544f5200000000000000000000000000000000000000

const sub_5938c87d(?) = ('SWAPPER_CLAIM' << 152)

const sub_71aca57e(?) = 'VALIDATE_XY_XCHAIN_IDENTIFIER'

const sub_74892a72(?) = 'LOCK_CLOSE_SWAP_AND_REFUND'

const sub_f7ca8023(?) = ('BATCH_CLAIM' << 168)

const sub_faf55b5c(?) = 'VALIDATE_SWAP_IDENTIFIER'


uint32 chainId;
mapping of uint8 stor1;
uint256 stor2;
uint256 threshold;
uint256 nonce;

function threshold() payable {
    return threshold
}

function chainId() payable {
    return chainId
}

function nonce() payable {
    return nonce
}

function validators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_5a0f8830(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 97 < 96 or floor32(('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _48 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_48] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_48 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_48 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _48
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] < threshold:
        revert with 0, 'ERR_NOT_ENOUGH_SIGNATURES'
    idx = 0
    s = 0
    while idx < threshold:
        if idx >= mem[96]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 128]]:
            if mem[mem[(32 * idx) + 128] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 128]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _99 = mem[mem[(32 * idx) + 128] + 32]
        _100 = mem[mem[(32 * idx) + 128] + 64]
        if uint255(mem[mem[(32 * idx) + 128] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27):
            _101 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_101 + 32] = cd[4]
            mem[_101 + 64] = uint8((bool(_100) >> 255) + 27)
            mem[_101 + 96] = _99
            mem[_101 + 128] = uint255(_100)
            signer = erecover(cd[4], (bool(_100) >> 255) + 27 << 248, _99, uint255(_100)) 
            mem[_101] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _105 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_105 + 32] = cd[4]
            mem[_105 + 64] = uint8((bool(_100) >> 255) + 27)
            mem[_105 + 96] = _99
            mem[_105 + 128] = uint255(_100)
            signer = erecover(cd[4], (bool(_100) >> 255) + 27 << 248, _99, uint255(_100)) 
            mem[_105] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        mem[0] = address(signer)
        mem[32] = 1
        if not stor1[address(signer)]:
            revert with 0, 'ERR_NOT_VALIDATOR'
        if address(signer) <= address(s):
            revert with 0, 'ERR_WRONG_SIGNER_ORDER'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = signer
        continue 
}

function sub_935d91dd(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 68).length) + 97 < 96 or floor32(('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _65 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_65] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_65 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_65 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _65
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] < threshold:
        revert with 0, 'ERR_NOT_ENOUGH_SIGNATURES'
    if cd[36] != nonce:
        revert with 0, 'ERR_INVALID_NONCE'
    if cd[4] <= 0:
        revert with 0, 'ERR_INVALID_THRESHOLD'
    if cd[4] > stor2:
        revert with 0, 'ERR_INVALID_THRESHOLD'
    _71 = mem[64]
    mem[mem[64] + 32] = 0x5345545f5448524553484f4c4400000000000000000000000000000000000000
    mem[mem[64] + 64] = address(this.address)
    mem[mem[64] + 84] = Mask(32, 224, chainId)
    mem[mem[64] + 88] = cd[4]
    mem[mem[64] + 120] = cd[36]
    _72 = mem[64]
    mem[mem[64]] = 120
    mem[64] = mem[64] + 152
    _74 = sha3(mem[_72 + 32 len mem[_72]])
    mem[_71 + 184] = '\x19Ethereum Signed Message:\n32'
    mem[_71 + 212] = _74
    mem[_71 + 152] = 60
    mem[64] = _71 + 244
    if mem[96] < threshold:
        revert with 0, 'ERR_NOT_ENOUGH_SIGNATURES'
    idx = 0
    s = 0
    while idx < threshold:
        if idx >= mem[96]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 128]]:
            if mem[mem[(32 * idx) + 128] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 128]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _133 = mem[mem[(32 * idx) + 128] + 32]
        _134 = mem[mem[(32 * idx) + 128] + 64]
        if uint255(mem[mem[(32 * idx) + 128] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27):
            _135 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_135 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _74)
            mem[_135 + 64] = uint8((bool(_134) >> 255) + 27)
            mem[_135 + 96] = _133
            mem[_135 + 128] = uint255(_134)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _74), (bool(_134) >> 255) + 27 << 248, _133, uint255(_134)) 
            mem[_135] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _139 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_139 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _74)
            mem[_139 + 64] = uint8((bool(_134) >> 255) + 27)
            mem[_139 + 96] = _133
            mem[_139 + 128] = uint255(_134)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _74), (bool(_134) >> 255) + 27 << 248, _133, uint255(_134)) 
            mem[_139] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        mem[0] = address(signer)
        mem[32] = 1
        if not stor1[address(signer)]:
            revert with 0, 'ERR_NOT_VALIDATOR'
        if address(signer) <= address(s):
            revert with 0, 'ERR_WRONG_SIGNER_ORDER'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = signer
        continue 
    threshold = cd[4]
    if nonce == -1:
        revert with 0, 17
    nonce++
}

function sub_da8bd3fe(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == bool(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 100).length) + 97 < 96 or floor32(('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 100).length) + 97
    mem[96] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[100] + cd[s] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _68 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1
        mem[_68] = cd[(cd[100] + cd[s] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 68 <= calldata.size
        mem[_68 + 32 len cd[(cd[100] + cd[s] + 36)]] = call.data[cd[100] + cd[s] + 68 len cd[(cd[100] + cd[s] + 36)]]
        mem[_68 + cd[(cd[100] + cd[s] + 36)] + 32] = 0
        mem[t] = _68
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not address(cd[4]):
        revert with 0, 'ERR_INVALID_VALIDATOR'
    if mem[96] < threshold:
        revert with 0, 'ERR_NOT_ENOUGH_SIGNATURES'
    if cd[68] != nonce:
        revert with 0, 'ERR_INVALID_NONCE'
    mem[0] = address(cd[4])
    mem[32] = 1
    if bool(cd[36]) == bool(stor1[address(cd[4])]):
        revert with 0, 'ERR_OPERATION_TO_VALIDATOR'
    _75 = mem[64]
    mem[mem[64] + 32] = 0x5345545f56414c494441544f5200000000000000000000000000000000000000
    mem[mem[64] + 64] = address(this.address)
    mem[mem[64] + 84] = Mask(32, 224, chainId)
    mem[mem[64] + 88] = address(cd[4])
    mem[mem[64] + 108] = bool(cd[36]) << 248
    mem[mem[64] + 109] = cd[68]
    _76 = mem[64]
    mem[mem[64]] = 109
    mem[64] = mem[64] + 141
    _78 = sha3(mem[_76 + 32 len mem[_76]])
    mem[_75 + 173] = '\x19Ethereum Signed Message:\n32'
    mem[_75 + 201] = _78
    mem[_75 + 141] = 60
    mem[64] = _75 + 233
    if mem[96] < threshold:
        revert with 0, 'ERR_NOT_ENOUGH_SIGNATURES'
    idx = 0
    s = 0
    while idx < threshold:
        if idx >= mem[96]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 128]]:
            if mem[mem[(32 * idx) + 128] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 128]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _144 = mem[mem[(32 * idx) + 128] + 32]
        _145 = mem[mem[(32 * idx) + 128] + 64]
        if uint255(mem[mem[(32 * idx) + 128] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27):
            _146 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_146 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78)
            mem[_146 + 64] = uint8((bool(_145) >> 255) + 27)
            mem[_146 + 96] = _144
            mem[_146 + 128] = uint255(_145)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78), (bool(_145) >> 255) + 27 << 248, _144, uint255(_145)) 
            mem[_146] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 128] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _150 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_150 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78)
            mem[_150 + 64] = uint8((bool(_145) >> 255) + 27)
            mem[_150 + 96] = _144
            mem[_150 + 128] = uint255(_145)
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _78), (bool(_145) >> 255) + 27 << 248, _144, uint255(_145)) 
            mem[_150] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        mem[0] = address(signer)
        mem[32] = 1
        if not stor1[address(signer)]:
            revert with 0, 'ERR_NOT_VALIDATOR'
        if address(signer) <= address(s):
            revert with 0, 'ERR_WRONG_SIGNER_ORDER'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = signer
        continue 
    if not stor1[address(cd[4])]:
        if stor2 == -1:
            revert with 0, 17
        stor2++
        stor1[address(cd[4])] = 1
    else:
        if not stor2:
            revert with 0, 17
        stor2--
        stor1[address(cd[4])] = 0
        if stor2 < threshold:
            if not threshold:
                revert with 0, 17
            threshold--
    if nonce == -1:
        revert with 0, 17
    nonce++
}



}
