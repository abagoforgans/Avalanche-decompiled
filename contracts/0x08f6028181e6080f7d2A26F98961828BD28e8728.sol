contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint8 stor1;
array of uint8 stor2;
array of struct stor3;
array of uint256 stor4;
array of struct stor5;

function sub_b96cd9bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor2[address(arg1)]))
}

function executor() payable {
    return address(stor4.length)
}

function sub_ef4abf40(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(uint8(stor1[arg1][address(arg2)]))
}

function _fallback() payable {
    revert
}

function sub_499d68f9(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor3.length:
        revert with 0, 50
    return address(stor3[arg1].field_0), stor3.length
}

function state(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(stor0[arg1].field_0):
        return 6
    if uint8(stor0[arg1].field_1280):
        return 5
    if uint8(stor0[arg1].field_1288):
        return 2
    if uint256(stor0[arg1].field_256) >= block.timestamp:
        return 0
    if uint256(stor0[arg1].field_512) >= block.timestamp:
        if uint256(stor0[arg1].field_1024) >= uint256(stor0[arg1].field_768):
            return 3
    if uint256(stor0[arg1].field_512) >= block.timestamp:
        return 1
    if uint256(stor0[arg1].field_512) >= block.timestamp:
        return 0
    return 4
}

function sub_9d01a27d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if address(stor4.length) != msg.sender:
        revert with 0, 'XswapGovernance:invalid executor'
    if arg2:
        if uint8(stor2[address(arg1)]):
            revert with 0, 'XswapGovernance: proposer exists'
        uint8(stor2[address(arg1)]) = uint8(bool(arg2))
        stor3.length++
        address(stor3[stor3.length].field_0) = address(arg1)
    else:
        if not uint8(stor2[address(arg1)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'XswapGovernance: proposer no exists'
        mem[0] = address(arg1)
        mem[32] = 2
        uint8(stor2[address(arg1)]) = uint8(bool(arg2))
        mem[64] = (32 * stor3.length) + 128
        mem[96] = stor3.length
        if stor3.length:
            mem[0] = 3
            mem[128] = address(stor3.field_0)
            idx = 128
            s = 0
            while (32 * stor3.length) + 96 > idx:
                mem[idx + 32] = address(stor3[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        while idx < stor3.length:
            if idx >= stor3.length:
                revert with 0, 50
            if mem[(32 * idx) + 140 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor3.length < 1:
                revert with 0, 17
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            if idx >= stor3.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[(32 * stor3.length - 1) + 140 len 20]
            if not stor3.length:
                idx = sha3(3)
                while sha3(3) + stor3.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(3)
                idx = 128
                while (32 * stor3.length) + 128 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(3) + (Mask(251, 0, (32 * stor3.length) + 31) >> 5)
                while sha3(3) + stor3.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not stor3.length:
                revert with 0, 49
            address(stor3[stor3.length].field_0) = 0
            stor3.length--
}

function sub_4fb6c1d9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _31 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_31] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_31 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_31 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _31
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _30 = mem[64]
    mem[mem[64] + 32] = 64
    _32 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _32:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_30 + 64] = (32 * _32) + 96
    _44 = mem[(32 * ('cd', 4).length) + 128]
    mem[_30 + (32 * _32) + 128] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = _30 + (32 * _32) + (32 * _44) + 160
    u = _30 + (32 * _32) + 160
    while idx < _44:
        mem[u] = t + -_30 + -(32 * _32) - 160
        _53 = mem[s]
        _54 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _54:
            mem[v + t + 32] = mem[v + _53 + 32]
            v = v + 32
            continue 
        if ceil32(_54) > _54:
            mem[_54 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_54) + t + 32
        u = u + 32
        continue 
    _55 = mem[64]
    mem[mem[64]] = t + -mem[64] - 32
    mem[64] = t
    mem[t] = sha3(mem[_55 + 32 len mem[_55]])
    return memory
      from t
       len 32
}

function sub_a05d7586(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _50 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_50] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_50 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_50 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _50
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _51 = mem[64]
    mem[64] = mem[64] + 224
    mem[_51] = 0
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    mem[_51 + 128] = 0
    mem[_51 + 160] = 0
    mem[_51 + 192] = 0
    _52 = mem[64]
    mem[mem[64] + 32] = 64
    _53 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _53:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_52 + 64] = (32 * _53) + 96
    _74 = mem[(32 * ('cd', 4).length) + 128]
    mem[_52 + (32 * _53) + 128] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = _52 + (32 * _53) + (32 * _74) + 160
    u = _52 + (32 * _53) + 160
    while idx < _74:
        mem[u] = t + -_52 + -(32 * _53) - 160
        _92 = mem[s]
        _93 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _93:
            mem[v + t + 32] = mem[v + _92 + 32]
            v = v + 32
            continue 
        if ceil32(_93) > _93:
            mem[_93 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_93) + t + 32
        u = u + 32
        continue 
    _94 = mem[64]
    mem[mem[64]] = t + -mem[64] - 32
    mem[64] = t
    _96 = sha3(mem[_94 + 32 len mem[_94]])
    mem[0] = sha3(mem[_94 + 32 len mem[_94]])
    mem[32] = 0
    _97 = sha3(mem[0], 0)
    mem[64] = t + 224
    mem[t] = address(stor0[mem[0]].field_0)
    return _96, 
           mem[t + 12 len 20],
           uint256(stor1[_97]),
           uint256(stor2[_97]),
           uint256(stor3[_97].field_0),
           uint256(stor4[_97]),
           bool(uint8(stor5[_97].field_0)),
           bool(uint8(stor5[_97].field_8))
}

