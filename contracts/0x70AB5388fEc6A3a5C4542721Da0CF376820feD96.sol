contract main {




// =====================  Runtime code  =====================


#
#  - sub_3bba7cd3(?)
#  - sub_b29f07b5(?)
#  - sub_b956a273(?)
#  - sub_c1dbfd93(?)
#
address owner;
uint256 stor1;
uint8 paused;
address sub_dac55cd4Address; offset 8
address sub_93066351Address;
address sub_f3211b5eAddress;
address sub_722180c0Address;
address sub_809deb63Address;
array of struct sub_9f20ae83;
array of struct sub_9378380d;
mapping of uint16 sub_fe267239;
uint256 sub_247943bf;
mapping of uint8 stor11;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of struct stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432783;

function sub_247943bf(?) payable {
    return sub_247943bf
}

function paused() payable {
    return bool(paused)
}

function sub_722180c0(?) payable {
    return sub_722180c0Address
}

function sub_809deb63(?) payable {
    return sub_809deb63Address
}

function owner() payable {
    return owner
}

function sub_93066351(?) payable {
    return sub_93066351Address
}

function sub_9378380d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 < sub_9378380d[arg1].field_0
    return sub_9378380d[arg1][arg2].field_0, sub_9378380d[arg1][arg2].field_256
}

function sub_9f20ae83(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9f20ae83.length
    return sub_9f20ae83[arg1].field_0, 
           bool(sub_9f20ae83[arg1].field_16),
           sub_9f20ae83[arg1].field_0,
           sub_9f20ae83[arg1].field_0,
           sub_9f20ae83[arg1].field_256,
           sub_9f20ae83[arg1].field_512,
           sub_9f20ae83[arg1].field_768,
           sub_9f20ae83[arg1].field_1024,
           sub_9f20ae83[arg1].field_1024,
           sub_9f20ae83[arg1].field_1280,
           sub_9f20ae83[arg1].field_1536,
           sub_9f20ae83[arg1].field_1792
}

function sub_b4b32749(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    return sub_9378380d[arg1 << 240].field_0
}

function sub_dac55cd4(?) payable {
    return sub_dac55cd4Address
}

function sub_f3211b5e(?) payable {
    return sub_f3211b5eAddress
}

function sub_fe267239(?) payable {
    require calldata.size - 4 >= 32
    return sub_fe267239[arg1]
}

function _fallback() payable {
    revert
}

