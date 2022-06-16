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
mapping of struct stor14;
mapping of uint8 sub_ee7bd58b;
address sub_8555967eAddress;
address stor21;
address upgradingAddress;

function upgrading() payable {
    return upgradingAddress
}

function sub_8555967e(?) payable {
    return sub_8555967eAddress
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

function sub_aaaa19c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    upgradingAddress = address(arg1)
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
        if sub_ee7bd58b[arg2 << 248] <= 0:
            return uint8(uint16(arg1) % 10)
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
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
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
        mem[32] = 15
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
        mem[32] = sha3(arg1 << 248, 14)
        if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0):
            if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0) == uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1) < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))
            if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]:
                stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = 0
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)))
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)))
                t = _83 + 32
                while _83 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256):
                if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    t = _84 + 32
                    while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    t = _84 + 32
                    while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        else:
            if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0) == stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))
            if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]:
                stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = 0
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)))
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256):
                    if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1
                    if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                        stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                        s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                        while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                        s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                        t = _84 + 32
                        while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                        while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                t = _84 + 32
                while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * s) + 36)] + cd[(arg3 + cd[(arg3 + (32 * s) + 36)] + 68)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) == -1:
                    revert with 'NH{q', 17
                s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) + 1
                continue 
            stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_0 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)]) + 1
            s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)))
            t = _83 + 32
            while _83 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 32 > t:
                stor[s] = mem[t]
                s = s + 1
                t = t + 32
                continue 
            s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 36)] + 31) >> 5)
            while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_1 % 128 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256):
                if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    t = _84 + 32
                    while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                    while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256) == stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1
                if not cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]:
                    stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = 0
                    s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                    while sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) == -1:
                        revert with 'NH{q', 17
                    s = sha3(sha3(cd[((32 * s) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * s) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) + 1
                    continue 
                stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_256 = (2 * cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)]) + 1
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1)
                t = _84 + 32
                while _84 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 68)] + 36)] + 31) >> 5)
                while sha3(sha3(cd[((32 * idx) + arg2 + 36)] << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][cd[((32 * idx) + arg2 + 36)] << 248].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d64fb764(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg2
    while uint8(idx) < uint8(arg3):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1 << 248, 14)
        if bool(stor14[arg1 << 248][idx << 248].field_0):
            if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor14[arg1 << 248][idx << 248].field_1):
                mem[mem[64]] = 0x9bf2ee3500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint8(arg1)
                mem[mem[64] + 36] = uint8(idx)
                staticcall stor21.0x9bf2ee35 with:
                        gas gas_remaining wei
                       args arg1 << 248, uint8(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _576 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _579 = mem[_576]
                require mem[_576] <= test266151307()
                require _576 + mem[_576] + 31 < _576 + return_data.size
                _581 = mem[_576 + mem[_576]]
                if mem[_576 + mem[_576]] > test266151307():
                    revert with 'NH{q', 65
                if _576 + ceil32(return_data.size) + ceil32(ceil32(mem[_576 + mem[_576]])) + 1 > test266151307() or ceil32(ceil32(mem[_576 + mem[_576]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _576 + ceil32(return_data.size) + ceil32(ceil32(mem[_576 + mem[_576]])) + 1
                mem[_576 + ceil32(return_data.size)] = _581
                require _579 + _581 + 32 <= return_data.size
                s = 0
                while s < _581:
                    mem[_576 + ceil32(return_data.size) + s + 32] = mem[_576 + _579 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_581) <= _581:
                    _1141 = mem[_576 + 32]
                    require mem[_576 + 32] <= test266151307()
                    require _576 + mem[_576 + 32] + 31 < _576 + return_data.size
                    _1145 = mem[_576 + mem[_576 + 32]]
                    if mem[_576 + mem[_576 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    _1149 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_576 + mem[_576 + 32]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_576 + mem[_576 + 32]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_576 + mem[_576 + 32]])) + 1
                    mem[_1149] = _1145
                    require _1141 + _1145 + 32 <= return_data.size
                    s = 0
                    while s < _1145:
                        mem[_1149 + s + 32] = mem[_576 + _1141 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1145) <= _1145:
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1145:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2251 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2251:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2251) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2251 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2251 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2251:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2251) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2251 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2251 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1145) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1149 + 32
                                while _1149 + _1145 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1145 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2793 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2793:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2793) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2793 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2793 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2793:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2793) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2793 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2793 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1145:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2254 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2254:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2254) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2254 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2254 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2254:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2254) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2254 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2254 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1145) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1149 + 32
                                while _1149 + _1145 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1145 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2794 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2794:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2794) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2794 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2794 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2794:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2794) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2794 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2794 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        mem[_1149 + _1145 + 32] = 0
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1145:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2257 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2257:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2257) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2257 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2257 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2257:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2257) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2257 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2257 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1145) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1149 + 32
                                while _1149 + _1145 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1145 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2795 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2795:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2795) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2795 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2795 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2795:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2795) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2795 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2795 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1145:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2260 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2260:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2260) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2260 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2260 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2260:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2260) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2260 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2260 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1145) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1149 + 32
                                while _1149 + _1145 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1145 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2796 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2796:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2796) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2796 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2796 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2796:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2796) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2796 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2796 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                else:
                    mem[_576 + ceil32(return_data.size) + _581 + 32] = 0
                    _1143 = mem[_576 + 32]
                    require mem[_576 + 32] <= test266151307()
                    require _576 + mem[_576 + 32] + 31 < _576 + return_data.size
                    _1147 = mem[_576 + mem[_576 + 32]]
                    if mem[_576 + mem[_576 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    _1151 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_576 + mem[_576 + 32]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_576 + mem[_576 + 32]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_576 + mem[_576 + 32]])) + 1
                    mem[_1151] = _1147
                    require _1143 + _1147 + 32 <= return_data.size
                    s = 0
                    while s < _1147:
                        mem[_1151 + s + 32] = mem[_576 + _1143 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1147) <= _1147:
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1147:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2263 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2263:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2263) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2263 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2263 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2263:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2263) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2263 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2263 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1147) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1151 + 32
                                while _1151 + _1147 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1147 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2797 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2797:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2797) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2797 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2797 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2797:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2797) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2797 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2797 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1147:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2266 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2266:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2266) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2266 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2266 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2266:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2266) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2266 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2266 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1147) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1151 + 32
                                while _1151 + _1147 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1147 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2798 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2798:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2798) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2798 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2798 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2798:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2798) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2798 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2798 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        mem[_1151 + _1147 + 32] = 0
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1147:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2269 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2269:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2269) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2269 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2269 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2269:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2269) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2269 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2269 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1147) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1151 + 32
                                while _1151 + _1147 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1147 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2799 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2799:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2799) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2799 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2799 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2799:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2799) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2799 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2799 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1147:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2272 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2272:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2272) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2272 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2272 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2272:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2272) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2272 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2272 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1147) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1151 + 32
                                while _1151 + _1147 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1147 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2800 = mem[_576 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2800:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2800) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2800 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2800 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2800:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2800) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _576 + ceil32(return_data.size) + 32
                                        while _576 + ceil32(return_data.size) + _2800 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2800 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
        else:
            if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor14[arg1 << 248][idx << 248].field_1 % 128:
                mem[mem[64]] = 0x9bf2ee3500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint8(arg1)
                mem[mem[64] + 36] = uint8(idx)
                staticcall stor21.0x9bf2ee35 with:
                        gas gas_remaining wei
                       args arg1 << 248, uint8(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _578 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _580 = mem[_578]
                require mem[_578] <= test266151307()
                require _578 + mem[_578] + 31 < _578 + return_data.size
                _582 = mem[_578 + mem[_578]]
                if mem[_578 + mem[_578]] > test266151307():
                    revert with 'NH{q', 65
                if _578 + ceil32(return_data.size) + ceil32(ceil32(mem[_578 + mem[_578]])) + 1 > test266151307() or ceil32(ceil32(mem[_578 + mem[_578]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _578 + ceil32(return_data.size) + ceil32(ceil32(mem[_578 + mem[_578]])) + 1
                mem[_578 + ceil32(return_data.size)] = _582
                require _580 + _582 + 32 <= return_data.size
                s = 0
                while s < _582:
                    mem[_578 + ceil32(return_data.size) + s + 32] = mem[_578 + _580 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_582) <= _582:
                    _1142 = mem[_578 + 32]
                    require mem[_578 + 32] <= test266151307()
                    require _578 + mem[_578 + 32] + 31 < _578 + return_data.size
                    _1146 = mem[_578 + mem[_578 + 32]]
                    if mem[_578 + mem[_578 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    _1150 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_578 + mem[_578 + 32]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_578 + mem[_578 + 32]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_578 + mem[_578 + 32]])) + 1
                    mem[_1150] = _1146
                    require _1142 + _1146 + 32 <= return_data.size
                    s = 0
                    while s < _1146:
                        mem[_1150 + s + 32] = mem[_578 + _1142 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1146) <= _1146:
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1146:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2275 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2275:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2275) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2275 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2275 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2275:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2275) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2275 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2275 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1146) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1150 + 32
                                while _1150 + _1146 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1146 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2801 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2801:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2801) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2801 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2801 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2801:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2801) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2801 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2801 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1146:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2278 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2278:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2278) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2278 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2278 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2278:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2278) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2278 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2278 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1146) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1150 + 32
                                while _1150 + _1146 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1146 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2802 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2802:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2802) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2802 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2802 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2802:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2802) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2802 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2802 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        mem[_1150 + _1146 + 32] = 0
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1146:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2281 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2281:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2281) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2281 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2281 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2281:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2281) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2281 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2281 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1146) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1150 + 32
                                while _1150 + _1146 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1146 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2803 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2803:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2803) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2803 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2803 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2803:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2803) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2803 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2803 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1146:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2284 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2284:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2284) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2284 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2284 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2284:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2284) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2284 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2284 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1146) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1150 + 32
                                while _1150 + _1146 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1146 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2804 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2804:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2804) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2804 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2804 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2804:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2804) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2804 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2804 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                else:
                    mem[_578 + ceil32(return_data.size) + _582 + 32] = 0
                    _1144 = mem[_578 + 32]
                    require mem[_578 + 32] <= test266151307()
                    require _578 + mem[_578 + 32] + 31 < _578 + return_data.size
                    _1148 = mem[_578 + mem[_578 + 32]]
                    if mem[_578 + mem[_578 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    _1152 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_578 + mem[_578 + 32]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_578 + mem[_578 + 32]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_578 + mem[_578 + 32]])) + 1
                    mem[_1152] = _1148
                    require _1144 + _1148 + 32 <= return_data.size
                    s = 0
                    while s < _1148:
                        mem[_1152 + s + 32] = mem[_578 + _1144 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1148) <= _1148:
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1148:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2287 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2287:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2287) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2287 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2287 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2287:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2287) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2287 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2287 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1148) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1152 + 32
                                while _1152 + _1148 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1148 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2805 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2805:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2805) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2805 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2805 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2805:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2805) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2805 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2805 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1148:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2290 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2290:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2290) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2290 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2290 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2290:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2290) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2290 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2290 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1148) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1152 + 32
                                while _1152 + _1148 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1148 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2806 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2806:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2806) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2806 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2806 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2806:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2806) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2806 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2806 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        mem[_1152 + _1148 + 32] = 0
                        mem[32] = sha3(arg1 << 248, 14)
                        if bool(stor14[arg1 << 248][idx << 248].field_256):
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == uint255(stor14[arg1 << 248][idx << 248].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1148:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2293 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2293:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2293) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2293 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2293 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2293:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2293) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2293 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2293 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1148) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1152 + 32
                                while _1152 + _1148 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1148 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (uint255(stor14[arg1 << 248][idx << 248].field_257) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2807 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2807:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2807) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2807 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2807 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2807:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2807) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2807 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2807 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[arg1 << 248][idx << 248].field_256) == stor14[arg1 << 248][idx << 248].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14)) + 1
                            if not _1148:
                                stor14[arg1 << 248][idx << 248].field_256 = 0
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2296 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2296:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2296) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2296 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2296 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2296:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2296) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2296 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2296 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                stor14[arg1 << 248][idx << 248].field_256 = (2 * _1148) + 1
                                t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1)
                                s = _1152 + 32
                                while _1152 + _1148 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (Mask(251, 0, _1148 + 31) >> 5)
                                while sha3(sha3(idx << 248, sha3(arg1 << 248, 14)) + 1) + (stor14[arg1 << 248][idx << 248].field_257 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2808 = mem[_578 + ceil32(return_data.size)]
                                if bool(stor14[arg1 << 248][idx << 248].field_0):
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == uint255(stor14[arg1 << 248][idx << 248].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2808:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2808) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2808 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2808 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (uint255(stor14[arg1 << 248][idx << 248].field_1) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor14[arg1 << 248][idx << 248].field_0) == stor14[arg1 << 248][idx << 248].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(idx << 248, sha3(arg1 << 248, 14))
                                    if not _2808:
                                        stor14[arg1 << 248][idx << 248].field_0 = 0
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[arg1 << 248][idx << 248].field_0 = (2 * _2808) + 1
                                        t = sha3(sha3(idx << 248, sha3(arg1 << 248, 14)))
                                        s = _578 + ceil32(return_data.size) + 32
                                        while _578 + ceil32(return_data.size) + _2808 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (Mask(251, 0, _2808 + 31) >> 5)
                                        while sha3(sha3(idx << 248, sha3(arg1 << 248, 14))) + (stor14[arg1 << 248][idx << 248].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}



}
