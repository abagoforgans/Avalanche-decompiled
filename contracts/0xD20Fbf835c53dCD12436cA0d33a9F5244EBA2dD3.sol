contract main {




// =====================  Runtime code  =====================


#
#  - sub_3659f543(?)
#
function count() payable {
    return ('storage', 256, 0, 3)
}

function getOldestDrawId() payable {
    if 0 >= ('storage', 256, 0, 3):
        revert with 0, 50
    return ('storage', 32, 8, ('sha3', 3))
}

function getNewestDrawId() payable {
    if ('storage', 256, 0, 3) < 1:
        revert with 0, 17
    if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
        revert with 0, 50
    return ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))), ('sha3', 3)))
}

function manager() payable {
    return ('storage', 160, 0, 2)
}

function owner() payable {
    return ('storage', 160, 0, 0)
}

function pendingOwner() payable {
    return ('storage', 160, 0, 1)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    address(stor[0].field_0) = 0
    emit OwnershipTransferred(('storage', 160, 0, 0), 0);
}

function claimOwnership() payable {
    if ('storage', 160, 0, 1) != msg.sender:
        revert with 0, 'Ownable/caller-not-pendingOwner'
    address(stor[0].field_0) = ('storage', 160, 0, 1)
    emit OwnershipTransferred(('storage', 160, 0, 0), ('storage', 160, 0, 1));
    address(stor[1].field_0) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable/pendingOwner-not-zero-address'
    address(stor[1].field_0) = arg1
    emit OwnershipOffered(arg1);
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if ('storage', 160, 0, 2) == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable/existing-manager-address'
    address(stor[2].field_0) = arg1
    emit ManagerTransferred(('storage', 160, 0, 2), arg1);
    return 1
}

function getPrizeTierAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= ('storage', 256, 0, 3):
        revert with 0, 50
    mem[1056] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1'))))
    idx = 1056
    s = 0
    while 1568 > idx + 32:
        mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1'))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[1568] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1'))))
    idx = 0
    s = 1760
    t = 1056
    while idx < 16:
        mem[s] = mem[t + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1')))), 
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1')))),
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1')))),
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1')))),
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1')))),
           ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('param', 'arg1')))),
           mem[1760 len 512]
}