function sub_4b443b97(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _189 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_189] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_189 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_189 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _189
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not uint8(stor2[msg.sender]):
        revert with 0, 'XswapGovernance:invalid proposer'
    _191 = mem[64]
    mem[mem[64] + 32] = 64
    _193 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _193:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_191 + 64] = (32 * _193) + 96
    _281 = mem[(32 * ('cd', 4).length) + 128]
    mem[_191 + (32 * _193) + 128] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = _191 + (32 * _193) + (32 * _281) + 160
    u = _191 + (32 * _193) + 160
    while idx < _281:
        mem[u] = t + -_191 + -(32 * _193) - 160
        _366 = mem[s]
        _367 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _367:
            mem[v + t + 32] = mem[v + _366 + 32]
            v = v + 32
            continue 
        if ceil32(_367) > _367:
            mem[_367 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_367) + t + 32
        u = u + 32
        continue 
    _368 = mem[64]
    mem[mem[64]] = t + -mem[64] - 32
    mem[64] = t
    _370 = sha3(mem[_368 + 32 len mem[_368]])
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'XswapGovernance: invalid proposal length'
    if mem[96] <= 0:
        revert with 0, 'XswapGovernance: empty proposal'
    mem[0] = sha3(mem[_368 + 32 len mem[_368]])
    if not address(stor0[_370].field_0):
        revert with 0, 
                    32,
                    37,
                    0xfe5873776170476f7665726e616e63653a2070726f706f73616c207374617465,
                    0x456d707479000000000000000000000000000000000000000000000000000000
    if uint8(stor0[_370].field_1280):
        revert with 0, 
                    32,
                    40,
                    0xfe5873776170476f7665726e616e63653a2070726f706f73616c207374617465,
                    0x4578656375746564000000000000000000000000000000000000000000000000
    if uint8(stor0[_370].field_1288):
        revert with 0, 
                    32,
                    40,
                    0xfe5873776170476f7665726e616e63653a2070726f706f73616c207374617465,
                    0x43616e63656c6564000000000000000000000000000000000000000000000000
    if uint256(stor0[_370].field_256) >= block.timestamp:
        revert with 0, 32, 39, 0xfe5873776170476f7665726e616e63653a2070726f706f73616c207374617465, 'Pending' << 200
    if uint256(stor0[_370].field_512) >= block.timestamp:
        if uint256(stor0[_370].field_1024) >= uint256(stor0[_370].field_768):
            revert with 0, 
                        32,
                        41,
                        0xfe5873776170476f7665726e616e63653a2070726f706f73616c207374617465,
                        0x5375636365656465640000000000000000000000000000000000000000000000
    if uint256(stor0[_370].field_512) < block.timestamp:
        if uint256(stor0[_370].field_512) < block.timestamp:
            revert with 0, 
                        32,
                        39,
                        0xfe5873776170476f7665726e616e63653a2070726f706f73616c207374617465,
                        0x4578706972656400000000000000000000000000000000000000000000000000
        revert with 0, 32, 39, 0xfe5873776170476f7665726e616e63653a2070726f706f73616c207374617465, 'Pending' << 200
    if uint8(stor1[_370][msg.sender]):
        revert with 0, 'XswapGovernance: already castvote'
    if uint256(stor0[mem[0]].field_1024) == -1:
        revert with 0, 17
    uint256(stor0[mem[0]].field_1024)++
    address(stor0[_370].field_0) = address(stor0[mem[0]].field_0)
    uint256(stor0[_370].field_256) = uint256(stor0[mem[0]].field_256)
    uint256(stor0[_370].field_512) = uint256(stor0[mem[0]].field_512)
    uint256(stor0[_370].field_768) = uint256(stor0[mem[0]].field_768)
    uint256(stor0[_370].field_1024) = uint256(stor0[mem[0]].field_1024)
    uint8(stor0[_370].field_1280) = uint8(bool(uint8(stor0[mem[0]].field_1280)))
    uint8(stor0[_370].field_1280) = uint8(bool(uint8(stor0[mem[0]].field_1280)))
    Mask(248, 0, stor0[_370].field_1288) = Mask(248, 0, bool(uint8(stor0[mem[0]].field_1288)))
    Mask(240, 0, stor0[_370].field_1296) = Mask(240, 16, bool(uint8(stor0[mem[0]].field_1280))) >> 16
    uint8(stor1[_370][msg.sender]) = 1
    emit 0x98398cb8: _370, msg.sender, uint256(stor0[mem[0]].field_1024)
    return 0
}

