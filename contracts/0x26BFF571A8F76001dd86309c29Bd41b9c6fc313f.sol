contract main {




// =====================  Runtime code  =====================


#
#  - compileAttributes(uint256 arg1)
#  - drawSVG(uint256 arg1)
#  - traitData(uint8 arg1, uint8 arg2)
#  - tokenURI(uint256 arg1)
#
address owner;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
mapping of struct stor12;
mapping of uint8 sub_ee7bd58b;
address sub_1602f7b0Address;

function sub_1602f7b0(?) payable {
    return sub_1602f7b0Address
}

function owner() payable {
    return owner
}

function sub_ee7bd58b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_ee7bd58b[arg1]
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

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1602f7b0Address = arg1
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

function sub_a6b09692(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint8(arg2)
    if uint8(arg2) != stor1:
        if not sub_ee7bd58b[arg2 << 248]:
            revert with 'NH{q', 18
        return uint8(uint16(arg1) % sub_ee7bd58b[arg2 << 248])
    if uint16(uint16(arg1) % 100) > 95:
        return 0
    if uint16(uint16(arg1) % 100) > 80:
        return 1
    if uint16(uint16(arg1) % 100) <= 50:
        return 3
    return 2
}

function sub_00ecbfd1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 159 len 1]
        mem[32] = 13
        sub_ee7bd58b[mem[(32 * idx) + 159 len 1]] = mem[(32 * idx) + floor32(('cd', 4).length) + 160 len 1]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b7a5ad54(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor2.length = 0
            idx = 0
            while uint255(stor2.length.field_1) + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor2[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while uint255(stor2.length.field_1) + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 % 128 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor2[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor2.length.field_1 % 128 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor3.length = 0
            idx = 0
            while uint255(stor3.length.field_1) + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor3.length = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor3[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while uint255(stor3.length.field_1) + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor3.length = 0
            idx = 0
            while stor3.length.field_1 % 128 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor3.length = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor3[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor3.length.field_1 % 128 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function uploadTraits(uint8 arg1, uint8[] arg2, string arg3, string[] arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg3.length:
        revert with 0, 'Mismatched inputs'
    idx = 0
    while idx < arg3.length:
        _82 = mem[64]
        mem[64] = mem[64] + 64
        require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 99
        require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] < calldata.size + -arg3 + -cd[(arg3 + (32 * idx) + 36)] - 67
        require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] <= test266151307()
        require arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]) + 32
        mem[_83] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]
        mem[_83 + 32 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]]
        mem[_83 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 32] = 0
        mem[_82] = _83
        if idx >= arg3.length:
            revert with 'NH{q', 50
        require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 99
        require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] < calldata.size + -arg3 + -cd[(arg3 + (32 * idx) + 36)] - 67
        require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
        require arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 32
        mem[_84] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]
        mem[_84 + 32 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]]
        mem[_84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32] = 0
        mem[_82 + 32] = _84
        if idx >= arg2.length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + arg2 + 36)] == uint8(cd[((32 * idx) + arg2 + 36)])
        mem[32] = sha3(arg1 << 248, 12)
        if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0):
            if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0) == uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1) < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))
            if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]:
                stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = 0
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)))
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)))
                t = _83 + 32
                while _83 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256):
                if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    t = _84 + 32
                    while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    t = _84 + 32
                    while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        else:
            if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0) == stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))
            if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]:
                stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = 0
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)))
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))) + (stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256):
                    if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1
                    if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                        stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                        s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                        while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                        s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                        t = _84 + 32
                        while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                        while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                t = _84 + 32
                while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * s) + 36)] + cd[(arg3 + cd[(arg3 + (32 * s) + 36)] + 68)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) == -1:
                    revert with 'NH{q', 17
                s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) + 1
                continue 
            stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]) + 1
            s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)))
            t = _83 + 32
            while _83 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 32 > t:
                stor[s] = mem[t]
                s = s + 1
                t = t + 32
                continue 
            s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 31) >> 5)
            while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12))) + (stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1 % 128 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256):
                if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    t = _84 + 32
                    while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (uint255(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                    while sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) == -1:
                        revert with 'NH{q', 17
                    s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) + 1
                    continue 
                stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1)
                t = _84 + 32
                while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 12)) + 1) + (stor12[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