function sub_ce43f74b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    return (sub_fe267239[arg2] == uint16(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
}

function sub_cdec7610(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) >= sub_9f20ae83.length:
        revert with 0, 50
    sub_9f20ae83[8 * uint16(arg1)].field_16 = Mask(240, 0, bool(arg2))
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

function setContracts(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_809deb63Address = arg3
    sub_f3211b5eAddress = arg4
    sub_dac55cd4Address = arg1
    sub_722180c0Address = arg5
    sub_93066351Address = arg2
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_dac55cd4Address:
        revert with 0, 'Raid: Game contract not set'
    if not sub_f3211b5eAddress:
        revert with 0, 'Raid: Blood contract not set'
    if not sub_809deb63Address:
        revert with 0, 'Raid: Nft contract not set'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
}

function sub_30db3b32(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == bool(arg1)
    require arg2 == uint16(arg2)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > !arg3:
        revert with 0, 17
    sub_9f20ae83.length++
    sub_9f20ae83[sub_9f20ae83.length].field_0 = uint16(sub_9f20ae83.length)
    sub_9f20ae83[sub_9f20ae83.length].field_16 = uint8(bool(arg1))
    sub_9f20ae83[sub_9f20ae83.length].field_24 = 0
    sub_9f20ae83[sub_9f20ae83.length].field_40 = uint16(arg2)
    sub_9f20ae83[sub_9f20ae83.length].field_56 = Mask(200, 40, bool(arg1)) >> 40
    sub_9f20ae83[sub_9f20ae83.length].field_256 = 0
    storA66C[stor7.length] = block.timestamp + arg3
    storA66C[stor7.length] = arg3
    storA66C[stor7.length] = arg4
    storA66C[stor7.length].field_0 = uint16(arg5)
    storA66C[stor7.length].field_16 = uint16(arg6)
    storA66C[stor7.length] = arg7
    storA66C[stor7.length] = arg8
    storA66C[stor7.length] = arg9
    emit 0x75312689: uint16(sub_9f20ae83.length)
}

function sub_8ce79cb3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint16(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Raid: Only EOA'
    idx = 0
    while uint16(idx) < ('cd', 36).length:
        if uint16(idx) >= mem[96]:
            revert with 0, 50
        _72 = mem[(32 * uint16(idx)) + 128]
        mem[mem[64] + 4] = mem[(32 * uint16(idx)) + 128]
        staticcall sub_dac55cd4Address.0xfc837cd0 with:
                gas gas_remaining wei
               args _72
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == mem[_75 + 12 len 20]
        if mem[_75 + 12 len 20] != msg.sender:
            revert with 0, 'Raid: You don't own this token'
        if uint16(idx) >= mem[96]:
            revert with 0, 50
        _79 = mem[(32 * uint16(idx)) + 128]
        if uint16(cd[4]):
            if mem[(32 * uint16(idx)) + 128]:
                mem[0] = uint16(cd[4])
                mem[32] = 8
                _82 = mem[64]
                mem[64] = mem[64] + (32 * sub_9378380d[cd[4] << 240].field_0) + 32
                mem[_82] = sub_9378380d[cd[4] << 240].field_0
                t = _82 + 32
                s = 0
                while s < sub_9378380d[cd[4] << 240].field_0:
                    mem[0] = sha3(cd[4] << 240, 8)
                    _99 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_99] = sub_9378380d[cd[4] << 240][s].field_0
                    mem[_99 + 32] = sub_9378380d[cd[4] << 240][s].field_256
                    mem[t] = _99
                    t = t + 32
                    s = s + 1
                    continue 
                _113 = mem[_82]
                s = 0
                while s < _113:
                    if s >= mem[_82]:
                        revert with 0, 50
                    if mem[mem[(32 * s) + _82 + 32]] != _79:
                        if s == -1:
                            revert with 0, 17
                        _113 = mem[_82]
                        s = s + 1
                        continue 
                    if s >= sub_9378380d[cd[4] << 240].field_0:
                        revert with 0, 50
                    sub_9378380d[cd[4] << 240][s].field_0 = 0
                    sub_9378380d[cd[4] << 240][s].field_256 = 0
                    if sub_9378380d[cd[4] << 240].field_0 < 1:
                        revert with 0, 17
                    if sub_9378380d[cd[4] << 240].field_0 - 1 >= sub_9378380d[cd[4] << 240].field_0:
                        revert with 0, 50
                    if s >= sub_9378380d[cd[4] << 240].field_0:
                        revert with 0, 50
                    sub_9378380d[cd[4] << 240][s].field_0 = sub_9378380d[cd[4] << 240][sub_9378380d[cd[4] << 240].field_0 - 1].field_0
                    sub_9378380d[cd[4] << 240][s].field_256 = sub_9378380d[cd[4] << 240][sub_9378380d[cd[4] << 240].field_0 - 1].field_256
                    if not sub_9378380d[cd[4] << 240].field_0:
                        revert with 0, 49
                    sub_9378380d[cd[4] << 240][sub_9378380d[cd[4] << 240].field_0 - 1].field_0 = 0
                    sub_9378380d[cd[4] << 240][sub_9378380d[cd[4] << 240].field_0 - 1].field_256 = 0
                    sub_9378380d[cd[4] << 240].field_0--
                    mem[0] = _79
                    mem[32] = 9
                    sub_fe267239[_79] = 0
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    _113 = mem[_82]
                    idx = uint16(idx) + 1
                    continue 
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
    stor1 = 1
}

