contract main {




// =====================  Runtime code  =====================


mapping of address stor99;
mapping of address stor11870128529466017566325902382784395929439801136936570973214865523474944093254;
mapping of struct stor11870128529466017566325902382784395929439801136936570973214865523474944093255;
uint256 stor1C03; offset 1
uint256 stor1C03;
mapping of uint256 stor12671690405074111813122790170638022278328730202751128196280067484110340715771;
uint256 storFE1C;

function _fallback() payable {
    revert
}

function sub_ce37fe74(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[128] = 128
    mem[256] = 25
    mem[288] = 'computeTokenActionMessage'
    mem[160] = 0
    mem[192] = address(cd[4])
    mem[224] = storFE1C
    mem[96] = 192
    mem[352] = '\x19Ethereum Signed Message:\n32'
    mem[380] = sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage')
    mem[320] = 60
    if ('cd', 36).length > uint256(stor1C03.field_0):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 36).length <= uint255(stor1C03.field_1):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[412] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 444
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_125] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_125 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_125 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                if mem[_125 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _137 = mem[_125 + 32]
            _138 = mem[_125 + 64]
            if uint255(mem[_125 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_125 + 64]) >> 255) + 27):
                _141 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_141 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage'))
                mem[_141 + 64] = uint8((bool(_138) >> 255) + 27)
                mem[_141 + 96] = _137
                mem[_141 + 128] = uint255(_138)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage')), (bool(_138) >> 255) + 27 << 248, _137, uint255(_138)) 
                mem[_141] = signer
            else:
                if uint8((bool(mem[_125 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _147 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_147 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage'))
                mem[_147 + 64] = uint8((bool(_138) >> 255) + 27)
                mem[_147 + 96] = _137
                mem[_147 + 128] = uint255(_138)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage')), (bool(_138) >> 255) + 27 << 248, _137, uint255(_138)) 
                mem[_147] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[412]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + 456 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[412]:
                revert with 0, 50
            mem[(32 * idx) + 444] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[444 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_126] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_126 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_126 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                if mem[_126 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _139 = mem[_126 + 32]
            _140 = mem[_126 + 64]
            if uint255(mem[_126 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_126 + 64]) >> 255) + 27):
                _143 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_143 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage'))
                mem[_143 + 64] = uint8((bool(_140) >> 255) + 27)
                mem[_143 + 96] = _139
                mem[_143 + 128] = uint255(_140)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage')), (bool(_140) >> 255) + 27 << 248, _139, uint255(_140)) 
                mem[_143] = signer
            else:
                if uint8((bool(mem[_126 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _151 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_151 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage'))
                mem[_151 + 64] = uint8((bool(_140) >> 255) + 27)
                mem[_151 + 96] = _139
                mem[_151 + 128] = uint255(_140)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(128, 0, address(cd[4]), storFE1C, 25, 'computeTokenActionMessage')), (bool(_140) >> 255) + 27 << 248, _139, uint255(_140)) 
                mem[_151] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[412]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + 456 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[412]:
                revert with 0, 50
            mem[(32 * idx) + 444] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    storFE1C++
    require ext_code.size(address(cd[4]))
    call address(cd[4]).pause() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9ee4d69a: msg.sender, address(cd[4])
}

function sub_6b50eaf6(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[128] = 128
    mem[256] = 25
    mem[288] = 'computeTokenActionMessage'
    mem[160] = 1
    mem[192] = address(cd[4])
    mem[224] = storFE1C
    mem[96] = 192
    mem[352] = '\x19Ethereum Signed Message:\n32'
    mem[380] = sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C)
    mem[320] = 60
    if ('cd', 36).length > uint256(stor1C03.field_0):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 36).length <= uint255(stor1C03.field_1):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[412] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 444
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_125] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_125 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_125 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                if mem[_125 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _137 = mem[_125 + 32]
            _138 = mem[_125 + 64]
            if uint255(mem[_125 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_125 + 64]) >> 255) + 27):
                _141 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_141 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C))
                mem[_141 + 64] = uint8((bool(_138) >> 255) + 27)
                mem[_141 + 96] = _137
                mem[_141 + 128] = uint255(_138)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C)), (bool(_138) >> 255) + 27 << 248, _137, uint255(_138)) 
                mem[_141] = signer
            else:
                if uint8((bool(mem[_125 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _147 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_147 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C))
                mem[_147 + 64] = uint8((bool(_138) >> 255) + 27)
                mem[_147 + 96] = _137
                mem[_147 + 128] = uint255(_138)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C)), (bool(_138) >> 255) + 27 << 248, _137, uint255(_138)) 
                mem[_147] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[412]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + 456 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[412]:
                revert with 0, 50
            mem[(32 * idx) + 444] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[444 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_126] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_126 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_126 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                if mem[_126 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _139 = mem[_126 + 32]
            _140 = mem[_126 + 64]
            if uint255(mem[_126 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_126 + 64]) >> 255) + 27):
                _143 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_143 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C))
                mem[_143 + 64] = uint8((bool(_140) >> 255) + 27)
                mem[_143 + 96] = _139
                mem[_143 + 128] = uint255(_140)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C)), (bool(_140) >> 255) + 27 << 248, _139, uint255(_140)) 
                mem[_143] = signer
            else:
                if uint8((bool(mem[_126 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _151 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_151 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C))
                mem[_151 + 64] = uint8((bool(_140) >> 255) + 27)
                mem[_151 + 96] = _139
                mem[_151 + 128] = uint255(_140)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=25, data='computeTokenActionMessage'), 1, address(cd[4]), storFE1C)), (bool(_140) >> 255) + 27 << 248, _139, uint255(_140)) 
                mem[_151] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[412]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + 456 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[412]:
                revert with 0, 50
            mem[(32 * idx) + 444] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    storFE1C++
    require ext_code.size(address(cd[4]))
    call address(cd[4]).unpause() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa09ecf46: msg.sender, address(cd[4])
}

