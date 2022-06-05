contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;
array of struct stor3;
mapping of uint256 stor4;
array of struct stor5;
array of struct stor6;
array of struct stor7;
mapping of address tokenOf;
uint256 poolCount;
uint256 totalParticipants;
uint8 paused;

function tokenOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenOf[arg1]
}

function paused() payable {
    return bool(paused)
}

function isPoolGenerated(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function owner() payable {
    return owner
}

function totalParticipants() payable {
    return totalParticipants
}

function poolCount() payable {
    return poolCount
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_05ea2183(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor3.length:
        revert with 0, 50
    return stor3[arg1].field_0, tokenOf[stor3[arg1].field_0]
}

function setPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_63eaabc4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor4[address(msg.sender)]:
        revert with 0, 'Not a generated pool'
    if 1 > !totalParticipants:
        revert with 0, 17
    totalParticipants++
    if not stor7[address(arg1)][1][address(arg2)].field_0:
        stor7[address(arg1)].field_0++
        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = address(arg2)
        stor7[address(arg1)][stor7[address(arg1)].field_0].field_160 = 0
        stor7[address(arg1)][1][address(arg2)].field_0 = stor7[address(arg1)].field_0
    emit 0x637f9944: totalParticipants
}

function sub_27082f73(?) payable {
    if stor1.length > test266151307():
        revert with 0, 65
    mem[96] = stor1.length
    mem[64] = (32 * stor1.length) + 128
    if stor1.length:
        mem[128 len 32 * stor1.length] = call.data[calldata.size len 32 * stor1.length]
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if idx >= stor1.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor1[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function sub_2c23003d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not a whitelisted factory'
    if paused:
        revert with 0, 'Paused'
    if not stor4[address(arg1)]:
        stor3.length++
        stor3[stor3.length].field_0 = address(arg1)
        stor3[stor3.length].field_160 = 0
        stor4[address(arg1)] = stor3.length
    tokenOf[address(arg1)] = address(arg2)
    if not stor6[address(arg3)][1][address(arg1)].field_0:
        stor6[address(arg3)].field_0++
        stor6[address(arg3)][stor6[address(arg3)].field_0].field_0 = address(arg1)
        stor6[address(arg3)][stor6[address(arg3)].field_0].field_160 = 0
        stor6[address(arg3)][1][address(arg1)].field_0 = stor6[address(arg3)].field_0
    if not stor5[address(arg2)][1][address(arg1)].field_0:
        stor5[address(arg2)].field_0++
        stor5[address(arg2)][stor5[address(arg2)].field_0].field_0 = address(arg1)
        stor5[address(arg2)][stor5[address(arg2)].field_0].field_160 = 0
        stor5[address(arg2)][1][address(arg1)].field_0 = stor5[address(arg2)].field_0
    if poolCount == -1:
        revert with 0, 17
    poolCount++
}

function sub_29a431ea(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        if cd[36]:
            if not stor2[address(cd[((32 * idx) + cd[4] + 36)])]:
                stor1.length++
                stor1[stor1.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
                stor1[stor1.length].field_160 = 0
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + cd[4] + 36)])] = stor1.length
        else:
            if stor2[address(cd[((32 * idx) + cd[4] + 36)])]:
                if stor2[address(cd[((32 * idx) + cd[4] + 36)])] < 1:
                    revert with 0, 17
                if stor1.length < 1:
                    revert with 0, 17
                if stor1.length - 1 != stor2[address(cd[((32 * idx) + cd[4] + 36)])] - 1:
                    if stor1.length - 1 >= stor1.length:
                        revert with 0, 50
                    if stor2[address(cd[((32 * idx) + cd[4] + 36)])] - 1 >= stor1.length:
                        revert with 0, 50
                    stor1[stor2[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 = stor1[stor1.length].field_0
                    stor2[stor1[stor1.length].field_0] = stor2[address(cd[((32 * idx) + cd[4] + 36)])]
                if not stor1.length:
                    revert with 0, 49
                stor1[stor1.length].field_0 = 0
                stor1.length--
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getAllPools() payable {
    if stor3.length > test266151307():
        revert with 0, 65
    mem[96] = stor3.length
    mem[64] = (32 * stor3.length) + 128
    if not stor3.length:
        idx = 0
        while idx < stor3.length:
            _27 = mem[64]
            mem[64] = mem[64] + 64
            mem[_27] = 0
            mem[_27 + 32] = 0
            mem[0] = 3
            _37 = mem[64]
            mem[64] = mem[64] + 64
            mem[_37] = stor3[idx].field_0
            mem[0] = stor3[idx].field_0
            mem[32] = 8
            mem[_37 + 32] = tokenOf[stor3[idx].field_0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _28:
            _48 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_48 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _26 + (64 * _28) + -mem[64] + 64
    mem[64] = (32 * stor3.length) + 192
    mem[(32 * stor3.length) + 128] = 0
    mem[(32 * stor3.length) + 160] = 0
    mem[128] = (32 * stor3.length) + 128
    s = 128
    idx = stor3.length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor3.length) + 128] = 0
        mem[(32 * stor3.length) + 160] = 0
        mem[s + 32] = (32 * stor3.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor3.length:
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = 0
        mem[_53 + 32] = 0
        mem[0] = 3
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60] = stor3[idx].field_0
        mem[0] = stor3[idx].field_0
        mem[32] = 8
        mem[_60 + 32] = tokenOf[stor3[idx].field_0]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _60
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _52 = mem[64]
    mem[mem[64]] = 32
    _54 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _54:
        _63 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_63 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _52 + (64 * _54) + -mem[64] + 64
}

function sub_42b540d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    if stor5[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor5[address(arg1)].field_0
    mem[64] = (32 * stor5[address(arg1)].field_0) + 128
    if not stor5[address(arg1)].field_0:
        idx = 0
        while idx < stor5[address(arg1)].field_0:
            mem[32] = 5
            if idx >= stor5[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 5)
            _35 = mem[64]
            mem[64] = mem[64] + 64
            mem[_35] = stor5[address(arg1)][idx].field_0
            mem[_35 + 32] = address(arg1)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _35
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[mem[64]] = 32
        _27 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _27:
            _45 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_45 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _26 + (64 * _27) + -mem[64] + 64
    mem[64] = (32 * stor5[address(arg1)].field_0) + 192
    mem[(32 * stor5[address(arg1)].field_0) + 128] = 0
    mem[(32 * stor5[address(arg1)].field_0) + 160] = 0
    mem[128] = (32 * stor5[address(arg1)].field_0) + 128
    s = 128
    idx = stor5[address(arg1)].field_0
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor5[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor5[address(arg1)].field_0) + 160] = 0
        mem[s + 32] = (32 * stor5[address(arg1)].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[32] = 5
        if idx >= stor5[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 5)
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = stor5[address(arg1)][idx].field_0
        mem[_57 + 32] = address(arg1)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _57
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _50 = mem[64]
    mem[mem[64]] = 32
    _51 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _51:
        _59 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_59 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _50 + (64 * _51) + -mem[64] + 64
}

function sub_2a33ca1e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 6
    if stor6[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor6[address(arg1)].field_0
    mem[64] = (32 * stor6[address(arg1)].field_0) + 128
    if not stor6[address(arg1)].field_0:
        idx = 0
        while idx < stor6[address(arg1)].field_0:
            if idx >= stor6[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 6)
            _37 = mem[64]
            mem[64] = mem[64] + 64
            mem[_37] = stor6[address(arg1)][idx].field_0
            mem[0] = stor6[address(arg1)][idx].field_0
            mem[32] = 8
            mem[_37 + 32] = tokenOf[stor6[address(arg1)][idx].field_0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _29 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _29:
            _49 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_49 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _28 + (64 * _29) + -mem[64] + 64
    mem[64] = (32 * stor6[address(arg1)].field_0) + 192
    mem[(32 * stor6[address(arg1)].field_0) + 128] = 0
    mem[(32 * stor6[address(arg1)].field_0) + 160] = 0
    mem[128] = (32 * stor6[address(arg1)].field_0) + 128
    s = 128
    idx = stor6[address(arg1)].field_0
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor6[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor6[address(arg1)].field_0) + 160] = 0
        mem[s + 32] = (32 * stor6[address(arg1)].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor6[address(arg1)].field_0:
        if idx >= stor6[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 6)
        _61 = mem[64]
        mem[64] = mem[64] + 64
        mem[_61] = stor6[address(arg1)][idx].field_0
        mem[0] = stor6[address(arg1)][idx].field_0
        mem[32] = 8
        mem[_61 + 32] = tokenOf[stor6[address(arg1)][idx].field_0]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _61
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _54 = mem[64]
    mem[mem[64]] = 32
    _55 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _55:
        _64 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_64 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _54 + (64 * _55) + -mem[64] + 64
}

function sub_98ba32e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 7
    if stor7[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor7[address(arg1)].field_0
    mem[64] = (32 * stor7[address(arg1)].field_0) + 128
    if not stor7[address(arg1)].field_0:
        idx = 0
        while idx < stor7[address(arg1)].field_0:
            if idx >= stor7[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 7)
            _37 = mem[64]
            mem[64] = mem[64] + 64
            mem[_37] = stor7[address(arg1)][idx].field_0
            mem[0] = stor7[address(arg1)][idx].field_0
            mem[32] = 8
            mem[_37 + 32] = tokenOf[stor7[address(arg1)][idx].field_0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _29 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _29:
            _49 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_49 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _28 + (64 * _29) + -mem[64] + 64
    mem[64] = (32 * stor7[address(arg1)].field_0) + 192
    mem[(32 * stor7[address(arg1)].field_0) + 128] = 0
    mem[(32 * stor7[address(arg1)].field_0) + 160] = 0
    mem[128] = (32 * stor7[address(arg1)].field_0) + 128
    s = 128
    idx = stor7[address(arg1)].field_0
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor7[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor7[address(arg1)].field_0) + 160] = 0
        mem[s + 32] = (32 * stor7[address(arg1)].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor7[address(arg1)].field_0:
        if idx >= stor7[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        _61 = mem[64]
        mem[64] = mem[64] + 64
        mem[_61] = stor7[address(arg1)][idx].field_0
        mem[0] = stor7[address(arg1)][idx].field_0
        mem[32] = 8
        mem[_61 + 32] = tokenOf[stor7[address(arg1)][idx].field_0]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _61
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _54 = mem[64]
    mem[mem[64]] = 32
    _55 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _55:
        _64 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_64 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _54 + (64 * _55) + -mem[64] + 64
}

function getPools(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < stor3.length:
        if arg2 < arg1:
            revert with 0, 17
        if 1 > !(arg2 - arg1):
            revert with 0, 17
        if arg2 + -arg1 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg2 + -arg1 + 1
        mem[64] = (32 * arg2 + -arg1 + 1) + 128
        if not arg2 + -arg1 + 1:
            idx = arg1
            s = 0
            while idx <= arg2:
                _52 = mem[64]
                mem[64] = mem[64] + 64
                mem[_52] = 0
                mem[_52 + 32] = 0
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                _73 = mem[64]
                mem[64] = mem[64] + 64
                mem[_73] = stor3[idx].field_0
                mem[0] = stor3[idx].field_0
                mem[32] = 8
                mem[_73 + 32] = tokenOf[stor3[idx].field_0]
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _73
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _51 = mem[64]
            mem[mem[64]] = 32
            _55 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _55:
                _95 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_95 + 44 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _51 + (64 * _55) + -mem[64] + 64
        mem[64] = (32 * arg2 + -arg1 + 1) + 192
        mem[(32 * arg2 + -arg1 + 1) + 128] = 0
        mem[(32 * arg2 + -arg1 + 1) + 160] = 0
        mem[128] = (32 * arg2 + -arg1 + 1) + 128
        s = 128
        idx = arg2 + -arg1 + 1
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2 + -arg1 + 1) + 128] = 0
            mem[(32 * arg2 + -arg1 + 1) + 160] = 0
            mem[s + 32] = (32 * arg2 + -arg1 + 1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg1
        s = 0
        while idx <= arg2:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 0
            mem[_103 + 32] = 0
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            _119 = mem[64]
            mem[64] = mem[64] + 64
            mem[_119] = stor3[idx].field_0
            mem[0] = stor3[idx].field_0
            mem[32] = 8
            mem[_119 + 32] = tokenOf[stor3[idx].field_0]
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _119
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _102 = mem[64]
        mem[mem[64]] = 32
        _107 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _107:
            _125 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_125 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _102 + (64 * _107) + -mem[64] + 64
    if stor3.length < 1:
        revert with 0, 17
    if stor3.length - 1 < arg1:
        revert with 0, 17
    if 1 > !(stor3.length + -arg1 - 1):
        revert with 0, 17
    if stor3.length - arg1 > test266151307():
        revert with 0, 65
    mem[96] = stor3.length - arg1
    mem[64] = (32 * stor3.length - arg1) + 128
    if not stor3.length - arg1:
        idx = arg1
        s = 0
        while idx <= stor3.length - 1:
            _54 = mem[64]
            mem[64] = mem[64] + 64
            mem[_54] = 0
            mem[_54 + 32] = 0
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            _75 = mem[64]
            mem[64] = mem[64] + 64
            mem[_75] = stor3[idx].field_0
            mem[0] = stor3[idx].field_0
            mem[32] = 8
            mem[_75 + 32] = tokenOf[stor3[idx].field_0]
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _75
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _53 = mem[64]
        mem[mem[64]] = 32
        _56 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _56:
            _98 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_98 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _53 + (64 * _56) + -mem[64] + 64
    mem[64] = (32 * stor3.length - arg1) + 192
    mem[(32 * stor3.length - arg1) + 128] = 0
    mem[(32 * stor3.length - arg1) + 160] = 0
    mem[128] = (32 * stor3.length - arg1) + 128
    s = 128
    idx = stor3.length - arg1
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor3.length - arg1) + 128] = 0
        mem[(32 * stor3.length - arg1) + 160] = 0
        mem[s + 32] = (32 * stor3.length - arg1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg1
    s = 0
    while idx <= stor3.length - 1:
        _106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_106] = 0
        mem[_106 + 32] = 0
        if idx >= stor3.length:
            revert with 0, 50
        mem[0] = 3
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = stor3[idx].field_0
        mem[0] = stor3[idx].field_0
        mem[32] = 8
        mem[_121 + 32] = tokenOf[stor3[idx].field_0]
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _121
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _105 = mem[64]
    mem[mem[64]] = 32
    _108 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _108:
        _128 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_128 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _105 + (64 * _108) + -mem[64] + 64
}

function sub_31254dd5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 < stor3.length:
        idx = arg2
        s = 0
        while idx <= arg3:
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor3[idx].field_0)
            staticcall stor3[idx].field_0.isEligible(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_56] == bool(mem[_56])
            if not mem[_56]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _41 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            idx = arg2
            s = 0
            while idx <= arg3:
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(stor3[idx].field_0)
                staticcall stor3[idx].field_0.isEligible(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_137] == bool(mem[_137])
                if not mem[_137]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _157 = mem[64]
                mem[64] = mem[64] + 64
                mem[_157] = stor3[idx].field_0
                mem[0] = stor3[idx].field_0
                mem[32] = 8
                mem[_157 + 32] = tokenOf[stor3[idx].field_0]
                if s >= mem[_41]:
                    revert with 0, 50
                mem[(32 * s) + _41 + 32] = _157
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _113 = mem[64]
            mem[mem[64]] = 32
            _115 = mem[_41]
            mem[mem[64] + 32] = mem[_41]
            idx = 0
            s = _41 + 32
            t = mem[64] + 64
            while idx < _115:
                _169 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_169 + 44 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _113 + (64 * _115) + -mem[64] + 64
        mem[64] = _41 + (32 * s) + 96
        mem[_41 + (32 * s) + 32] = 0
        mem[_41 + (32 * s) + 64] = 0
        mem[_41 + 32] = _41 + (32 * s) + 32
        t = _41 + 32
        idx = s
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_41 + (32 * s) + 32] = 0
            mem[_41 + (32 * s) + 64] = 0
            mem[t + 32] = _41 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = arg2
        s = 0
        while idx <= arg3:
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor3[idx].field_0)
            staticcall stor3[idx].field_0.isEligible(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_195] == bool(mem[_195])
            if not mem[_195]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _199 = mem[64]
            mem[64] = mem[64] + 64
            mem[_199] = stor3[idx].field_0
            mem[0] = stor3[idx].field_0
            mem[32] = 8
            mem[_199 + 32] = tokenOf[stor3[idx].field_0]
            if s >= mem[_41]:
                revert with 0, 50
            mem[(32 * s) + _41 + 32] = _199
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _176 = mem[64]
        mem[mem[64]] = 32
        _179 = mem[_41]
        mem[mem[64] + 32] = mem[_41]
        idx = 0
        s = _41 + 32
        t = mem[64] + 64
        while idx < _179:
            _205 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_205 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _176 + (64 * _179) + -mem[64] + 64
    if stor3.length < 1:
        revert with 0, 17
    idx = arg2
    s = 0
    while idx <= stor3.length - 1:
        if idx >= stor3.length:
            revert with 0, 50
        mem[0] = 3
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor3[idx].field_0)
        staticcall stor3[idx].field_0.isEligible(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_58] == bool(mem[_58])
        if not mem[_58]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _42 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = arg2
        s = 0
        while idx <= stor3.length - 1:
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor3[idx].field_0)
            staticcall stor3[idx].field_0.isEligible(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _141 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_141] == bool(mem[_141])
            if not mem[_141]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = stor3[idx].field_0
            mem[0] = stor3[idx].field_0
            mem[32] = 8
            mem[_160 + 32] = tokenOf[stor3[idx].field_0]
            if s >= mem[_42]:
                revert with 0, 50
            mem[(32 * s) + _42 + 32] = _160
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _114 = mem[64]
        mem[mem[64]] = 32
        _116 = mem[_42]
        mem[mem[64] + 32] = mem[_42]
        idx = 0
        s = _42 + 32
        t = mem[64] + 64
        while idx < _116:
            _172 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_172 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _114 + (64 * _116) + -mem[64] + 64
    mem[64] = _42 + (32 * s) + 96
    mem[_42 + (32 * s) + 32] = 0
    mem[_42 + (32 * s) + 64] = 0
    mem[_42 + 32] = _42 + (32 * s) + 32
    t = _42 + 32
    idx = s
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_42 + (32 * s) + 32] = 0
        mem[_42 + (32 * s) + 64] = 0
        mem[t + 32] = _42 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = arg2
    s = 0
    while idx <= stor3.length - 1:
        if idx >= stor3.length:
            revert with 0, 50
        mem[0] = 3
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor3[idx].field_0)
        staticcall stor3[idx].field_0.isEligible(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_196] == bool(mem[_196])
        if not mem[_196]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        _202 = mem[64]
        mem[64] = mem[64] + 64
        mem[_202] = stor3[idx].field_0
        mem[0] = stor3[idx].field_0
        mem[32] = 8
        mem[_202 + 32] = tokenOf[stor3[idx].field_0]
        if s >= mem[_42]:
            revert with 0, 50
        mem[(32 * s) + _42 + 32] = _202
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _178 = mem[64]
    mem[mem[64]] = 32
    _180 = mem[_42]
    mem[mem[64] + 32] = mem[_42]
    idx = 0
    s = _42 + 32
    t = mem[64] + 64
    while idx < _180:
        _208 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_208 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _178 + (64 * _180) + -mem[64] + 64
}



}