function sub_5d2170d1(?) payable {
    idx = 0
    s = 0
    while uint16(idx) < sub_9f20ae83.length:
        mem[0] = 7
        if not sub_9f20ae83[8 * uint16(idx)].field_16:
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = s
            continue 
        if uint16(s) == 65535:
            revert with 0, 17
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        s = uint16(s) + 1
        continue 
    if uint16(s) > test266151307():
        revert with 0, 65
    mem[96] = uint16(s)
    mem[64] = (32 * uint16(s)) + 128
    if not uint16(s):
        idx = 0
        s = 0
        while uint16(idx) < sub_9f20ae83.length:
            mem[0] = 7
            if not sub_9f20ae83[8 * uint16(idx)].field_16:
                if uint16(idx) == 65535:
                    revert with 0, 17
                idx = uint16(idx) + 1
                s = s
                continue 
            if uint16(idx) >= sub_9f20ae83.length:
                revert with 0, 50
            mem[0] = 7
            _71 = mem[64]
            mem[64] = mem[64] + 384
            mem[_71] = sub_9f20ae83[8 * uint16(idx)].field_0
            mem[_71 + 32] = bool(sub_9f20ae83[8 * uint16(idx)].field_16)
            mem[_71 + 64] = sub_9f20ae83[8 * uint16(idx)].field_24
            mem[_71 + 96] = sub_9f20ae83[8 * uint16(idx)].field_40
            mem[_71 + 128] = sub_9f20ae83[8 * uint16(idx)].field_256
            mem[_71 + 160] = sub_9f20ae83[8 * uint16(idx)].field_512
            mem[_71 + 192] = sub_9f20ae83[8 * uint16(idx)].field_768
            mem[_71 + 224] = sub_9f20ae83[8 * uint16(idx)].field_1024
            mem[_71 + 256] = sub_9f20ae83[8 * uint16(idx)].field_1040
            mem[_71 + 288] = sub_9f20ae83[8 * uint16(idx)].field_1280
            mem[_71 + 320] = sub_9f20ae83[8 * uint16(idx)].field_1536
            mem[_71 + 352] = sub_9f20ae83[8 * uint16(idx)].field_1792
            if uint16(s) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint16(s)) + 128] = _71
            if uint16(s) == 65535:
                revert with 0, 17
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = uint16(s) + 1
            continue 
        _67 = mem[64]
        mem[mem[64]] = 32
        _69 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _69:
            _107 = mem[s]
            mem[t] = mem[mem[s] + 30 len 2]
            mem[t + 32] = bool(mem[_107 + 32])
            mem[t + 64] = mem[_107 + 94 len 2]
            mem[t + 96] = mem[_107 + 126 len 2]
            mem[t + 128] = mem[_107 + 128]
            mem[t + 160] = mem[_107 + 160]
            mem[t + 192] = mem[_107 + 192]
            mem[t + 224] = mem[_107 + 254 len 2]
            mem[t + 256] = mem[_107 + 286 len 2]
            mem[t + 288] = mem[_107 + 288]
            mem[t + 320] = mem[_107 + 320]
            mem[t + 352] = mem[_107 + 352]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        return memory
          from mem[64]
           len _67 + (384 * _69) + -mem[64] + 64
    mem[64] = (32 * uint16(s)) + 512
    mem[(32 * uint16(s)) + 128] = 0
    mem[(32 * uint16(s)) + 160] = 0
    mem[(32 * uint16(s)) + 192] = 0
    mem[(32 * uint16(s)) + 224] = 0
    mem[(32 * uint16(s)) + 256] = 0
    mem[(32 * uint16(s)) + 288] = 0
    mem[(32 * uint16(s)) + 320] = 0
    mem[(32 * uint16(s)) + 352] = 0
    mem[(32 * uint16(s)) + 384] = 0
    mem[(32 * uint16(s)) + 416] = 0
    mem[(32 * uint16(s)) + 448] = 0
    mem[(32 * uint16(s)) + 480] = 0
    mem[128] = (32 * uint16(s)) + 128
    t = 128
    idx = uint16(s)
    while idx - 1:
        mem[64] = mem[64] + 384
        mem[(32 * uint16(s)) + 128] = 0
        mem[(32 * uint16(s)) + 160] = 0
        mem[(32 * uint16(s)) + 192] = 0
        mem[(32 * uint16(s)) + 224] = 0
        mem[(32 * uint16(s)) + 256] = 0
        mem[(32 * uint16(s)) + 288] = 0
        mem[(32 * uint16(s)) + 320] = 0
        mem[(32 * uint16(s)) + 352] = 0
        mem[(32 * uint16(s)) + 384] = 0
        mem[(32 * uint16(s)) + 416] = 0
        mem[(32 * uint16(s)) + 448] = 0
        mem[(32 * uint16(s)) + 480] = 0
        mem[t + 32] = (32 * uint16(s)) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while uint16(idx) < sub_9f20ae83.length:
        mem[0] = 7
        if not sub_9f20ae83[8 * uint16(idx)].field_16:
            if uint16(idx) == 65535:
                revert with 0, 17
            idx = uint16(idx) + 1
            s = s
            continue 
        if uint16(idx) >= sub_9f20ae83.length:
            revert with 0, 50
        mem[0] = 7
        _125 = mem[64]
        mem[64] = mem[64] + 384
        mem[_125] = sub_9f20ae83[8 * uint16(idx)].field_0
        mem[_125 + 32] = bool(sub_9f20ae83[8 * uint16(idx)].field_16)
        mem[_125 + 64] = sub_9f20ae83[8 * uint16(idx)].field_24
        mem[_125 + 96] = sub_9f20ae83[8 * uint16(idx)].field_40
        mem[_125 + 128] = sub_9f20ae83[8 * uint16(idx)].field_256
        mem[_125 + 160] = sub_9f20ae83[8 * uint16(idx)].field_512
        mem[_125 + 192] = sub_9f20ae83[8 * uint16(idx)].field_768
        mem[_125 + 224] = sub_9f20ae83[8 * uint16(idx)].field_1024
        mem[_125 + 256] = sub_9f20ae83[8 * uint16(idx)].field_1040
        mem[_125 + 288] = sub_9f20ae83[8 * uint16(idx)].field_1280
        mem[_125 + 320] = sub_9f20ae83[8 * uint16(idx)].field_1536
        mem[_125 + 352] = sub_9f20ae83[8 * uint16(idx)].field_1792
        if uint16(s) >= mem[96]:
            revert with 0, 50
        mem[(32 * uint16(s)) + 128] = _125
        if uint16(s) == 65535:
            revert with 0, 17
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        s = uint16(s) + 1
        continue 
    _121 = mem[64]
    mem[mem[64]] = 32
    _123 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _123:
        _141 = mem[s]
        mem[t] = mem[mem[s] + 30 len 2]
        mem[t + 32] = bool(mem[_141 + 32])
        mem[t + 64] = mem[_141 + 94 len 2]
        mem[t + 96] = mem[_141 + 126 len 2]
        mem[t + 128] = mem[_141 + 128]
        mem[t + 160] = mem[_141 + 160]
        mem[t + 192] = mem[_141 + 192]
        mem[t + 224] = mem[_141 + 254 len 2]
        mem[t + 256] = mem[_141 + 286 len 2]
        mem[t + 288] = mem[_141 + 288]
        mem[t + 320] = mem[_141 + 320]
        mem[t + 352] = mem[_141 + 352]
        idx = idx + 1
        s = s + 32
        t = t + 384
        continue 
    return memory
      from mem[64]
       len _121 + (384 * _123) + -mem[64] + 64
}



}