function sub_753b8584(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[128] = 96
    mem[224] = 31
    mem[256] = 'computeUnsetWrappedTokenMessage'
    mem[160] = address(cd[4])
    mem[192] = storFE1C
    mem[96] = 160
    mem[320] = '\x19Ethereum Signed Message:\n32'
    mem[348] = sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C)
    mem[288] = 60
    if ('cd', 36).length > uint256(stor1C03.field_0):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 36).length <= uint255(stor1C03.field_1):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[380] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 412
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_375] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_375 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_375 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                if mem[_375 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _418 = mem[_375 + 32]
            _419 = mem[_375 + 64]
            if uint255(mem[_375 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_375 + 64]) >> 255) + 27):
                _465 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_465 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C))
                mem[_465 + 64] = uint8((bool(_419) >> 255) + 27)
                mem[_465 + 96] = _418
                mem[_465 + 128] = uint255(_419)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C)), (bool(_419) >> 255) + 27 << 248, _418, uint255(_419)) 
                mem[_465] = signer
            else:
                if uint8((bool(mem[_375 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _493 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_493 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C))
                mem[_493 + 64] = uint8((bool(_419) >> 255) + 27)
                mem[_493 + 96] = _418
                mem[_493 + 128] = uint255(_419)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C)), (bool(_419) >> 255) + 27 << 248, _418, uint255(_419)) 
                mem[_493] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[380]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + 424 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[380]:
                revert with 0, 50
            mem[(32 * idx) + 412] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _365 = mem[64]
        if bool(stor1A3E[address(cd[4])].field_256):
            if bool(stor1A3E[address(cd[4])].field_256) == uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor1A3E[address(cd[4])].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))
                mem[mem[64] + (uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5)] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                address(stor[mem[mem[64] + 32 len uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5]][Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))]) = 0
            else:
                if bool(stor1A3E[address(cd[4])].field_256) != 1:
                    address(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = 0
                else:
                    mem[0] = sha3(address(cd[4]), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec47) + 1
                    idx = 0
                    s = 0
                    while idx < uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5:
                        mem[idx + _365] = uint256(stor[s + sha3(mem[0])])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_365 + (uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5)] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                    address(stor[sha3(mem[mem[64] len _365 + (uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5) + -mem[64] + 32])]) = 0
        else:
            if bool(stor1A3E[address(cd[4])].field_256) == stor1A3E[address(cd[4])].field_257 % 128 < 32:
                revert with 0, 34
            if not bool(stor1A3E[address(cd[4])].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))
                mem[mem[64] + stor1A3E[address(cd[4])].field_257 % 128] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                address(stor[mem[mem[64] + 32 len stor1A3E[address(cd[4])].field_257 % 128]][Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))]) = 0
            else:
                if bool(stor1A3E[address(cd[4])].field_256) != 1:
                    address(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = 0
                else:
                    mem[0] = sha3(address(cd[4]), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec47) + 1
                    idx = 0
                    s = 0
                    while idx < stor1A3E[address(cd[4])].field_257 % 128:
                        mem[idx + _365] = uint256(stor[s + sha3(mem[0])])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_365 + stor1A3E[address(cd[4])].field_257 % 128] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                    address(stor[sha3(mem[mem[64] len _365 + stor1A3E[address(cd[4])].field_257 % 128 + -mem[64] + 32])]) = 0
    else:
        mem[412 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _380 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_380] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_380 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_380 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                if mem[_380 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _423 = mem[_380 + 32]
            _424 = mem[_380 + 64]
            if uint255(mem[_380 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_380 + 64]) >> 255) + 27):
                _477 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_477 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C))
                mem[_477 + 64] = uint8((bool(_424) >> 255) + 27)
                mem[_477 + 96] = _423
                mem[_477 + 128] = uint255(_424)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C)), (bool(_424) >> 255) + 27 << 248, _423, uint255(_424)) 
                mem[_477] = signer
            else:
                if uint8((bool(mem[_380 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _509 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_509 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C))
                mem[_509 + 64] = uint8((bool(_424) >> 255) + 27)
                mem[_509 + 96] = _423
                mem[_509 + 128] = uint255(_424)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Array(len=31, data='computeUnsetWrappedTokenMessage'), address(cd[4]), storFE1C)), (bool(_424) >> 255) + 27 << 248, _423, uint255(_424)) 
                mem[_509] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[380]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + 424 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[380]:
                revert with 0, 50
            mem[(32 * idx) + 412] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _368 = mem[64]
        if bool(stor1A3E[address(cd[4])].field_256):
            if bool(stor1A3E[address(cd[4])].field_256) == uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor1A3E[address(cd[4])].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))
                mem[mem[64] + (uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5)] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                address(stor[mem[mem[64] + 32 len uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5]][Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))]) = 0
            else:
                if bool(stor1A3E[address(cd[4])].field_256) != 1:
                    address(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = 0
                else:
                    mem[0] = sha3(address(cd[4]), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec47) + 1
                    idx = 0
                    s = 0
                    while idx < uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5:
                        mem[idx + _368] = uint256(stor[s + sha3(mem[0])])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_368 + (uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5)] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                    address(stor[sha3(mem[mem[64] len _368 + (uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5) + -mem[64] + 32])]) = 0
        else:
            if bool(stor1A3E[address(cd[4])].field_256) == stor1A3E[address(cd[4])].field_257 % 128 < 32:
                revert with 0, 34
            if not bool(stor1A3E[address(cd[4])].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))
                mem[mem[64] + stor1A3E[address(cd[4])].field_257 % 128] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                address(stor[mem[mem[64] + 32 len stor1A3E[address(cd[4])].field_257 % 128]][Mask(248, 8, uint256(stor1A3E[address(cd[4])].field_256))]) = 0
            else:
                if bool(stor1A3E[address(cd[4])].field_256) != 1:
                    address(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = 0
                else:
                    mem[0] = sha3(address(cd[4]), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec47) + 1
                    idx = 0
                    s = 0
                    while idx < stor1A3E[address(cd[4])].field_257 % 128:
                        mem[idx + _368] = uint256(stor[s + sha3(mem[0])])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_368 + stor1A3E[address(cd[4])].field_257 % 128] = sha3(uint8(stor1A3E[address(cd[4])].field_0), 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
                    address(stor[sha3(mem[mem[64] len _368 + stor1A3E[address(cd[4])].field_257 % 128 + -mem[64] + 32])]) = 0
    uint8(stor1A3E[address(cd[4])].field_0) = 0
    if bool(stor1A3E[address(cd[4])].field_256):
        if bool(stor1A3E[address(cd[4])].field_256) == uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5 < 32:
            revert with 0, 34
        uint256(stor1A3E[address(cd[4])].field_256) = 0
        if 31 < uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5:
            idx = 0
            while (uint255(uint256(stor1A3E[address(cd[4])].field_256)) * 0.5) + 31 / 32 > idx:
                uint256(stor1A3E[address(cd[4])][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1A3E[address(cd[4])].field_256) == stor1A3E[address(cd[4])].field_257 % 128 < 32:
            revert with 0, 34
        uint256(stor1A3E[address(cd[4])].field_256) = 0
        if 31 < stor1A3E[address(cd[4])].field_257 % 128:
            idx = 0
            while stor1A3E[address(cd[4])].field_257 % 128 + 31 / 32 > idx:
                uint256(stor1A3E[address(cd[4])][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
    storFE1C++
    emit 0x2ecccb3b: address(cd[4])
}

function sub_b1791417(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[128] = 160
    mem[288] = 29
    mem[320] = 'computeSetWrappedTokenMessage'
    mem[160] = uint8(cd[4])
    mem[192] = 224
    mem[352] = ('cd', 36).length
    mem[384 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 384] = 0
    mem[224] = address(cd[68])
    mem[256] = storFE1C
    mem[96] = ceil32(('cd', 36).length) + 256
    mem[ceil32(('cd', 36).length) + 416] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(('cd', 36).length) + 444] = sha3(160, cd[4] << 248, 224, address(cd[68]), storFE1C, 29, 'computeSetWrappedTokenMessage', ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 384 len ceil32(('cd', 36).length) - ('cd', 36).length])
    mem[ceil32(('cd', 36).length) + 384] = 60
    _9 = sha3(mem[ceil32(('cd', 36).length) + 416 len Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 416 len -('cd', 36).length + ceil32(('cd', 36).length)]])
    if ('cd', 100).length > uint256(stor1C03.field_0):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 100).length <= uint255(stor1C03.field_1):
        revert with 0, 'Governance: Invalid number of signatures'
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    mem[ceil32(('cd', 36).length) + 476] = ('cd', 100).length
    mem[64] = ceil32(('cd', 36).length) + (32 * ('cd', 100).length) + 508
    if not ('cd', 100).length:
        idx = 0
        while idx < ('cd', 100).length:
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
            mem[_197] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            mem[_197 + 32 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
            mem[_197 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                if mem[_197 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _213 = mem[_197 + 32]
            _214 = mem[_197 + 64]
            if uint255(mem[_197 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_197 + 64]) >> 255) + 27):
                _219 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_219 + 32] = _9
                mem[_219 + 64] = uint8((bool(_214) >> 255) + 27)
                mem[_219 + 96] = _213
                mem[_219 + 128] = uint255(_214)
                signer = erecover(_9, (bool(_214) >> 255) + 27 << 248, _213, uint255(_214)) 
                mem[_219] = signer
            else:
                if uint8((bool(mem[_197 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _233 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_233 + 32] = _9
                mem[_233 + 64] = uint8((bool(_214) >> 255) + 27)
                mem[_233 + 96] = _213
                mem[_233 + 128] = uint255(_214)
                signer = erecover(_9, (bool(_214) >> 255) + 27 << 248, _213, uint255(_214)) 
                mem[_233] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[ceil32(('cd', 36).length) + 476]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + ceil32(('cd', 36).length) + 520 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[ceil32(('cd', 36).length) + 476]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(('cd', 36).length) + 508] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not address(cd[68]):
            revert with 0, 'Wrapped token address must be non-zero'
        mem[mem[64] len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        mem[('cd', 36).length + mem[64]] = sha3(cd[4] << 248, 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
        stor1A3E[cd[4] << 248][call.data[cd[36] + 36 len ('cd', 36).length]] = address(cd[68])
        mem[32] = 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec47
        uint8(stor1A3E[address(cd[68])].field_0) = uint8(cd[4])
        if bool(stor1A3E[address(cd[68])].field_256):
            if bool(stor1A3E[address(cd[68])].field_256) == uint255(uint256(stor1A3E[address(cd[68])].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not ('cd', 36).length:
                uint256(stor1A3E[address(cd[68])].field_256) = 0
                idx = 0
                while (uint255(uint256(stor1A3E[address(cd[68])].field_256)) * 0.5) + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _407 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _407 + ceil32(('cd', 36).length) + -mem[64] + 128]
            else:
                uint256(stor1A3E[address(cd[68])].field_256) = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    uint256(stor1A3E[address(cd[68])][s + 1].field_0) = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while (uint255(uint256(stor1A3E[address(cd[68])].field_256)) * 0.5) + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _457 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _457 + ceil32(('cd', 36).length) + -mem[64] + 128]
        else:
            if bool(stor1A3E[address(cd[68])].field_256) == stor1A3E[address(cd[68])].field_257 % 128 < 32:
                revert with 0, 34
            if not ('cd', 36).length:
                uint256(stor1A3E[address(cd[68])].field_256) = 0
                idx = 0
                while stor1A3E[address(cd[68])].field_257 % 128 + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _410 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _410 + ceil32(('cd', 36).length) + -mem[64] + 128]
            else:
                uint256(stor1A3E[address(cd[68])].field_256) = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    uint256(stor1A3E[address(cd[68])][s + 1].field_0) = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while stor1A3E[address(cd[68])].field_257 % 128 + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _458 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _458 + ceil32(('cd', 36).length) + -mem[64] + 128]
    else:
        mem[ceil32(('cd', 36).length) + 508 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
        idx = 0
        while idx < ('cd', 100).length:
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
            mem[_198] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            mem[_198 + 32 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
            mem[_198 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 32] = 0
            if 65 == cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                if mem[_198 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _215 = mem[_198 + 32]
            _216 = mem[_198 + 64]
            if uint255(mem[_198 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if 27 == uint8((bool(mem[_198 + 64]) >> 255) + 27):
                _223 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_223 + 32] = _9
                mem[_223 + 64] = uint8((bool(_216) >> 255) + 27)
                mem[_223 + 96] = _215
                mem[_223 + 128] = uint255(_216)
                signer = erecover(_9, (bool(_216) >> 255) + 27 << 248, _215, uint255(_216)) 
                mem[_223] = signer
            else:
                if uint8((bool(mem[_198 + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _243 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_243 + 32] = _9
                mem[_243 + 64] = uint8((bool(_216) >> 255) + 27)
                mem[_243 + 96] = _215
                mem[_243 + 128] = uint255(_216)
                signer = erecover(_9, (bool(_216) >> 255) + 27 << 248, _215, uint255(_216)) 
                mem[_243] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            mem[0] = address(signer)
            mem[32] = 0x1c03ec2fe6acf7b94b95c87bd1c750db913cc1fec10e1e766e5eb2c5f8b774fb
            if not stor1C03[address(signer)]:
                revert with 0, 'Governance: invalid signer'
            s = 0
            while s < idx:
                if s >= mem[ceil32(('cd', 36).length) + 476]:
                    revert with 0, 50
                if address(signer) == mem[(32 * s) + ceil32(('cd', 36).length) + 520 len 20]:
                    revert with 0, 'Governance: duplicate signatures'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx >= mem[ceil32(('cd', 36).length) + 476]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(('cd', 36).length) + 508] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not address(cd[68]):
            revert with 0, 'Wrapped token address must be non-zero'
        mem[mem[64] len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        mem[('cd', 36).length + mem[64]] = sha3(cd[4] << 248, 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec46)
        stor1A3E[cd[4] << 248][call.data[cd[36] + 36 len ('cd', 36).length]] = address(cd[68])
        mem[32] = 0x1a3e4131826bb378aa43abb34a33a366bc4a35b55ab18a884fa205b59285ec47
        uint8(stor1A3E[address(cd[68])].field_0) = uint8(cd[4])
        if bool(stor1A3E[address(cd[68])].field_256):
            if bool(stor1A3E[address(cd[68])].field_256) == uint255(uint256(stor1A3E[address(cd[68])].field_256)) * 0.5 < 32:
                revert with 0, 34
            if not ('cd', 36).length:
                uint256(stor1A3E[address(cd[68])].field_256) = 0
                idx = 0
                while (uint255(uint256(stor1A3E[address(cd[68])].field_256)) * 0.5) + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _415 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _415 + ceil32(('cd', 36).length) + -mem[64] + 128]
            else:
                uint256(stor1A3E[address(cd[68])].field_256) = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    uint256(stor1A3E[address(cd[68])][s + 1].field_0) = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while (uint255(uint256(stor1A3E[address(cd[68])].field_256)) * 0.5) + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _459 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _459 + ceil32(('cd', 36).length) + -mem[64] + 128]
        else:
            if bool(stor1A3E[address(cd[68])].field_256) == stor1A3E[address(cd[68])].field_257 % 128 < 32:
                revert with 0, 34
            if not ('cd', 36).length:
                uint256(stor1A3E[address(cd[68])].field_256) = 0
                idx = 0
                while stor1A3E[address(cd[68])].field_257 % 128 + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _418 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _418 + ceil32(('cd', 36).length) + -mem[64] + 128]
            else:
                uint256(stor1A3E[address(cd[68])].field_256) = (2 * ('cd', 36).length) + 1
                s = 0
                idx = cd[36] + 36
                while cd[36] + ('cd', 36).length + 36 > idx:
                    uint256(stor1A3E[address(cd[68])][s + 1].field_0) = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                while stor1A3E[address(cd[68])].field_257 % 128 + 31 / 32 > idx:
                    uint256(stor1A3E[address(cd[68])][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                storFE1C++
                _460 = mem[64]
                mem[mem[64]] = uint8(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = ('cd', 36).length
                mem[mem[64] + 128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + mem[64] + 128] = 0
                mem[mem[64] + 64] = address(cd[68])
                emit 0xc13894cb: mem[mem[64] len _460 + ceil32(('cd', 36).length) + -mem[64] + 128]
}



}