function sub_f1143765(?) payable {
    require calldata.size - 4 >= 704
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not ('storage', 256, 0, 3):
        revert with 0, 'PrizeTierHistory/history-empty'
    if ('storage', 256, 0, 3) < 1:
        revert with 0, 17
    if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
        revert with 0, 50
    idx = 320
    s = 0
    while 832 > idx + 32:
        mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    require cd[36] == uint32(cd[36])
    if uint32(cd[36]) < ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))))):
        revert with 0, 'PrizeTierHistory/invalid-draw-id'
    if ('storage', 256, 0, 3) < 1:
        revert with 0, 17
    if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
        revert with 0, 50
    require cd[4] == uint8(cd[4])
    uint8(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3)].field_0) = uint8(cd[4])
    require cd[36] == uint32(cd[36])
    uint8(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3)].field_0) = uint8(cd[4])
    uint32(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3)].field_8) = uint32(cd[36])
    require cd[68] == uint32(cd[68])
    uint32(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3)].field_40) = uint32(cd[68])
    require cd[100] == uint32(cd[100])
    uint32(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3)].field_72) = uint32(cd[100])
    require cd[132] == uint32(cd[132])
    uint32(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3)].field_104) = uint32(cd[132])
    uint256(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3) + 1].field_0) = cd[164]
    idx = 0
    s = 0
    t = 196
    while idx < 16:
        require cd[t] == uint32(cd[t])
        uint256(stor[(4 * ('storage', 256, 0, 3) - 1) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))), ('sha3', 3))) and !(test266151307() << 8 * s)
        if s + 4 <= 28:
            idx = idx + 1
            s = s + 4
            t = t + 32
            continue 
        idx = idx + 1
        s = 0
        t = t + 32
        continue 
    require cd[36] == uint32(cd[36])
    require cd[4] == uint8(cd[4])
    require cd[36] == uint32(cd[36])
    require cd[68] == uint32(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    idx = 0
    s = 196
    t = 1024
    while idx < 16:
        require cd[s] == uint32(cd[s])
        mem[t] = uint32(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xec70f602: cd[4] << 248, cd[36] << 224, cd[68] << 224, cd[100] << 224, cd[132] << 224, cd[164], mem[1024 len 512], uint32(cd[36])
    require cd[36] == uint32(cd[36])
    return uint32(cd[36])
}

function getPrizeTier(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[320 len 512] = call.data[calldata.size len 512]
    mem[288] = 320
    if arg1 <= 0:
        revert with 0, 'PrizeTierHistory/draw-id-not-zero'
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[928] = 0
    mem[960] = 0
    mem[992] = 0
    mem[1056 len 512] = call.data[calldata.size len 512]
    mem[1024] = 1056
    if not ('storage', 256, 0, 3):
        revert with 0, 'PrizeTierHistory/no-prize-tiers'
    if ('storage', 256, 0, 3) < 1:
        revert with 0, 17
    if 0 >= ('storage', 256, 0, 3):
        revert with 0, 50
    if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
        revert with 0, 50
    if arg1 < ('storage', 32, 8, ('sha3', 3)):
        revert with 0, 'PrizeTierHistory/draw-id-out-of-range'
    if arg1 >= ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))), ('sha3', 3))):
        if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[1792] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
        idx = 1792
        s = 0
        while 2304 > idx + 32:
            mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[2304] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
        idx = 0
        s = 2496
        t = 1792
        while idx < 16:
            mem[s] = mem[t + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))))), 
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))))),
               ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))))),
               mem[2496 len 512]
    if arg1 == ('storage', 32, 8, ('sha3', 3)):
        if 0 >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[1792] = ('storage', 32, 0, ('add', 2, ('sha3', 3)))
        idx = 1792
        s = 0
        while 2304 > idx + 32:
            mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3)))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[2304] = ('storage', 8, 0, ('sha3', 3))
        idx = 0
        s = 2496
        t = 1792
        while idx < 16:
            mem[s] = mem[t + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return ('storage', 8, 0, ('sha3', 3)), 
               ('storage', 32, 0, ('sha3', 3)),
               ('storage', 32, 0, ('sha3', 3)),
               ('storage', 32, 0, ('sha3', 3)),
               ('storage', 32, 0, ('sha3', 3)),
               ('storage', 256, 0, ('add', 1, ('sha3', 3))),
               mem[2496 len 512]
    mem[1568] = 0
    mem[1600] = 0
    mem[1632] = 0
    mem[1664] = 0
    mem[1696] = 0
    mem[1728] = 0
    mem[64] = 2304
    mem[1792 len 512] = call.data[calldata.size len 512]
    mem[1760] = 1792
    if ('storage', 256, 0, 3) - 1 < var54002:
        revert with 0, 17
    if var66001 > !var66002:
        revert with 0, 17
    if var70001 >= ('storage', 256, 0, 3):
        revert with 0, 50
    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 72001)), ('sha3', 3))) == arg1:
        if var72004 >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004))))
        idx = 2528
        s = 0
        while 3040 > idx + 32:
            mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004))))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004))))
        idx = 0
        s = 3232
        t = 2528
        while idx < 16:
            mem[s] = mem[t + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004)))), 
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004)))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004)))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004)))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004)))),
               ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 72004)))),
               mem[3232 len 512]
    if uint32(var74001) < arg1:
        if 1 > !var74002:
            revert with 0, 17
        if var74002 + 1 == ('storage', 256, 0, 3) - 1:
            if uint32(var74001) < arg1:
                if var74002 >= ('storage', 256, 0, 3):
                    revert with 0, 50
                mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
                idx = 2528
                s = 0
                while 3040 > idx + 32:
                    mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
                    idx = idx + 32
                    s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                    continue 
                mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
                idx = 0
                s = 3232
                t = 2528
                while idx < 16:
                    mem[s] = mem[t + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))), 
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       mem[3232 len 512]
            if var74002 < 1:
                revert with 0, 17
            if var74002 - 1 >= ('storage', 256, 0, 3):
                revert with 0, 50
            mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
            idx = 2528
            s = 0
            while 3040 > idx + 32:
                mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
            mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
            idx = 0
            s = 3232
            t = 2528
            while idx < 16:
                mem[s] = mem[t + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))), 
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   mem[3232 len 512]
        if ('storage', 256, 0, 3) - 1 < var74002 + 1:
            revert with 0, 17
        if var74002 + 1 > !(('storage', 256, 0, 3) + -var74002 - 2 / 2):
            revert with 0, 17
        if var74002 + (('storage', 256, 0, 3) + -var74002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[0] = 3
        if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))), ('sha3', 3))) != arg1:
            var74001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))), ('sha3', 3)))
            var74002 = var74002 + (('storage', 256, 0, 3) + -var74002 - 2 / 2) + 1
            var74004 = var74002 + 1
            continue 
        if var74002 + (('storage', 256, 0, 3) + -var74002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2)))))
        idx = 2528
        s = 0
        while 3040 > idx + 32:
            mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2)))))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2)))))
        idx = 0
        s = 3232
        t = 2528
        while idx < 16:
            mem[s] = mem[t + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))))), 
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))))),
               ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 74002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 74002)))), 2))))),
               mem[3232 len 512]
    if uint32(var74001) <= arg1:
        if var74004 == ('storage', 256, 0, 3) - 1:
            if uint32(var74001) < arg1:
                if var74002 >= ('storage', 256, 0, 3):
                    revert with 0, 50
                mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
                idx = 2528
                s = 0
                while 3040 > idx + 32:
                    mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
                    idx = idx + 32
                    s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                    continue 
                mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
                idx = 0
                s = 3232
                t = 2528
                while idx < 16:
                    mem[s] = mem[t + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))), 
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                       mem[3232 len 512]
            if var74002 < 1:
                revert with 0, 17
            if var74002 - 1 >= ('storage', 256, 0, 3):
                revert with 0, 50
            mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
            idx = 2528
            s = 0
            while 3040 > idx + 32:
                mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
            mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
            idx = 0
            s = 3232
            t = 2528
            while idx < 16:
                mem[s] = mem[t + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))), 
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
                   mem[3232 len 512]
        if ('storage', 256, 0, 3) - 1 < var74004:
            revert with 0, 17
        if var74004 > !(('storage', 256, 0, 3) + -var74004 - 1 / 2):
            revert with 0, 17
        if var74004 + (('storage', 256, 0, 3) + -var74004 - 1 / 2) >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[0] = 3
        if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))), ('sha3', 3))) != arg1:
            var74001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))), ('sha3', 3)))
            var74002 = var74004 + (('storage', 256, 0, 3) + -var74004 - 1 / 2)
            var74004 = var74004
            continue 
        if var74004 + (('storage', 256, 0, 3) + -var74004 - 1 / 2) >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2)))))
        idx = 2528
        s = 0
        while 3040 > idx + 32:
            mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2)))))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2)))))
        idx = 0
        s = 3232
        t = 2528
        while idx < 16:
            mem[s] = mem[t + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))))), 
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))))),
               ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 74004)))), 2))))),
               mem[3232 len 512]
    if var74002 < 1:
        revert with 0, 17
    if var74004 == var74002 - 1:
        if uint32(var74001) < arg1:
            if var74002 >= ('storage', 256, 0, 3):
                revert with 0, 50
            mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
            idx = 2528
            s = 0
            while 3040 > idx + 32:
                mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
            mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002))))
            idx = 0
            s = 3232
            t = 2528
            while idx < 16:
                mem[s] = mem[t + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))), 
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                   ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                   ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 74002)))),
                   mem[3232 len 512]
        if var74002 < 1:
            revert with 0, 17
        if var74002 - 1 >= ('storage', 256, 0, 3):
            revert with 0, 50
        mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
        idx = 2528
        s = 0
        while 3040 > idx + 32:
            mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002)))))
        idx = 0
        s = 3232
        t = 2528
        while idx < 16:
            mem[s] = mem[t + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))), 
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
               ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
               ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 74002))))),
               mem[3232 len 512]
    if var74002 - 1 < var74004:
        revert with 0, 17
    if var74004 > !(var74002 + -var74004 - 1 / 2):
        revert with 0, 17
    if var74004 + (var74002 + -var74004 - 1 / 2) >= ('storage', 256, 0, 3):
        revert with 0, 50
    mem[0] = 3
    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))), ('sha3', 3))) != arg1:
        var74001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))), ('sha3', 3)))
        var74002 = var74004 + (var74002 + -var74004 - 1 / 2)
        var74004 = var74004
        continue 
    if var74004 + (var74002 + -var74004 - 1 / 2) >= ('storage', 256, 0, 3):
        revert with 0, 50
    mem[2528] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2)))))
    idx = 2528
    s = 0
    while 3040 > idx + 32:
        mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2)))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[3040] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2)))))
    idx = 0
    s = 3232
    t = 2528
    while idx < 16:
        mem[s] = mem[t + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))))), 
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))))),
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))))),
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))))),
           ('storage', 32, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))))),
           ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 74004), ('div', ('mask', 256, 0, ('add', -1, ('var', 74002), ('mul', -1, ('var', 74004)))), 2))))),
           mem[3232 len 512]
}