function sub_47d0219e(?) payable {
    require calldata.size - 4 >= 32
    if address(stor0[arg1].field_0) != msg.sender:
        revert with 0, 'XswapGovernance:invalid proposer'
    else:
        if address(stor0[arg1].field_0):
            if uint8(stor0[arg1].field_1280):
                revert with 0, 'XswapGovernance:Executed'
            else:
                if uint8(stor0[arg1].field_1288):
                    revert with 0, 'XswapGovernance: already Canceled'
                else:
                    if uint256(stor0[arg1].field_256) < block.timestamp:
                        if uint256(stor0[arg1].field_512) < block.timestamp:
                            if uint256(stor0[arg1].field_512) < block.timestamp:
                                if uint256(stor0[arg1].field_512) >= block.timestamp:
                                    uint8(stor0[arg1].field_1288) = 1
                                    address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
                                    uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                    uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                    Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
                                    Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
                                    emit ProposalCanceled(arg1);
                                else:
                                    uint8(stor0[arg1].field_1288) = 1
                                    address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
                                    uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                    uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                    Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
                                    Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
                                    emit ProposalCanceled(arg1);
                            else:
                                uint8(stor0[arg1].field_1288) = 1
                                address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
                                uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
                                Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
                                emit ProposalCanceled(arg1);
                        else:
                            if uint256(stor0[arg1].field_1024) >= uint256(stor0[arg1].field_768):
                                revert with 0, 'XswapGovernance: already Succeeded'
                            else:
                                if uint256(stor0[arg1].field_512) < block.timestamp:
                                    if uint256(stor0[arg1].field_512) >= block.timestamp:
                                        uint8(stor0[arg1].field_1288) = 1
                                        address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
                                        uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                        uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                        Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
                                        Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
                                        emit ProposalCanceled(arg1);
                                    else:
                                        uint8(stor0[arg1].field_1288) = 1
                                        address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
                                        uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                        uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                        Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
                                        Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
                                        emit ProposalCanceled(arg1);
                                else:
                                    uint8(stor0[arg1].field_1288) = 1
                                    address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
                                    uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                    uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                                    Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
                                    Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
                                    emit ProposalCanceled(arg1);
                    else:
                        uint8(stor0[arg1].field_1288) = 1
                        address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
                        uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                        uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
                        Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
                        Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
                        emit ProposalCanceled(arg1);
        else:
            uint8(stor0[arg1].field_1288) = 1
            address(stor0[arg1].field_0) = address(stor0[arg1].field_0)
            uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
            uint8(stor0[arg1].field_1280) = uint8(bool(uint8(stor0[arg1].field_1280)))
            Mask(248, 0, stor0[arg1].field_1288) = Mask(248, 0, bool(uint8(stor0[arg1].field_1288)))
            Mask(240, 0, stor0[arg1].field_1296) = Mask(240, 16, bool(uint8(stor0[arg1].field_1280))) >> 16
            emit ProposalCanceled(arg1);
}