function sub_d365027d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 704
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not ('storage', 256, 0, 3):
        revert with 0, 'PrizeTierHistory/no-prize-tiers'
    if ('storage', 256, 0, 3) < 1:
        revert with 0, 17
    if 0 >= ('storage', 256, 0, 3):
        revert with 0, 50
    if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
        revert with 0, 50
    require cd[36] == uint32(cd[36])
    if uint32(cd[36]) < ('storage', 32, 8, ('sha3', 3)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-out-of-range'
    require cd[36] == uint32(cd[36])
    if ('storage', 256, 0, 3) - 1 < var48002:
        revert with 0, 17
    if var60001 > !var60002:
        revert with 0, 17
    if var64001 >= ('storage', 256, 0, 3):
        revert with 0, 50
    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 66001)), ('sha3', 3))) == uint32(cd[36]):
        require cd[36] == uint32(cd[36])
        if var66004 >= ('storage', 256, 0, 3):
            revert with 0, 50
        if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 66004)), ('sha3', 3))) != uint32(cd[36]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
        if var66004 >= ('storage', 256, 0, 3):
            revert with 0, 50
        require cd[4] == uint8(cd[4])
        uint8(stor[(4 * var66004) + sha3(3)].field_0) = uint8(cd[4])
        require cd[36] == uint32(cd[36])
        uint8(stor[(4 * var66004) + sha3(3)].field_0) = uint8(cd[4])
        uint32(stor[(4 * var66004) + sha3(3)].field_8) = uint32(cd[36])
        require cd[68] == uint32(cd[68])
        uint32(stor[(4 * var66004) + sha3(3)].field_40) = uint32(cd[68])
        require cd[100] == uint32(cd[100])
        uint32(stor[(4 * var66004) + sha3(3)].field_72) = uint32(cd[100])
        require cd[132] == uint32(cd[132])
        uint32(stor[(4 * var66004) + sha3(3)].field_104) = uint32(cd[132])
        uint256(stor[(4 * var66004) + sha3(3) + 1].field_0) = cd[164]
        idx = 0
        s = 0
        t = 196
        while idx < 16:
            require cd[t] == uint32(cd[t])
            uint256(stor[(4 * var66004) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('var', 66004)), ('sha3', 3))) and !(test266151307() << 8 * s)
            if s + 4 <= 28:
                idx = idx + 1
                s = s + 4
                t = t + 32
                continue 
            idx = idx + 1
            s = 0
            t = t + 32
            continue 
    else:
        if uint32(var68001) < uint32(cd[36]):
            if 1 > !var68002:
                revert with 0, 17
            if var68002 + 1 == ('storage', 256, 0, 3) - 1:
                if uint32(var68001) < uint32(cd[36]):
                    require cd[36] == uint32(cd[36])
                    if var68002 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 68002)), ('sha3', 3))) != uint32(cd[36]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                    if var68002 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    require cd[4] == uint8(cd[4])
                    uint8(stor[(4 * var68002) + sha3(3)].field_0) = uint8(cd[4])
                    require cd[36] == uint32(cd[36])
                    uint8(stor[(4 * var68002) + sha3(3)].field_0) = uint8(cd[4])
                    uint32(stor[(4 * var68002) + sha3(3)].field_8) = uint32(cd[36])
                    require cd[68] == uint32(cd[68])
                    uint32(stor[(4 * var68002) + sha3(3)].field_40) = uint32(cd[68])
                    require cd[100] == uint32(cd[100])
                    uint32(stor[(4 * var68002) + sha3(3)].field_72) = uint32(cd[100])
                    require cd[132] == uint32(cd[132])
                    uint32(stor[(4 * var68002) + sha3(3)].field_104) = uint32(cd[132])
                    uint256(stor[(4 * var68002) + sha3(3) + 1].field_0) = cd[164]
                    idx = 0
                    s = 0
                    t = 196
                    while idx < 16:
                        require cd[t] == uint32(cd[t])
                        uint256(stor[(4 * var68002) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('var', 68002)), ('sha3', 3))) and !(test266151307() << 8 * s)
                        if s + 4 <= 28:
                            idx = idx + 1
                            s = s + 4
                            t = t + 32
                            continue 
                        idx = idx + 1
                        s = 0
                        t = t + 32
                        continue 
                else:
                    if var68002 < 1:
                        revert with 0, 17
                    require cd[36] == uint32(cd[36])
                    if var68002 - 1 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', -1, ('var', 68002))), ('sha3', 3))) != uint32(cd[36]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                    if var68002 - 1 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    require cd[4] == uint8(cd[4])
                    uint8(stor[(4 * var68002 - 1) + sha3(3)].field_0) = uint8(cd[4])
                    require cd[36] == uint32(cd[36])
                    uint8(stor[(4 * var68002 - 1) + sha3(3)].field_0) = uint8(cd[4])
                    uint32(stor[(4 * var68002 - 1) + sha3(3)].field_8) = uint32(cd[36])
                    require cd[68] == uint32(cd[68])
                    uint32(stor[(4 * var68002 - 1) + sha3(3)].field_40) = uint32(cd[68])
                    require cd[100] == uint32(cd[100])
                    uint32(stor[(4 * var68002 - 1) + sha3(3)].field_72) = uint32(cd[100])
                    require cd[132] == uint32(cd[132])
                    uint32(stor[(4 * var68002 - 1) + sha3(3)].field_104) = uint32(cd[132])
                    uint256(stor[(4 * var68002 - 1) + sha3(3) + 1].field_0) = cd[164]
                    idx = 0
                    s = 0
                    t = 196
                    while idx < 16:
                        require cd[t] == uint32(cd[t])
                        uint256(stor[(4 * var68002 - 1) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('add', -1, ('var', 68002))), ('sha3', 3))) and !(test266151307() << 8 * s)
                        if s + 4 <= 28:
                            idx = idx + 1
                            s = s + 4
                            t = t + 32
                            continue 
                        idx = idx + 1
                        s = 0
                        t = t + 32
                        continue 
            else:
                if ('storage', 256, 0, 3) - 1 < var68002 + 1:
                    revert with 0, 17
                if var68002 + 1 > !(('storage', 256, 0, 3) + -var68002 - 2 / 2):
                    revert with 0, 17
                if var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
                    revert with 0, 50
                mem[0] = 3
                if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 68002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 68002)))), 2))), ('sha3', 3))) != uint32(cd[36]):
                    var68001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 68002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 68002)))), 2))), ('sha3', 3)))
                    var68002 = var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1
                    var68004 = var68002 + 1
                    continue 
                require cd[36] == uint32(cd[36])
                if var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
                    revert with 0, 50
                if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 68002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 68002)))), 2))), ('sha3', 3))) != uint32(cd[36]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                if var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
                    revert with 0, 50
                require cd[4] == uint8(cd[4])
                uint8(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3)].field_0) = uint8(cd[4])
                require cd[36] == uint32(cd[36])
                uint8(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3)].field_0) = uint8(cd[4])
                uint32(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3)].field_8) = uint32(cd[36])
                require cd[68] == uint32(cd[68])
                uint32(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3)].field_40) = uint32(cd[68])
                require cd[100] == uint32(cd[100])
                uint32(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3)].field_72) = uint32(cd[100])
                require cd[132] == uint32(cd[132])
                uint32(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3)].field_104) = uint32(cd[132])
                uint256(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3) + 1].field_0) = cd[164]
                idx = 0
                s = 0
                t = 196
                while idx < 16:
                    require cd[t] == uint32(cd[t])
                    uint256(stor[(4 * var68002 + (('storage', 256, 0, 3) + -var68002 - 2 / 2) + 1) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('add', 1, ('var', 68002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 68002)))), 2))), ('sha3', 3))) and !(test266151307() << 8 * s)
                    if s + 4 <= 28:
                        idx = idx + 1
                        s = s + 4
                        t = t + 32
                        continue 
                    idx = idx + 1
                    s = 0
                    t = t + 32
                    continue 
        else:
            if uint32(var68001) <= uint32(cd[36]):
                if var68004 == ('storage', 256, 0, 3) - 1:
                    if uint32(var68001) < uint32(cd[36]):
                        require cd[36] == uint32(cd[36])
                        if var68002 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 68002)), ('sha3', 3))) != uint32(cd[36]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                        if var68002 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        require cd[4] == uint8(cd[4])
                        uint8(stor[(4 * var68002) + sha3(3)].field_0) = uint8(cd[4])
                        require cd[36] == uint32(cd[36])
                        uint8(stor[(4 * var68002) + sha3(3)].field_0) = uint8(cd[4])
                        uint32(stor[(4 * var68002) + sha3(3)].field_8) = uint32(cd[36])
                        require cd[68] == uint32(cd[68])
                        uint32(stor[(4 * var68002) + sha3(3)].field_40) = uint32(cd[68])
                        require cd[100] == uint32(cd[100])
                        uint32(stor[(4 * var68002) + sha3(3)].field_72) = uint32(cd[100])
                        require cd[132] == uint32(cd[132])
                        uint32(stor[(4 * var68002) + sha3(3)].field_104) = uint32(cd[132])
                        uint256(stor[(4 * var68002) + sha3(3) + 1].field_0) = cd[164]
                        idx = 0
                        s = 0
                        t = 196
                        while idx < 16:
                            require cd[t] == uint32(cd[t])
                            uint256(stor[(4 * var68002) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('var', 68002)), ('sha3', 3))) and !(test266151307() << 8 * s)
                            if s + 4 <= 28:
                                idx = idx + 1
                                s = s + 4
                                t = t + 32
                                continue 
                            idx = idx + 1
                            s = 0
                            t = t + 32
                            continue 
                    else:
                        if var68002 < 1:
                            revert with 0, 17
                        require cd[36] == uint32(cd[36])
                        if var68002 - 1 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', -1, ('var', 68002))), ('sha3', 3))) != uint32(cd[36]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                        if var68002 - 1 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        require cd[4] == uint8(cd[4])
                        uint8(stor[(4 * var68002 - 1) + sha3(3)].field_0) = uint8(cd[4])
                        require cd[36] == uint32(cd[36])
                        uint8(stor[(4 * var68002 - 1) + sha3(3)].field_0) = uint8(cd[4])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_8) = uint32(cd[36])
                        require cd[68] == uint32(cd[68])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_40) = uint32(cd[68])
                        require cd[100] == uint32(cd[100])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_72) = uint32(cd[100])
                        require cd[132] == uint32(cd[132])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_104) = uint32(cd[132])
                        uint256(stor[(4 * var68002 - 1) + sha3(3) + 1].field_0) = cd[164]
                        idx = 0
                        s = 0
                        t = 196
                        while idx < 16:
                            require cd[t] == uint32(cd[t])
                            uint256(stor[(4 * var68002 - 1) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('add', -1, ('var', 68002))), ('sha3', 3))) and !(test266151307() << 8 * s)
                            if s + 4 <= 28:
                                idx = idx + 1
                                s = s + 4
                                t = t + 32
                                continue 
                            idx = idx + 1
                            s = 0
                            t = t + 32
                            continue 
                else:
                    if ('storage', 256, 0, 3) - 1 < var68004:
                        revert with 0, 17
                    if var68004 > !(('storage', 256, 0, 3) + -var68004 - 1 / 2):
                        revert with 0, 17
                    if var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2) >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    mem[0] = 3
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3))) != uint32(cd[36]):
                        var68001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3)))
                        var68002 = var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)
                        var68004 = var68004
                        continue 
                    require cd[36] == uint32(cd[36])
                    if var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2) >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3))) != uint32(cd[36]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                    if var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2) >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    require cd[4] == uint8(cd[4])
                    uint8(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3)].field_0) = uint8(cd[4])
                    require cd[36] == uint32(cd[36])
                    uint8(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3)].field_0) = uint8(cd[4])
                    uint32(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3)].field_8) = uint32(cd[36])
                    require cd[68] == uint32(cd[68])
                    uint32(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3)].field_40) = uint32(cd[68])
                    require cd[100] == uint32(cd[100])
                    uint32(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3)].field_72) = uint32(cd[100])
                    require cd[132] == uint32(cd[132])
                    uint32(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3)].field_104) = uint32(cd[132])
                    uint256(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3) + 1].field_0) = cd[164]
                    idx = 0
                    s = 0
                    t = 196
                    while idx < 16:
                        require cd[t] == uint32(cd[t])
                        uint256(stor[(4 * var68004 + (('storage', 256, 0, 3) + -var68004 - 1 / 2)) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3))) and !(test266151307() << 8 * s)
                        if s + 4 <= 28:
                            idx = idx + 1
                            s = s + 4
                            t = t + 32
                            continue 
                        idx = idx + 1
                        s = 0
                        t = t + 32
                        continue 
            else:
                if var68002 < 1:
                    revert with 0, 17
                if var68004 == var68002 - 1:
                    if uint32(var68001) < uint32(cd[36]):
                        require cd[36] == uint32(cd[36])
                        if var68002 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 68002)), ('sha3', 3))) != uint32(cd[36]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                        if var68002 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        require cd[4] == uint8(cd[4])
                        uint8(stor[(4 * var68002) + sha3(3)].field_0) = uint8(cd[4])
                        require cd[36] == uint32(cd[36])
                        uint8(stor[(4 * var68002) + sha3(3)].field_0) = uint8(cd[4])
                        uint32(stor[(4 * var68002) + sha3(3)].field_8) = uint32(cd[36])
                        require cd[68] == uint32(cd[68])
                        uint32(stor[(4 * var68002) + sha3(3)].field_40) = uint32(cd[68])
                        require cd[100] == uint32(cd[100])
                        uint32(stor[(4 * var68002) + sha3(3)].field_72) = uint32(cd[100])
                        require cd[132] == uint32(cd[132])
                        uint32(stor[(4 * var68002) + sha3(3)].field_104) = uint32(cd[132])
                        uint256(stor[(4 * var68002) + sha3(3) + 1].field_0) = cd[164]
                        idx = 0
                        s = 0
                        t = 196
                        while idx < 16:
                            require cd[t] == uint32(cd[t])
                            uint256(stor[(4 * var68002) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('var', 68002)), ('sha3', 3))) and !(test266151307() << 8 * s)
                            if s + 4 <= 28:
                                idx = idx + 1
                                s = s + 4
                                t = t + 32
                                continue 
                            idx = idx + 1
                            s = 0
                            t = t + 32
                            continue 
                    else:
                        if var68002 < 1:
                            revert with 0, 17
                        require cd[36] == uint32(cd[36])
                        if var68002 - 1 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', -1, ('var', 68002))), ('sha3', 3))) != uint32(cd[36]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                        if var68002 - 1 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        require cd[4] == uint8(cd[4])
                        uint8(stor[(4 * var68002 - 1) + sha3(3)].field_0) = uint8(cd[4])
                        require cd[36] == uint32(cd[36])
                        uint8(stor[(4 * var68002 - 1) + sha3(3)].field_0) = uint8(cd[4])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_8) = uint32(cd[36])
                        require cd[68] == uint32(cd[68])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_40) = uint32(cd[68])
                        require cd[100] == uint32(cd[100])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_72) = uint32(cd[100])
                        require cd[132] == uint32(cd[132])
                        uint32(stor[(4 * var68002 - 1) + sha3(3)].field_104) = uint32(cd[132])
                        uint256(stor[(4 * var68002 - 1) + sha3(3) + 1].field_0) = cd[164]
                        idx = 0
                        s = 0
                        t = 196
                        while idx < 16:
                            require cd[t] == uint32(cd[t])
                            uint256(stor[(4 * var68002 - 1) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('add', -1, ('var', 68002))), ('sha3', 3))) and !(test266151307() << 8 * s)
                            if s + 4 <= 28:
                                idx = idx + 1
                                s = s + 4
                                t = t + 32
                                continue 
                            idx = idx + 1
                            s = 0
                            t = t + 32
                            continue 
                else:
                    if var68002 - 1 < var68004:
                        revert with 0, 17
                    if var68004 > !(var68002 + -var68004 - 1 / 2):
                        revert with 0, 17
                    if var68004 + (var68002 + -var68004 - 1 / 2) >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    mem[0] = 3
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('var', 68002), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3))) != uint32(cd[36]):
                        var68001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('var', 68002), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3)))
                        var68002 = var68004 + (var68002 + -var68004 - 1 / 2)
                        var68004 = var68004
                        continue 
                    require cd[36] == uint32(cd[36])
                    if var68004 + (var68002 + -var68004 - 1 / 2) >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('var', 68002), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3))) != uint32(cd[36]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrizeTierHistory/draw-id-must-match'
                    if var68004 + (var68002 + -var68004 - 1 / 2) >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    require cd[4] == uint8(cd[4])
                    uint8(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3)].field_0) = uint8(cd[4])
                    require cd[36] == uint32(cd[36])
                    uint8(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3)].field_0) = uint8(cd[4])
                    uint32(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3)].field_8) = uint32(cd[36])
                    require cd[68] == uint32(cd[68])
                    uint32(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3)].field_40) = uint32(cd[68])
                    require cd[100] == uint32(cd[100])
                    uint32(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3)].field_72) = uint32(cd[100])
                    require cd[132] == uint32(cd[132])
                    uint32(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3)].field_104) = uint32(cd[132])
                    uint256(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3) + 1].field_0) = cd[164]
                    idx = 0
                    s = 0
                    t = 196
                    while idx < 16:
                        require cd[t] == uint32(cd[t])
                        uint256(stor[(4 * var68004 + (var68002 + -var68004 - 1 / 2)) + sha3(3) + 2].field_0) = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or ('storage', 256, 0, ('add', 2, ('mask_shl', 254, 0, 2, ('add', ('var', 68004), ('div', ('mask', 256, 0, ('add', -1, ('var', 68002), ('mul', -1, ('var', 68004)))), 2))), ('sha3', 3))) and !(test266151307() << 8 * s)
                        if s + 4 <= 28:
                            idx = idx + 1
                            s = s + 4
                            t = t + 32
                            continue 
                        idx = idx + 1
                        s = 0
                        t = t + 32
                        continue 
    require cd[36] == uint32(cd[36])
    require cd[4] == uint8(cd[4])
    require cd[36] == uint32(cd[36])
    require cd[68] == uint32(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    idx = 0
    s = 196
    t = 288
    while idx < 16:
        require cd[s] == uint32(cd[s])
        mem[t] = uint32(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xec70f602: cd[4] << 248, cd[36] << 224, cd[68] << 224, cd[100] << 224, cd[132] << 224, cd[164], mem[288 len 512], uint32(cd[36])
    return 0
}

function sub_4e602cd8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
            _137 = mem[64]
            mem[64] = mem[64] + 224
            mem[_137] = 0
            mem[_137 + 32] = 0
            mem[_137 + 64] = 0
            mem[_137 + 96] = 0
            mem[_137 + 128] = 0
            mem[_137 + 160] = 0
            _139 = mem[64]
            mem[64] = mem[64] + 512
            mem[_139 len 512] = call.data[calldata.size len 512]
            mem[_137 + 192] = _139
            if not ('storage', 256, 0, 3):
                revert with 0, 'PrizeTierHistory/no-prize-tiers'
            if ('storage', 256, 0, 3) < 1:
                revert with 0, 17
            if 0 >= ('storage', 256, 0, 3):
                revert with 0, 50
            if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
                revert with 0, 50
            mem[0] = 3
            if uint32(cd[((32 * idx) + cd[4] + 36)]) < ('storage', 32, 8, ('sha3', 3)):
                revert with 0, 'PrizeTierHistory/draw-id-out-of-range'
            if uint32(cd[((32 * idx) + cd[4] + 36)]) >= ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))), ('sha3', 3))):
                if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
                    revert with 0, 50
                mem[0] = 3
                _160 = mem[64]
                mem[64] = mem[64] + 224
                mem[_160] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_160 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_160 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_160 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_160 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_160 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                _161 = mem[64]
                mem[64] = mem[64] + 512
                mem[_161] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                s = _161
                t = 0
                while _161 + 512 > s + 32:
                    mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                    s = s + 32
                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                    continue 
                mem[_160 + 192] = _161
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _160
            else:
                if uint32(cd[((32 * idx) + cd[4] + 36)]) == ('storage', 32, 8, ('sha3', 3)):
                    if 0 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    mem[0] = 3
                    _164 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_164] = ('storage', 8, 0, ('sha3', 3))
                    mem[_164 + 32] = ('storage', 32, 8, ('sha3', 3))
                    mem[_164 + 64] = ('storage', 32, 40, ('sha3', 3))
                    mem[_164 + 96] = ('storage', 32, 72, ('sha3', 3))
                    mem[_164 + 128] = ('storage', 32, 104, ('sha3', 3))
                    mem[_164 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3)))
                    _165 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_165] = ('storage', 32, 0, ('add', 2, ('sha3', 3)))
                    s = _165
                    t = 0
                    while _165 + 512 > s + 32:
                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3)))
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_164 + 192] = _165
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _164
                else:
                    _166 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_166] = 0
                    mem[_166 + 32] = 0
                    mem[_166 + 64] = 0
                    mem[_166 + 96] = 0
                    mem[_166 + 128] = 0
                    mem[_166 + 160] = 0
                    _167 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_167 len 512] = call.data[calldata.size len 512]
                    mem[_166 + 192] = _167
                    if ('storage', 256, 0, 3) - 1 < var62002:
                        revert with 0, 17
                    if var74001 > !var74002:
                        revert with 0, 17
                    if var78001 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 80001)), ('sha3', 3))) == uint32(cd[((32 * idx) + cd[4] + 36)]):
                        if var80004 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        mem[0] = 3
                        _948 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_948] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                        mem[_948 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                        mem[_948 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                        mem[_948 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                        mem[_948 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                        mem[_948 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                        _949 = mem[64]
                        mem[64] = mem[64] + 512
                        mem[_949] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                        s = _949
                        t = 0
                        while _949 + 512 > s + 32:
                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 80004))))
                            s = s + 32
                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                            continue 
                        mem[_948 + 192] = _949
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _948
                    else:
                        if uint32(var82001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                            if 1 > !var82002:
                                revert with 0, 17
                            if var82002 + 1 == ('storage', 256, 0, 3) - 1:
                                if uint32(var82001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                                    if var82002 >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1030 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1030] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                    mem[_1030 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                    mem[_1030 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                    mem[_1030 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                    mem[_1030 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                    mem[_1030 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                    _1031 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1031] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                    s = _1031
                                    t = 0
                                    while _1031 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1030 + 192] = _1031
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1030
                                else:
                                    if var82002 < 1:
                                        revert with 0, 17
                                    if var82002 - 1 >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1041 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1041] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                    mem[_1041 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                    mem[_1041 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                    mem[_1041 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                    mem[_1041 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                    mem[_1041 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                    _1042 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1042] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                    s = _1042
                                    t = 0
                                    while _1042 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1041 + 192] = _1042
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1041
                            else:
                                if ('storage', 256, 0, 3) - 1 < var82002 + 1:
                                    revert with 0, 17
                                if var82002 + 1 > !(('storage', 256, 0, 3) + -var82002 - 2 / 2):
                                    revert with 0, 17
                                if var82002 + (('storage', 256, 0, 3) + -var82002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
                                    revert with 0, 50
                                mem[0] = 3
                                if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2))), ('sha3', 3))) != uint32(cd[((32 * idx) + cd[4] + 36)]):
                                    var82001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2))), ('sha3', 3)))
                                    var82002 = var82002 + (('storage', 256, 0, 3) + -var82002 - 2 / 2) + 1
                                    var82004 = var82002 + 1
                                    continue 
                                if var82002 + (('storage', 256, 0, 3) + -var82002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
                                    revert with 0, 50
                                mem[0] = 3
                                _1078 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1078] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                mem[_1078 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                mem[_1078 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                mem[_1078 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                mem[_1078 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                mem[_1078 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                _1079 = mem[64]
                                mem[64] = mem[64] + 512
                                mem[_1079] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                s = _1079
                                t = 0
                                while _1079 + 512 > s + 32:
                                    mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 82002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 82002)))), 2)))))
                                    s = s + 32
                                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                    continue 
                                mem[_1078 + 192] = _1079
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _1078
                        else:
                            if uint32(var82001) <= uint32(cd[((32 * idx) + cd[4] + 36)]):
                                if var82004 == ('storage', 256, 0, 3) - 1:
                                    if uint32(var82001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        if var82002 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1024 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1024] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1024 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1024 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1024 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1024 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1024 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        _1025 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1025] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        s = _1025
                                        t = 0
                                        while _1025 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1024 + 192] = _1025
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1024
                                    else:
                                        if var82002 < 1:
                                            revert with 0, 17
                                        if var82002 - 1 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1027 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1027] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1027 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1027 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1027 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1027 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1027 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        _1028 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1028] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        s = _1028
                                        t = 0
                                        while _1028 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1027 + 192] = _1028
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1027
                                else:
                                    if ('storage', 256, 0, 3) - 1 < var82004:
                                        revert with 0, 17
                                    if var82004 > !(('storage', 256, 0, 3) + -var82004 - 1 / 2):
                                        revert with 0, 17
                                    if var82004 + (('storage', 256, 0, 3) + -var82004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2))), ('sha3', 3))) != uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        var82001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2))), ('sha3', 3)))
                                        var82002 = var82004 + (('storage', 256, 0, 3) + -var82004 - 1 / 2)
                                        var82004 = var82004
                                        continue 
                                    if var82004 + (('storage', 256, 0, 3) + -var82004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1071 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1071] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1071 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1071 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1071 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1071 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1071 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                    _1072 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1072] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                    s = _1072
                                    t = 0
                                    while _1072 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 82004)))), 2)))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1071 + 192] = _1072
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1071
                            else:
                                if var82002 < 1:
                                    revert with 0, 17
                                if var82004 == var82002 - 1:
                                    if uint32(var82001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        if var82002 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1038 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1038] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1038 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1038 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1038 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1038 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        mem[_1038 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        _1039 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1039] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                        s = _1039
                                        t = 0
                                        while _1039 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 82002))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1038 + 192] = _1039
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1038
                                    else:
                                        if var82002 < 1:
                                            revert with 0, 17
                                        if var82002 - 1 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1052 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1052] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1052 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1052 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1052 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1052 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        mem[_1052 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        _1053 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1053] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                        s = _1053
                                        t = 0
                                        while _1053 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 82002)))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1052 + 192] = _1053
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1052
                                else:
                                    if var82002 - 1 < var82004:
                                        revert with 0, 17
                                    if var82004 > !(var82002 + -var82004 - 1 / 2):
                                        revert with 0, 17
                                    if var82004 + (var82002 + -var82004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2))), ('sha3', 3))) != uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        var82001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2))), ('sha3', 3)))
                                        var82002 = var82004 + (var82002 + -var82004 - 1 / 2)
                                        var82004 = var82004
                                        continue 
                                    if var82004 + (var82002 + -var82004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1083 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1083] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1083 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1083 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1083 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1083 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                    mem[_1083 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                    _1084 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1084] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                    s = _1084
                                    t = 0
                                    while _1084 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 82004), ('div', ('mask', 256, 0, ('add', -1, ('var', 82002), ('mul', -1, ('var', 82004)))), 2)))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1083 + 192] = _1084
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1083
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _125 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _125:
            _337 = mem[t]
            mem[s] = mem[mem[t] + 31 len 1]
            mem[s + 32] = mem[_337 + 60 len 4]
            mem[s + 64] = mem[_337 + 92 len 4]
            mem[s + 96] = mem[_337 + 124 len 4]
            mem[s + 128] = mem[_337 + 156 len 4]
            mem[s + 160] = mem[_337 + 160]
            u = 0
            v = s + 192
            w = mem[_337 + 192]
            while u < 16:
                mem[v] = mem[w + 28 len 4]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 704
            t = t + 32
            continue 
    else:
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[64] = (32 * ('cd', 4).length) + 864
        mem[(32 * ('cd', 4).length) + 352 len 512] = call.data[calldata.size len 512]
        mem[(32 * ('cd', 4).length) + 320] = (32 * ('cd', 4).length) + 352
        mem[var19002] = (32 * ('cd', 4).length) + 128
        s = (32 * ('cd', 4).length) + 320
        s = (32 * ('cd', 4).length) + 128
        s = var19002
        idx = var19003
        while idx - 1:
            _347 = mem[64]
            mem[64] = mem[64] + 224
            mem[_347] = 0
            mem[_347 + 32] = 0
            mem[_347 + 64] = 0
            mem[_347 + 96] = 0
            mem[_347 + 128] = 0
            mem[_347 + 160] = 0
            mem[64] = mem[64] + 512
            mem[(32 * ('cd', 4).length) + 352 len 512] = call.data[calldata.size len 512]
            mem[_347 + 192] = (32 * ('cd', 4).length) + 352
            mem[s + 32] = _347
            s = _347 + 192
            s = _347
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
            _450 = mem[64]
            mem[64] = mem[64] + 224
            mem[_450] = 0
            mem[_450 + 32] = 0
            mem[_450 + 64] = 0
            mem[_450 + 96] = 0
            mem[_450 + 128] = 0
            mem[_450 + 160] = 0
            _451 = mem[64]
            mem[64] = mem[64] + 512
            mem[_451 len 512] = call.data[calldata.size len 512]
            mem[_450 + 192] = _451
            if not ('storage', 256, 0, 3):
                revert with 0, 'PrizeTierHistory/no-prize-tiers'
            if ('storage', 256, 0, 3) < 1:
                revert with 0, 17
            if 0 >= ('storage', 256, 0, 3):
                revert with 0, 50
            if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
                revert with 0, 50
            mem[0] = 3
            if uint32(cd[((32 * idx) + cd[4] + 36)]) < ('storage', 32, 8, ('sha3', 3)):
                revert with 0, 'PrizeTierHistory/draw-id-out-of-range'
            if uint32(cd[((32 * idx) + cd[4] + 36)]) >= ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3))), ('sha3', 3))):
                if ('storage', 256, 0, 3) - 1 >= ('storage', 256, 0, 3):
                    revert with 0, 50
                mem[0] = 3
                _479 = mem[64]
                mem[64] = mem[64] + 224
                mem[_479] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_479 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_479 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_479 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_479 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                mem[_479 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                _480 = mem[64]
                mem[64] = mem[64] + 512
                mem[_480] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                s = _480
                t = 0
                while _480 + 512 > s + 32:
                    mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('storage', 256, 0, 3)))))
                    s = s + 32
                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                    continue 
                mem[_479 + 192] = _480
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _479
            else:
                if uint32(cd[((32 * idx) + cd[4] + 36)]) == ('storage', 32, 8, ('sha3', 3)):
                    if 0 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    mem[0] = 3
                    _487 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_487] = ('storage', 8, 0, ('sha3', 3))
                    mem[_487 + 32] = ('storage', 32, 8, ('sha3', 3))
                    mem[_487 + 64] = ('storage', 32, 40, ('sha3', 3))
                    mem[_487 + 96] = ('storage', 32, 72, ('sha3', 3))
                    mem[_487 + 128] = ('storage', 32, 104, ('sha3', 3))
                    mem[_487 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3)))
                    _488 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_488] = ('storage', 32, 0, ('add', 2, ('sha3', 3)))
                    s = _488
                    t = 0
                    while _488 + 512 > s + 32:
                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3)))
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_487 + 192] = _488
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _487
                else:
                    _490 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_490] = 0
                    mem[_490 + 32] = 0
                    mem[_490 + 64] = 0
                    mem[_490 + 96] = 0
                    mem[_490 + 128] = 0
                    mem[_490 + 160] = 0
                    _491 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_491 len 512] = call.data[calldata.size len 512]
                    mem[_490 + 192] = _491
                    if ('storage', 256, 0, 3) - 1 < var72002:
                        revert with 0, 17
                    if var84001 > !var84002:
                        revert with 0, 17
                    if var88001 >= ('storage', 256, 0, 3):
                        revert with 0, 50
                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('var', 90001)), ('sha3', 3))) == uint32(cd[((32 * idx) + cd[4] + 36)]):
                        if var90004 >= ('storage', 256, 0, 3):
                            revert with 0, 50
                        mem[0] = 3
                        _1127 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1127] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                        mem[_1127 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                        mem[_1127 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                        mem[_1127 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                        mem[_1127 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                        mem[_1127 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                        _1128 = mem[64]
                        mem[64] = mem[64] + 512
                        mem[_1128] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                        s = _1128
                        t = 0
                        while _1128 + 512 > s + 32:
                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 90004))))
                            s = s + 32
                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                            continue 
                        mem[_1127 + 192] = _1128
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1127
                    else:
                        if uint32(var92001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                            if 1 > !var92002:
                                revert with 0, 17
                            if var92002 + 1 == ('storage', 256, 0, 3) - 1:
                                if uint32(var92001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                                    if var92002 >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1177 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1177] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                    mem[_1177 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                    mem[_1177 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                    mem[_1177 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                    mem[_1177 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                    mem[_1177 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                    _1178 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1178] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                    s = _1178
                                    t = 0
                                    while _1178 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1177 + 192] = _1178
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1177
                                else:
                                    if var92002 < 1:
                                        revert with 0, 17
                                    if var92002 - 1 >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1184 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1184] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                    mem[_1184 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                    mem[_1184 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                    mem[_1184 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                    mem[_1184 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                    mem[_1184 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                    _1185 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1185] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                    s = _1185
                                    t = 0
                                    while _1185 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1184 + 192] = _1185
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1184
                            else:
                                if ('storage', 256, 0, 3) - 1 < var92002 + 1:
                                    revert with 0, 17
                                if var92002 + 1 > !(('storage', 256, 0, 3) + -var92002 - 2 / 2):
                                    revert with 0, 17
                                if var92002 + (('storage', 256, 0, 3) + -var92002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
                                    revert with 0, 50
                                mem[0] = 3
                                if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2))), ('sha3', 3))) != uint32(cd[((32 * idx) + cd[4] + 36)]):
                                    var92001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2))), ('sha3', 3)))
                                    var92002 = var92002 + (('storage', 256, 0, 3) + -var92002 - 2 / 2) + 1
                                    var92004 = var92002 + 1
                                    continue 
                                if var92002 + (('storage', 256, 0, 3) + -var92002 - 2 / 2) + 1 >= ('storage', 256, 0, 3):
                                    revert with 0, 50
                                mem[0] = 3
                                _1201 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1201] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                mem[_1201 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                mem[_1201 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                mem[_1201 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                mem[_1201 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                mem[_1201 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                _1202 = mem[64]
                                mem[64] = mem[64] + 512
                                mem[_1202] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                s = _1202
                                t = 0
                                while _1202 + 512 > s + 32:
                                    mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', 1, ('var', 92002), ('div', ('mask', 256, 0, ('add', -2, ('storage', 256, 0, 3), ('mul', -1, ('var', 92002)))), 2)))))
                                    s = s + 32
                                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                    continue 
                                mem[_1201 + 192] = _1202
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _1201
                        else:
                            if uint32(var92001) <= uint32(cd[((32 * idx) + cd[4] + 36)]):
                                if var92004 == ('storage', 256, 0, 3) - 1:
                                    if uint32(var92001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        if var92002 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1171 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1171] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1171 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1171 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1171 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1171 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1171 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        _1172 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1172] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        s = _1172
                                        t = 0
                                        while _1172 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1171 + 192] = _1172
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1171
                                    else:
                                        if var92002 < 1:
                                            revert with 0, 17
                                        if var92002 - 1 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1174 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1174] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1174 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1174 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1174 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1174 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1174 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        _1175 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1175] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        s = _1175
                                        t = 0
                                        while _1175 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1174 + 192] = _1175
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1174
                                else:
                                    if ('storage', 256, 0, 3) - 1 < var92004:
                                        revert with 0, 17
                                    if var92004 > !(('storage', 256, 0, 3) + -var92004 - 1 / 2):
                                        revert with 0, 17
                                    if var92004 + (('storage', 256, 0, 3) + -var92004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2))), ('sha3', 3))) != uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        var92001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2))), ('sha3', 3)))
                                        var92002 = var92004 + (('storage', 256, 0, 3) + -var92004 - 1 / 2)
                                        var92004 = var92004
                                        continue 
                                    if var92004 + (('storage', 256, 0, 3) + -var92004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1196 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1196] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1196 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1196 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1196 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1196 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1196 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                    _1197 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1197] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                    s = _1197
                                    t = 0
                                    while _1197 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('storage', 256, 0, 3), ('mul', -1, ('var', 92004)))), 2)))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1196 + 192] = _1197
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1196
                            else:
                                if var92002 < 1:
                                    revert with 0, 17
                                if var92004 == var92002 - 1:
                                    if uint32(var92001) < uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        if var92002 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1181 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1181] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1181 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1181 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1181 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1181 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        mem[_1181 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        _1182 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1182] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                        s = _1182
                                        t = 0
                                        while _1182 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('var', 92002))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1181 + 192] = _1182
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1181
                                    else:
                                        if var92002 < 1:
                                            revert with 0, 17
                                        if var92002 - 1 >= ('storage', 256, 0, 3):
                                            revert with 0, 50
                                        mem[0] = 3
                                        _1189 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_1189] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1189 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1189 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1189 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1189 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        mem[_1189 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        _1190 = mem[64]
                                        mem[64] = mem[64] + 512
                                        mem[_1190] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                        s = _1190
                                        t = 0
                                        while _1190 + 512 > s + 32:
                                            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', -1, ('var', 92002)))))
                                            s = s + 32
                                            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                            continue 
                                        mem[_1189 + 192] = _1190
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _1189
                                else:
                                    if var92002 - 1 < var92004:
                                        revert with 0, 17
                                    if var92004 > !(var92002 + -var92004 - 1 / 2):
                                        revert with 0, 17
                                    if var92004 + (var92002 + -var92004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    if ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2))), ('sha3', 3))) != uint32(cd[((32 * idx) + cd[4] + 36)]):
                                        var92001 = ('storage', 32, 8, ('add', ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2))), ('sha3', 3)))
                                        var92002 = var92004 + (var92002 + -var92004 - 1 / 2)
                                        var92004 = var92004
                                        continue 
                                    if var92004 + (var92002 + -var92004 - 1 / 2) >= ('storage', 256, 0, 3):
                                        revert with 0, 50
                                    mem[0] = 3
                                    _1205 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_1205] = ('storage', 8, 0, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1205 + 32] = ('storage', 32, 8, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1205 + 64] = ('storage', 32, 40, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1205 + 96] = ('storage', 32, 72, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1205 + 128] = ('storage', 32, 104, ('add', ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                    mem[_1205 + 160] = ('storage', 256, 0, ('add', 1, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                    _1206 = mem[64]
                                    mem[64] = mem[64] + 512
                                    mem[_1206] = ('storage', 32, 0, ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                    s = _1206
                                    t = 0
                                    while _1206 + 512 > s + 32:
                                        mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 2, ('sha3', 3), ('mask_shl', 254, 0, 2, ('add', ('var', 92004), ('div', ('mask', 256, 0, ('add', -1, ('var', 92002), ('mul', -1, ('var', 92004)))), 2)))))
                                        s = s + 32
                                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                                        continue 
                                    mem[_1205 + 192] = _1206
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _1205
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _438 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _438:
            _586 = mem[t]
            mem[s] = mem[mem[t] + 31 len 1]
            mem[s + 32] = mem[_586 + 60 len 4]
            mem[s + 64] = mem[_586 + 92 len 4]
            mem[s + 96] = mem[_586 + 124 len 4]
            mem[s + 128] = mem[_586 + 156 len 4]
            mem[s + 160] = mem[_586 + 160]
            u = 0
            v = s + 192
            w = mem[_586 + 192]
            while u < 16:
                mem[v] = mem[w + 28 len 4]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 704
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