function sub_2de14efd(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _237 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_237] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_237 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_237 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _237
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not uint8(stor2[msg.sender]):
        revert with 0, 'XswapGovernance:invalid proposer'
    _239 = mem[64]
    mem[mem[64] + 32] = 64
    _241 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _241:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_239 + 64] = (32 * _241) + 96
    _353 = mem[(32 * ('cd', 4).length) + 128]
    mem[_239 + (32 * _241) + 128] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = _239 + (32 * _241) + (32 * _353) + 160
    u = _239 + (32 * _241) + 160
    while idx < _353:
        mem[u] = t + -_239 + -(32 * _241) - 160
        _462 = mem[s]
        _463 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _463:
            mem[v + t + 32] = mem[v + _462 + 32]
            v = v + 32
            continue 
        if ceil32(_463) > _463:
            mem[_463 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_463) + t + 32
        u = u + 32
        continue 
    _464 = mem[64]
    mem[mem[64]] = t + -mem[64] - 32
    mem[64] = t
    _466 = sha3(mem[_464 + 32 len mem[_464]])
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'XswapGovernance: invalid proposal length'
    if mem[96] <= 0:
        revert with 0, 'XswapGovernance: empty proposal'
    if cd[132] < 2:
        revert with 0, 'XswapGovernance: invalid required'
    if cd[132] >= stor3.length:
        revert with 0, 'XswapGovernance: invalid required'
    if cd[68] >= cd[100]:
        revert with 0, 'XswapGovernance: invalid voteStart||voteEnd'
    if cd[68] < block.timestamp:
        revert with 0, 'XswapGovernance: invalid voteStart||voteEnd'
    mem[0] = sha3(mem[_464 + 32 len mem[_464]])
    _480 = sha3(mem[0], 0)
    mem[0] = _466
    mem[32] = 0
    mem[64] = t + 224
    mem[t] = address(stor0[_466].field_0)
    mem[t + 32] = uint256(stor0[_466].field_256)
    mem[t + 64] = uint256(stor0[_466].field_512)
    mem[t + 96] = uint256(stor0[_466].field_768)
    mem[t + 128] = uint256(stor0[_466].field_1024)
    mem[t + 160] = bool(uint8(stor0[_466].field_1280))
    mem[t + 192] = bool(uint8(stor0[_466].field_1288))
    if not address(stor0[_466].field_0):
        uint256(stor[_480]) = msg.sender or Mask(96, 160, uint256(stor[_480]))
        uint256(stor1[_480]) = cd[68]
        uint256(stor2[_480]) = cd[100]
        uint256(stor3[_480].field_0) = cd[132]
        uint256(stor4[_480]) = 0
        uint16(stor5[_480].field_0) = 0
        mem[0] = _466
        mem[32] = 0
        mem[t + 224] = _466
        mem[t + 256] = msg.sender
        mem[t + 288] = 192
        _502 = mem[96]
        mem[t + 416] = mem[96]
        idx = 0
        s = 128
        u = t + 448
        while idx < mem[96]:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[t + 320] = (32 * mem[96]) + 224
        _588 = mem[(32 * ('cd', 4).length) + 128]
        mem[t + (32 * mem[96]) + 448] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        u = t + (32 * mem[96]) + (32 * _588) + 480
        v = t + (32 * mem[96]) + 480
        while idx < _588:
            mem[v] = u + -t + -(32 * _502) - 480
            _635 = mem[s]
            _636 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _636:
                mem[t + u + 32] = mem[t + _635 + 32]
                t = t + 32
                continue 
            if ceil32(_636) > _636:
                mem[_636 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            u = ceil32(_636) + u + 32
            v = v + 32
            continue 
    else:
        if uint8(stor0[_466].field_1280):
            idx = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx].field_0)
                mem[32] = sha3(_466, 1)
                uint8(stor1[_466][address(stor3[idx].field_0)]) = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            uint256(stor[_480]) = msg.sender or Mask(96, 160, uint256(stor[_480]))
            uint256(stor1[_480]) = cd[68]
            uint256(stor2[_480]) = cd[100]
            uint256(stor3[_480].field_0) = cd[132]
            uint256(stor4[_480]) = 0
            uint16(stor5[_480].field_0) = 0
            mem[0] = _466
            mem[32] = 0
            mem[t + 224] = _466
            mem[t + 256] = msg.sender
            mem[t + 288] = 192
            _592 = mem[96]
            mem[t + 416] = mem[96]
            idx = 0
            s = 128
            u = t + 448
            while idx < mem[96]:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[t + 320] = (32 * mem[96]) + 224
            _640 = mem[(32 * ('cd', 4).length) + 128]
            mem[t + (32 * mem[96]) + 448] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            u = t + (32 * mem[96]) + (32 * _640) + 480
            v = t + (32 * mem[96]) + 480
            while idx < _640:
                mem[v] = u + -t + -(32 * _592) - 480
                _675 = mem[s]
                _676 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _676:
                    mem[t + u + 32] = mem[t + _675 + 32]
                    t = t + 32
                    continue 
                if ceil32(_676) > _676:
                    mem[_676 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_676) + u + 32
                v = v + 32
                continue 
        else:
            if uint8(stor0[_466].field_1288):
                idx = 0
                while idx < stor3.length:
                    mem[0] = address(stor3[idx].field_0)
                    mem[32] = sha3(_466, 1)
                    uint8(stor1[_466][address(stor3[idx].field_0)]) = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                uint256(stor[_480]) = msg.sender or Mask(96, 160, uint256(stor[_480]))
                uint256(stor1[_480]) = cd[68]
                uint256(stor2[_480]) = cd[100]
                uint256(stor3[_480].field_0) = cd[132]
                uint256(stor4[_480]) = 0
                uint16(stor5[_480].field_0) = 0
                mem[0] = _466
                mem[32] = 0
                mem[t + 224] = _466
                mem[t + 256] = msg.sender
                mem[t + 288] = 192
                _591 = mem[96]
                mem[t + 416] = mem[96]
                idx = 0
                s = 128
                u = t + 448
                while idx < mem[96]:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                mem[t + 320] = (32 * mem[96]) + 224
                _639 = mem[(32 * ('cd', 4).length) + 128]
                mem[t + (32 * mem[96]) + 448] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                u = t + (32 * mem[96]) + (32 * _639) + 480
                v = t + (32 * mem[96]) + 480
                while idx < _639:
                    mem[v] = u + -t + -(32 * _591) - 480
                    _673 = mem[s]
                    _674 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _674:
                        mem[t + u + 32] = mem[t + _673 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_674) > _674:
                        mem[_674 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_674) + u + 32
                    v = v + 32
                    continue 
            else:
                if uint256(stor0[_466].field_256) >= block.timestamp:
                    revert with 0, 'XswapGovernance: proposal already exists'
                if uint256(stor0[_466].field_512) < block.timestamp:
                    if uint256(stor0[_466].field_512) >= block.timestamp:
                        revert with 0, 'XswapGovernance: proposal already exists'
                    if uint256(stor0[_466].field_512) >= block.timestamp:
                        revert with 0, 'XswapGovernance: proposal already exists'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = address(stor3[idx].field_0)
                        mem[32] = sha3(_466, 1)
                        uint8(stor1[_466][address(stor3[idx].field_0)]) = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    uint256(stor[_480]) = msg.sender or Mask(96, 160, uint256(stor[_480]))
                    uint256(stor1[_480]) = cd[68]
                    uint256(stor2[_480]) = cd[100]
                    uint256(stor3[_480].field_0) = cd[132]
                    uint256(stor4[_480]) = 0
                    uint16(stor5[_480].field_0) = 0
                    mem[0] = _466
                    mem[32] = 0
                    mem[t + 224] = _466
                    mem[t + 256] = msg.sender
                    mem[t + 288] = 192
                    _589 = mem[96]
                    mem[t + 416] = mem[96]
                    idx = 0
                    s = 128
                    u = t + 448
                    while idx < mem[96]:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[t + 320] = (32 * mem[96]) + 224
                    _637 = mem[(32 * ('cd', 4).length) + 128]
                    mem[t + (32 * mem[96]) + 448] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    u = t + (32 * mem[96]) + (32 * _637) + 480
                    v = t + (32 * mem[96]) + 480
                    while idx < _637:
                        mem[v] = u + -t + -(32 * _589) - 480
                        _669 = mem[s]
                        _670 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        t = 0
                        while t < _670:
                            mem[t + u + 32] = mem[t + _669 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_670) > _670:
                            mem[_670 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_670) + u + 32
                        v = v + 32
                        continue 
                else:
                    if uint256(stor0[_466].field_1024) >= uint256(stor0[_466].field_768):
                        revert with 0, 'XswapGovernance: proposal already exists'
                    if uint256(stor0[_466].field_512) >= block.timestamp:
                        revert with 0, 'XswapGovernance: proposal already exists'
                    if uint256(stor0[_466].field_512) >= block.timestamp:
                        revert with 0, 'XswapGovernance: proposal already exists'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = address(stor3[idx].field_0)
                        mem[32] = sha3(_466, 1)
                        uint8(stor1[_466][address(stor3[idx].field_0)]) = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    uint256(stor[_480]) = msg.sender or Mask(96, 160, uint256(stor[_480]))
                    uint256(stor1[_480]) = cd[68]
                    uint256(stor2[_480]) = cd[100]
                    uint256(stor3[_480].field_0) = cd[132]
                    uint256(stor4[_480]) = 0
                    uint16(stor5[_480].field_0) = 0
                    mem[0] = _466
                    mem[32] = 0
                    mem[t + 224] = _466
                    mem[t + 256] = msg.sender
                    mem[t + 288] = 192
                    _590 = mem[96]
                    mem[t + 416] = mem[96]
                    idx = 0
                    s = 128
                    u = t + 448
                    while idx < mem[96]:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    mem[t + 320] = (32 * mem[96]) + 224
                    _638 = mem[(32 * ('cd', 4).length) + 128]
                    mem[t + (32 * mem[96]) + 448] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    u = t + (32 * mem[96]) + (32 * _638) + 480
                    v = t + (32 * mem[96]) + 480
                    while idx < _638:
                        mem[v] = u + -t + -(32 * _590) - 480
                        _671 = mem[s]
                        _672 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        t = 0
                        while t < _672:
                            mem[t + u + 32] = mem[t + _671 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_672) > _672:
                            mem[_672 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_672) + u + 32
                        v = v + 32
                        continue 
    mem[t + 352] = cd[68]
    mem[t + 384] = cd[100]
    emit 0xe737f321: mem[mem[64] len u - mem[64]]
    return _466
}

function execute(address[] arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    else:
        if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
            revert with 0, 65
        else:
            mem[96] = arg1.length
            require calldata.size >= arg1 + (32 * arg1.length) + 36
            idx = 0
            s = arg1 + 36
            t = 128
            while idx < arg1.length:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require arg2 <= test266151307()
            require arg2 + 35 < calldata.size
            if arg2.length > test266151307():
                revert with 0, 65
            else:
                if (32 * arg2.length) + 160 < 128 or (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307():
                    revert with 0, 65
                else:
                    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
                    mem[(32 * arg1.length) + 128] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = (32 * arg1.length) + 160
                    while idx < arg2.length:
                        require arg2 + cd[s] + 67 < calldata.size
                        if cd[(arg2 + cd[s] + 36)] > test266151307():
                            revert with 0, 65
                        else:
                            _177 = mem[64]
                            if mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 > test266151307():
                                revert with 0, 65
                            else:
                                mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
                                mem[_177] = cd[(arg2 + cd[s] + 36)]
                                require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
                                mem[_177 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
                                mem[_177 + cd[(arg2 + cd[s] + 36)] + 32] = 0
                                mem[t] = _177
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    mem[0] = msg.sender
                    mem[32] = 2
                    if not uint8(stor2[msg.sender]):
                        revert with 0, 'XswapGovernance:invalid proposer'
                    else:
                        _179 = mem[64]
                        mem[mem[64] + 32] = 64
                        _181 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _181:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_179 + 64] = (32 * _181) + 96
                        _263 = mem[(32 * arg1.length) + 128]
                        mem[_179 + (32 * _181) + 128] = mem[(32 * arg1.length) + 128]
                        idx = 0
                        s = (32 * arg1.length) + 160
                        t = _179 + (32 * _181) + (32 * _263) + 160
                        u = _179 + (32 * _181) + 160
                        while idx < _263:
                            mem[u] = t + -_179 + -(32 * _181) - 160
                            _342 = mem[s]
                            _343 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _343:
                                mem[v + t + 32] = mem[v + _342 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_343) <= _343:
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_343) + t + 32
                                u = u + 32
                                continue 
                            else:
                                mem[_343 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_343) + t + 32
                                u = u + 32
                                continue 
                        _344 = mem[64]
                        mem[mem[64]] = t + -mem[64] - 32
                        mem[64] = t
                        _346 = sha3(mem[_344 + 32 len mem[_344]])
                        mem[0] = sha3(mem[_344 + 32 len mem[_344]])
                        mem[32] = 0
                        _348 = sha3(mem[0], 0)
                        mem[64] = t + 224
                        mem[t] = address(stor0[mem[0]].field_0)
                        mem[t + 32] = uint256(stor1[_348])
                        mem[t + 64] = uint256(stor2[_348])
                        mem[t + 96] = uint256(stor3[_348].field_0)
                        mem[t + 128] = uint256(stor4[_348])
                        mem[t + 160] = bool(uint8(stor5[_348].field_0))
                        mem[t + 192] = bool(uint8(stor5[_348].field_8))
                        if not address(stor[_348]):
                            revert with 0, 'Governor: proposal not successful or executed'
                        else:
                            if uint8(stor5[_348].field_0):
                                revert with 0, 'Governor: proposal not successful or executed'
                            else:
                                if uint8(stor5[_348].field_8):
                                    revert with 0, 'Governor: proposal not successful or executed'
                                else:
                                    if uint256(stor1[_348]) >= block.timestamp:
                                        revert with 0, 'Governor: proposal not successful or executed'
                                    else:
                                        if uint256(stor2[_348]) < block.timestamp:
                                            if uint256(stor2[_348]) >= block.timestamp:
                                                revert with 0, 'Governor: proposal not successful or executed'
                                            else:
                                                if uint256(stor2[_348]) < block.timestamp:
                                                    revert with 0, 'Governor: proposal not successful or executed'
                                                else:
                                                    revert with 0, 'Governor: proposal not successful or executed'
                                        else:
                                            if uint256(stor4[_348]) < uint256(stor3[_348].field_0):
                                                if uint256(stor2[_348]) >= block.timestamp:
                                                    revert with 0, 'Governor: proposal not successful or executed'
                                                else:
                                                    if uint256(stor2[_348]) < block.timestamp:
                                                        revert with 0, 'Governor: proposal not successful or executed'
                                                    else:
                                                        revert with 0, 'Governor: proposal not successful or executed'
                                            else:
                                                _420 = mem[96]
                                                idx = 0
                                                while idx < _420:
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    else:
                                                        _434 = mem[(32 * idx) + 128]
                                                        if idx >= mem[(32 * arg1.length) + 128]:
                                                            revert with 0, 50
                                                        else:
                                                            _437 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                            _438 = mem[64]
                                                            _439 = mem[mem[(32 * idx) + (32 * arg1.length) + 160]]
                                                            s = 0
                                                            while s < _439:
                                                                mem[s + _438] = mem[s + _437 + 32]
                                                                _420 = mem[96]
                                                                s = s + 32
                                                                continue 
                                                            if ceil32(_439) <= _439:
                                                                call address(_434).mem[mem[64] len 4] with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4 len _439 + _438 + -mem[64] - 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'execute error'
                                                                    else:
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            _420 = mem[96]
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    _469 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                                    mem[_469] = return_data.size
                                                                    mem[_469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'execute error'
                                                                    else:
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            _420 = mem[96]
                                                                            idx = idx + 1
                                                                            continue 
                                                            else:
                                                                mem[_439 + _438] = 0
                                                                call address(_434).mem[mem[64] len 4] with:
                                                                     gas gas_remaining wei
                                                                    args mem[mem[64] + 4 len _439 + _438 + -mem[64] - 4]
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'execute error'
                                                                    else:
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            _420 = mem[96]
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    _468 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                                    mem[_468] = return_data.size
                                                                    mem[_468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        revert with 0, 'execute error'
                                                                    else:
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            _420 = mem[96]
                                                                            idx = idx + 1
                                                                            continue 
                                                mem[0] = _346
                                                mem[32] = 0
                                                _422 = mem[64]
                                                mem[64] = mem[64] + 224
                                                mem[_422] = address(stor0[_346].field_0)
                                                mem[_422 + 32] = uint256(stor0[_346].field_256)
                                                mem[_422 + 64] = uint256(stor0[_346].field_512)
                                                mem[_422 + 96] = uint256(stor0[_346].field_768)
                                                mem[_422 + 128] = uint256(stor0[_346].field_1024)
                                                mem[_422 + 192] = bool(uint8(stor0[_346].field_1288))
                                                mem[_422 + 160] = 1
                                                mem[0] = _346
                                                mem[32] = 0
                                                uint8(stor0[_346].field_1280) = 1
                                                Mask(248, 0, stor0[_346].field_1288) = Mask(248, 0, bool(uint8(stor0[_346].field_1288)))
                                                _431 = mem[64]
                                                mem[mem[64]] = _346
                                                mem[mem[64] + 32] = 128
                                                _436 = mem[96]
                                                mem[mem[64] + 128] = mem[96]
                                                s = 0
                                                t = 128
                                                u = mem[64] + 160
                                                while s < _436:
                                                    mem[u] = mem[t + 12 len 20]
                                                    s = s + 1
                                                    t = t + 32
                                                    u = u + 32
                                                    continue 
                                                mem[_431 + 64] = (32 * _436) + 160
                                                _463 = mem[(32 * arg1.length) + 128]
                                                mem[_431 + (32 * _436) + 160] = mem[(32 * arg1.length) + 128]
                                                s = 0
                                                t = (32 * arg1.length) + 160
                                                u = _431 + (32 * _436) + (32 * _463) + 192
                                                v = _431 + (32 * _436) + 192
                                                while s < _463:
                                                    mem[v] = u + -_431 + -(32 * _436) - 192
                                                    _482 = mem[t]
                                                    _483 = mem[mem[t]]
                                                    mem[u] = mem[mem[t]]
                                                    idx = 0
                                                    while idx < _483:
                                                        mem[idx + u + 32] = mem[idx + _482 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_483) <= _483:
                                                        s = s + 1
                                                        t = t + 32
                                                        u = ceil32(_483) + u + 32
                                                        v = v + 32
                                                        continue 
                                                    else:
                                                        mem[_483 + u + 32] = 0
                                                        s = s + 1
                                                        t = t + 32
                                                        u = ceil32(_483) + u + 32
                                                        v = v + 32
                                                        continue 
                                                mem[_431 + 96] = msg.sender
                                                emit 0x963dd2b7: mem[mem[64] len u - mem[64]]
                                                return _346
}



}
