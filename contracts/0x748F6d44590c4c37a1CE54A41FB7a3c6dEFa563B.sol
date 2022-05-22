contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address managerAddress;
array of struct stor3;
array of uint32 stor4;
array of uint256 stor6;
uint32 stor403;
uint32 stor403; offset 32
uint32 bufferCardinality; offset 64

function manager() payable {
    return managerAddress
}

function owner() payable {
    return owner
}

function getBufferCardinality() payable {
    return bufferCardinality
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getPrizeDistributionCount() payable {
    if not uint32(stor403.field_0):
        return 0
    if uint32(stor403.field_32) >= 256:
        revert with 0, 50
    return uint32(stor403.field_0)
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable/caller-not-pendingOwner'
    owner = pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    pendingOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable/pendingOwner-not-zero-address'
    pendingOwner = arg1
    emit OwnershipOffered(arg1);
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if managerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable/existing-manager-address'
    managerAddress = arg1
    emit ManagerTransferred(managerAddress, arg1);
    return 1
}

function getOldestPrizeDistribution() payable {
    if uint32(stor403.field_32) >= 256:
        revert with 0, 50
    mem[1280] = stor4[uint32(stor403.field_32)].field_0
    idx = 1280
    s = 0
    while 1792 > idx + 32:
        mem[idx + 32] = stor4[uint32(stor403.field_32)].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    if not uint32(stor403.field_0):
        mem[1792] = stor3[uint32(stor403.field_32)].field_0
        idx = 0
        s = 1280
        t = 2016
        while idx < 16:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return stor3[uint32(stor403.field_32)].field_0, 
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               mem[2016 len 512],
               stor6[uint32(stor403.field_32)],
               0
    if stor3[uint32(stor403.field_32)].field_0:
        if 1 > -uint32(stor403.field_0) + test266151307():
            revert with 0, 17
        if uint32(uint32(stor403.field_0) + 1) < uint32(stor403.field_0):
            revert with 0, 17
        mem[1792] = stor3[uint32(stor403.field_32)].field_0
        idx = 0
        s = 1280
        t = 2016
        while idx < 16:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return stor3[uint32(stor403.field_32)].field_0, 
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               stor3[uint32(stor403.field_32)].field_0,
               mem[2016 len 512],
               stor6[uint32(stor403.field_32)],
               uint32(uint32(uint32(stor403.field_0) + 1) - bufferCardinality)
    mem[2080] = uint32(stor4.length)
    idx = 2080
    s = 0
    while 2592 > idx + 32:
        mem[idx + 32] = stor4.length.field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    if 1 > -uint32(stor403.field_0) + test266151307():
        revert with 0, 17
    if uint32(uint32(stor403.field_0) + 1) < uint32(stor403.field_0):
        revert with 0, 17
    mem[2592] = uint8(stor3.length)
    idx = 0
    s = 2080
    t = 2816
    while idx < 16:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return uint8(stor3.length), 
           uint8(stor3.length),
           uint32(stor3.length),
           uint32(stor3.length),
           uint32(stor3.length),
           uint32(stor3.length),
           Mask(104, 0, stor3.length),
           mem[2816 len 512],
           stor6.length,
           uint32(uint32(uint32(stor403.field_0) + 1) - uint32(stor403.field_32))
}

function sub_1124e1dc(?) payable {
    require calldata.size - 4 >= 800
    require cd[4] == uint32(cd[4])
    require calldata.size - 36 >= 768
    if managerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable/caller-not-manager-or-owner'
    if uint32(cd[4]) <= 0:
        revert with 0, 'DrawCalc/draw-id-gt-0'
    require cd[68] == uint8(cd[68])
    if uint8(cd[68]) <= 0:
        revert with 0, 'DrawCalc/matchCardinality-gt-0'
    require cd[68] == uint8(cd[68])
    if not uint8(cd[68]):
        revert with 0, 18
    require cd[36] == uint8(cd[36])
    if uint8(cd[36]) > uint16(256 / uint8(cd[68])):
        revert with 0, 'DrawCalc/bitRangeSize-too-large'
    require cd[36] == uint8(cd[36])
    if uint8(cd[36]) <= 0:
        revert with 0, 'DrawCalc/bitRangeSize-gt-0'
    require cd[164] == uint32(cd[164])
    if uint32(cd[164]) <= 0:
        revert with 0, 'DrawCalc/maxPicksPerUser-gt-0'
    require cd[196] == uint32(cd[196])
    if uint32(cd[196]) <= 0:
        revert with 0, 'DrawCalc/expiryDuration-gt-0'
    idx = 0
    s = 0
    while idx < 16:
        require cd[((32 * idx) + 260)] == uint32(cd[((32 * idx) + 260)])
        if s > !uint32(cd[((32 * idx) + 260)]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + uint32(cd[((32 * idx) + 260)])
        continue 
    if uint32(stor403.field_32) >= 256:
        revert with 0, 50
    require cd[36] == uint8(cd[36])
    stor3[uint32(stor403.field_32)].field_0 = uint8(cd[36])
    require cd[68] == uint8(cd[68])
    stor3[uint32(stor403.field_32)].field_0 = uint8(cd[36])
    stor3[uint32(stor403.field_32)].field_8 = uint8(cd[68])
    require cd[100] == uint32(cd[100])
    stor3[uint32(stor403.field_32)].field_16 = uint32(cd[100])
    require cd[132] == uint32(cd[132])
    stor3[uint32(stor403.field_32)].field_48 = uint32(cd[132])
    require cd[164] == uint32(cd[164])
    stor3[uint32(stor403.field_32)].field_80 = uint32(cd[164])
    require cd[196] == uint32(cd[196])
    stor3[uint32(stor403.field_32)].field_112 = uint32(cd[196])
    require cd[228] == Mask(104, 0, cd[228])
    stor3[uint32(stor403.field_32)].field_144 = Mask(104, 0, cd[228])
    idx = 0
    s = 0
    t = 260
    while idx < 16:
        require cd[t] == uint32(cd[t])
        stor4[uint32(stor403.field_32)].field_0 = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or stor4[uint32(stor403.field_32)].field_0 and !(test266151307() << 8 * s)
        if s + 4 <= 28:
            idx = idx + 1
            s = s + 4
            t = t + 32
            continue 
        idx = idx + 1
        s = 0
        t = t + 32
        continue 
    stor6[uint32(stor403.field_32)] = cd[772]
    if uint32(stor403.field_32) != 0:
        if 1 > -uint32(stor403.field_0) + test266151307():
            revert with 0, 17
        if uint32(cd[4]) != uint32(uint32(stor403.field_0) + 1):
            revert with 0, 'DRB/must-be-contig'
    else:
        if uint32(stor403.field_0):
            if 1 > -uint32(stor403.field_0) + test266151307():
                revert with 0, 17
            if uint32(cd[4]) != uint32(uint32(stor403.field_0) + 1):
                revert with 0, 'DRB/must-be-contig'
    if 1 > !uint32(stor403.field_32):
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    uint32(stor403.field_0) = uint32(cd[4])
    uint32(stor403.field_32) = uint32(uint32(stor403.field_32) + 1 % uint32(stor403.field_0))
    require cd[36] == uint8(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    require cd[164] == uint32(cd[164])
    require cd[196] == uint32(cd[196])
    require cd[228] == Mask(104, 0, cd[228])
    idx = 0
    s = 260
    t = 608
    while idx < 16:
        require cd[s] == uint32(cd[s])
        mem[t] = uint32(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x2d81da83: cd[36] << 248, cd[68] << 248, cd[100] << 224, cd[132] << 224, cd[164] << 224, cd[196] << 224, cd[228] << 152, mem[608 len 512], cd[772], uint32(cd[4])
    return 1
}

function getNewestPrizeDistribution() payable {
    if 0 == uint32(stor403.field_32):
        if not uint32(stor403.field_0):
            revert with 0, 'DRB/future-draw'
    if uint32(stor403.field_0) > uint32(stor403.field_0):
        revert with 0, 'DRB/future-draw'
    if uint32(stor403.field_0) < uint32(stor403.field_0):
        revert with 0, 17
    if 0 >= uint32(stor403.field_0):
        revert with 0, 'DRB/expired-draw'
    if not bufferCardinality:
        if 0 > !bufferCardinality:
            revert with 0, 17
        if uint32(stor403.field_0) < 0:
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor403.field_0) % uint32(stor403.field_0)) >= 256:
            revert with 0, 50
        mem[1280] = stor4[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0
        idx = 1280
        s = 0
        while 1792 > idx + 32:
            mem[idx + 32] = stor4[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[1792] = stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0
        idx = 0
        s = 1280
        t = 2016
        while idx < 16:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0, 
               stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
               mem[2016 len 512],
               stor6[4 * uint32(uint32(stor403.field_64) % uint32(stor403.field_64))],
               uint32(stor403.field_0)
    if uint32(stor403.field_32) > !uint32(stor403.field_0):
        revert with 0, 17
    if uint32(stor403.field_32) + uint32(stor403.field_0) < 1:
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(stor403.field_32) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) > !uint32(stor403.field_0):
        revert with 0, 17
    if uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) < 0:
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) % uint32(stor403.field_0)) >= 256:
        revert with 0, 50
    mem[1280] = stor4[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0
    idx = 1280
    s = 0
    while 1792 > idx + 32:
        mem[idx + 32] = stor4[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[1792] = stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0
    idx = 0
    s = 1280
    t = 2016
    while idx < 16:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0, 
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))].field_0,
           mem[2016 len 512],
           stor6[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) % uint32(stor403.field_64))],
           uint32(stor403.field_0)
}

function getPrizeDistribution(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == uint32(stor403.field_32):
        if not uint32(stor403.field_0):
            revert with 0, 'DRB/future-draw'
    if arg1 > uint32(stor403.field_0):
        revert with 0, 'DRB/future-draw'
    if uint32(stor403.field_0) < arg1:
        revert with 0, 17
    if uint32(uint32(stor403.field_0) - arg1) >= uint32(stor403.field_0):
        revert with 0, 'DRB/expired-draw'
    if not bufferCardinality:
        if 0 > !bufferCardinality:
            revert with 0, 17
        if uint32(stor403.field_0) < uint32(uint32(stor403.field_0) - arg1):
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_0)) >= 256:
            revert with 0, 50
        mem[2080] = stor4[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0
        idx = 2080
        s = 0
        while 2592 > idx + 32:
            mem[idx + 32] = stor4[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[2592] = stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0
        idx = 0
        s = 2080
        t = 2816
        while idx < 16:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0, 
               stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
               stor3[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
               mem[2816 len 512],
               stor6[4 * uint32(uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))]
    if uint32(stor403.field_32) > !uint32(stor403.field_0):
        revert with 0, 17
    if uint32(stor403.field_32) + uint32(stor403.field_0) < 1:
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(stor403.field_32) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) > !uint32(stor403.field_0):
        revert with 0, 17
    if uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) < uint32(uint32(stor403.field_0) - arg1):
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_0)) >= 256:
        revert with 0, 50
    mem[2080] = stor4[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0
    idx = 2080
    s = 0
    while 2592 > idx + 32:
        mem[idx + 32] = stor4[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[2592] = stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0
    idx = 0
    s = 2080
    t = 2816
    while idx < 16:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0, 
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
           stor3[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))].field_0,
           mem[2816 len 512],
           stor6[4 * uint32(uint32(uint32(stor403.field_32) + uint32(stor403.field_64) - 1 % uint32(stor403.field_64)) + uint32(stor403.field_64) - uint32(uint32(stor403.field_0) - arg1) % uint32(stor403.field_64))]
}

function sub_ce336ce9(?) payable {
    require calldata.size - 4 >= 800
    require cd[4] == uint32(cd[4])
    require calldata.size - 36 >= 768
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if 0 == uint32(stor403.field_32):
        if not uint32(stor403.field_0):
            revert with 0, 'DRB/future-draw'
    if uint32(cd[4]) > uint32(stor403.field_0):
        revert with 0, 'DRB/future-draw'
    if uint32(stor403.field_0) < uint32(cd[4]):
        revert with 0, 17
    if uint32(uint32(stor403.field_0) - uint32(cd[4])) >= uint32(stor403.field_0):
        revert with 0, 'DRB/expired-draw'
    if not bufferCardinality:
        if 0 > !bufferCardinality:
            revert with 0, 17
        if uint32(stor403.field_0) < uint32(uint32(stor403.field_0) - uint32(cd[4])):
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0)) >= 256:
            revert with 0, 50
        require cd[36] == uint8(cd[36])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 = uint8(cd[36])
        require cd[68] == uint8(cd[68])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 = uint8(cd[36])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_8 = uint8(cd[68])
        require cd[100] == uint32(cd[100])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_16 = uint32(cd[100])
        require cd[132] == uint32(cd[132])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_48 = uint32(cd[132])
        require cd[164] == uint32(cd[164])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_80 = uint32(cd[164])
        require cd[196] == uint32(cd[196])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_112 = uint32(cd[196])
        require cd[228] == Mask(104, 0, cd[228])
        stor3[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_144 = Mask(104, 0, cd[228])
        idx = 0
        s = 0
        t = 260
        while idx < 16:
            require cd[t] == uint32(cd[t])
            stor4[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or stor4[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 and !(test266151307() << 8 * s)
            if s + 4 <= 28:
                idx = idx + 1
                s = s + 4
                t = t + 32
                continue 
            idx = idx + 1
            s = 0
            t = t + 32
            continue 
        stor6[4 * uint32(uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))] = cd[772]
    else:
        if uint32(stor403.field_32) > !uint32(stor403.field_0):
            revert with 0, 17
        if uint32(stor403.field_32) + uint32(stor403.field_0) < 1:
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor403.field_32) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) > !uint32(stor403.field_0):
            revert with 0, 17
        if uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) < uint32(uint32(stor403.field_0) - uint32(cd[4])):
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0)) >= 256:
            revert with 0, 50
        require cd[36] == uint8(cd[36])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 = uint8(cd[36])
        require cd[68] == uint8(cd[68])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 = uint8(cd[36])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_8 = uint8(cd[68])
        require cd[100] == uint32(cd[100])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_16 = uint32(cd[100])
        require cd[132] == uint32(cd[132])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_48 = uint32(cd[132])
        require cd[164] == uint32(cd[164])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_80 = uint32(cd[164])
        require cd[196] == uint32(cd[196])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_112 = uint32(cd[196])
        require cd[228] == Mask(104, 0, cd[228])
        stor3[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_144 = Mask(104, 0, cd[228])
        idx = 0
        s = 0
        t = 260
        while idx < 16:
            require cd[t] == uint32(cd[t])
            stor4[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 = uint32(cd[t]) << 8 * s and test266151307() << 8 * s or stor4[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))].field_0 and !(test266151307() << 8 * s)
            if s + 4 <= 28:
                idx = idx + 1
                s = s + 4
                t = t + 32
                continue 
            idx = idx + 1
            s = 0
            t = t + 32
            continue 
        stor6[4 * uint32(uint32(uint32(stor403.field_0) + uint32(stor403.field_0) - 1 % uint32(stor403.field_0)) + uint32(stor403.field_0) - uint32(uint32(stor403.field_0) - uint32(cd[4])) % uint32(stor403.field_0))] = cd[772]
    require cd[36] == uint8(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    require cd[164] == uint32(cd[164])
    require cd[196] == uint32(cd[196])
    require cd[228] == Mask(104, 0, cd[228])
    idx = 0
    s = 260
    t = 416
    while idx < 16:
        require cd[s] == uint32(cd[s])
        mem[t] = uint32(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x2d81da83: cd[36] << 248, cd[68] << 248, cd[100] << 224, cd[132] << 224, cd[164] << 224, cd[196] << 224, cd[228] << 152, mem[416 len 512], cd[772], uint32(cd[4])
    return uint32(cd[4])
}

function sub_d30a5daf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = uint32(stor403.field_0)
    mem[128] = uint32(stor403.field_32)
    mem[160] = bufferCardinality
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[192] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 224
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
            _125 = mem[64]
            mem[64] = mem[64] + 288
            mem[_125] = 0
            mem[_125 + 32] = 0
            mem[_125 + 64] = 0
            mem[_125 + 96] = 0
            mem[_125 + 128] = 0
            mem[_125 + 160] = 0
            mem[_125 + 192] = 0
            _128 = mem[64]
            mem[64] = mem[64] + 512
            mem[_128 len 512] = call.data[calldata.size len 512]
            mem[_125 + 224] = _128
            mem[_125 + 256] = 0
            if mem[156 len 4] != 0:
                if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[124 len 4]:
                    revert with 0, 'DRB/future-draw'
                _146 = mem[96]
                if mem[124 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 17
                if uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[188 len 4]:
                    revert with 0, 'DRB/expired-draw'
                _158 = mem[128]
                _159 = mem[160]
                if not mem[188 len 4]:
                    _172 = mem[160]
                    if 0 > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _193 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_193] = stor3[4 * uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_193 + 32] = stor3[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_8
                    mem[_193 + 64] = stor3[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_16
                    mem[_193 + 96] = stor3[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_48
                    mem[_193 + 128] = stor3[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_80
                    mem[_193 + 160] = stor3[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_112
                    mem[_193 + 192] = stor3[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_144
                    _194 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_194] = stor4[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_0
                    s = _194
                    t = 0
                    while _194 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_193 + 224] = _194
                    mem[_193 + 256] = stor6[4 * uint32(uint32(_172) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_172))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _193
                else:
                    if mem[156 len 4] > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[156 len 4] + mem[188 len 4] < 1:
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    _191 = mem[160]
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) > !mem[188 len 4]:
                        revert with 0, 17
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _207 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_207] = stor3[4 * uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_207 + 32] = stor3[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_8
                    mem[_207 + 64] = stor3[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_16
                    mem[_207 + 96] = stor3[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_48
                    mem[_207 + 128] = stor3[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_80
                    mem[_207 + 160] = stor3[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_112
                    mem[_207 + 192] = stor3[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_144
                    _208 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_208] = stor4[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_0
                    s = _208
                    t = 0
                    while _208 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_207 + 224] = _208
                    mem[_207 + 256] = stor6[4 * uint32(uint32(uint32(_158) + uint32(_159) - 1 % uint32(_159)) + uint32(_191) - uint32(uint32(_146) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_191))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _207
            else:
                if not mem[124 len 4]:
                    revert with 0, 'DRB/future-draw'
                if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[124 len 4]:
                    revert with 0, 'DRB/future-draw'
                _151 = mem[96]
                if mem[124 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 17
                if uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[188 len 4]:
                    revert with 0, 'DRB/expired-draw'
                _163 = mem[128]
                _164 = mem[160]
                if not mem[188 len 4]:
                    _177 = mem[160]
                    if 0 > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _195 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_195] = stor3[4 * uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_195 + 32] = stor3[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_8
                    mem[_195 + 64] = stor3[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_16
                    mem[_195 + 96] = stor3[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_48
                    mem[_195 + 128] = stor3[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_80
                    mem[_195 + 160] = stor3[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_112
                    mem[_195 + 192] = stor3[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_144
                    _196 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_196] = stor4[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_0
                    s = _196
                    t = 0
                    while _196 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_195 + 224] = _196
                    mem[_195 + 256] = stor6[4 * uint32(uint32(_177) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_177))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _195
                else:
                    if mem[156 len 4] > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[156 len 4] + mem[188 len 4] < 1:
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    _192 = mem[160]
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) > !mem[188 len 4]:
                        revert with 0, 17
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _209 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_209] = stor3[4 * uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_209 + 32] = stor3[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_8
                    mem[_209 + 64] = stor3[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_16
                    mem[_209 + 96] = stor3[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_48
                    mem[_209 + 128] = stor3[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_80
                    mem[_209 + 160] = stor3[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_112
                    mem[_209 + 192] = stor3[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_144
                    _210 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_210] = stor4[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_0
                    s = _210
                    t = 0
                    while _210 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_209 + 224] = _210
                    mem[_209 + 256] = stor6[4 * uint32(uint32(uint32(_163) + uint32(_164) - 1 % uint32(_164)) + uint32(_192) - uint32(uint32(_151) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_192))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _209
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _114 = mem[192]
        mem[mem[64] + 32] = mem[192]
        idx = 0
        s = mem[64] + 64
        t = 224
        while idx < _114:
            _282 = mem[t]
            mem[s] = mem[mem[t] + 31 len 1]
            mem[s + 32] = mem[_282 + 63 len 1]
            mem[s + 64] = mem[_282 + 92 len 4]
            mem[s + 96] = mem[_282 + 124 len 4]
            mem[s + 128] = mem[_282 + 156 len 4]
            mem[s + 160] = mem[_282 + 188 len 4]
            mem[s + 192] = mem[_282 + 211 len 13]
            u = 0
            v = mem[_282 + 224]
            w = s + 224
            while u < 16:
                mem[w] = mem[v + 28 len 4]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[s + 736] = mem[_282 + 256]
            idx = idx + 1
            s = s + 768
            t = t + 32
            continue 
    else:
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[(32 * ('cd', 4).length) + 320] = 0
        mem[(32 * ('cd', 4).length) + 352] = 0
        mem[(32 * ('cd', 4).length) + 384] = 0
        mem[(32 * ('cd', 4).length) + 416] = 0
        mem[64] = (32 * ('cd', 4).length) + 1024
        mem[(32 * ('cd', 4).length) + 512 len 512] = call.data[calldata.size len 512]
        mem[(32 * ('cd', 4).length) + 448] = (32 * ('cd', 4).length) + 512
        mem[(32 * ('cd', 4).length) + 480] = 0
        mem[var19002] = (32 * ('cd', 4).length) + 224
        s = (32 * ('cd', 4).length) + 448
        s = (32 * ('cd', 4).length) + 224
        s = var19002
        idx = var19003
        while idx - 1:
            _289 = mem[64]
            mem[64] = mem[64] + 288
            mem[_289] = 0
            mem[_289 + 32] = 0
            mem[_289 + 64] = 0
            mem[_289 + 96] = 0
            mem[_289 + 128] = 0
            mem[_289 + 160] = 0
            mem[_289 + 192] = 0
            mem[64] = mem[64] + 512
            mem[(32 * ('cd', 4).length) + 512 len 512] = call.data[calldata.size len 512]
            mem[_289 + 224] = (32 * ('cd', 4).length) + 512
            mem[_289 + 256] = 0
            mem[s + 32] = _289
            s = _289 + 224
            s = _289
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
            _360 = mem[64]
            mem[64] = mem[64] + 288
            mem[_360] = 0
            mem[_360 + 32] = 0
            mem[_360 + 64] = 0
            mem[_360 + 96] = 0
            mem[_360 + 128] = 0
            mem[_360 + 160] = 0
            mem[_360 + 192] = 0
            _362 = mem[64]
            mem[64] = mem[64] + 512
            mem[_362 len 512] = call.data[calldata.size len 512]
            mem[_360 + 224] = _362
            mem[_360 + 256] = 0
            if mem[156 len 4] != 0:
                if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[124 len 4]:
                    revert with 0, 'DRB/future-draw'
                _368 = mem[96]
                if mem[124 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 17
                if uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[188 len 4]:
                    revert with 0, 'DRB/expired-draw'
                _377 = mem[128]
                _378 = mem[160]
                if not mem[188 len 4]:
                    _386 = mem[160]
                    if 0 > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _390 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_390] = stor3[4 * uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_390 + 32] = stor3[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_8
                    mem[_390 + 64] = stor3[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_16
                    mem[_390 + 96] = stor3[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_48
                    mem[_390 + 128] = stor3[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_80
                    mem[_390 + 160] = stor3[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_112
                    mem[_390 + 192] = stor3[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_144
                    _391 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_391] = stor4[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_0
                    s = _391
                    t = 0
                    while _391 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_390 + 224] = _391
                    mem[_390 + 256] = stor6[4 * uint32(uint32(_386) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_386))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _390
                else:
                    if mem[156 len 4] > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[156 len 4] + mem[188 len 4] < 1:
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    _388 = mem[160]
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) > !mem[188 len 4]:
                        revert with 0, 17
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _396 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_396] = stor3[4 * uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_396 + 32] = stor3[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_8
                    mem[_396 + 64] = stor3[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_16
                    mem[_396 + 96] = stor3[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_48
                    mem[_396 + 128] = stor3[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_80
                    mem[_396 + 160] = stor3[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_112
                    mem[_396 + 192] = stor3[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_144
                    _397 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_397] = stor4[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_0
                    s = _397
                    t = 0
                    while _397 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_396 + 224] = _397
                    mem[_396 + 256] = stor6[4 * uint32(uint32(uint32(_377) + uint32(_378) - 1 % uint32(_378)) + uint32(_388) - uint32(uint32(_368) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_388))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _396
            else:
                if not mem[124 len 4]:
                    revert with 0, 'DRB/future-draw'
                if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[124 len 4]:
                    revert with 0, 'DRB/future-draw'
                _373 = mem[96]
                if mem[124 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 17
                if uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[188 len 4]:
                    revert with 0, 'DRB/expired-draw'
                _382 = mem[128]
                _383 = mem[160]
                if not mem[188 len 4]:
                    _387 = mem[160]
                    if 0 > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _392 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_392] = stor3[4 * uint32(mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_392 + 32] = stor3[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_8
                    mem[_392 + 64] = stor3[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_16
                    mem[_392 + 96] = stor3[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_48
                    mem[_392 + 128] = stor3[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_80
                    mem[_392 + 160] = stor3[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_112
                    mem[_392 + 192] = stor3[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_144
                    _393 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_393] = stor4[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_0
                    s = _393
                    t = 0
                    while _393 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_392 + 224] = _393
                    mem[_392 + 256] = stor6[4 * uint32(uint32(_387) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_387))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _392
                else:
                    if mem[156 len 4] > !mem[188 len 4]:
                        revert with 0, 17
                    if mem[156 len 4] + mem[188 len 4] < 1:
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    _389 = mem[160]
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) > !mem[188 len 4]:
                        revert with 0, 17
                    if uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] < uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[188 len 4]:
                        revert with 0, 18
                    if uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4]) >= 256:
                        revert with 0, 50
                    _398 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_398] = stor3[4 * uint32(uint32(mem[156 len 4] + mem[188 len 4] - 1 % mem[188 len 4]) + mem[188 len 4] - uint32(mem[124 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[188 len 4])].field_0
                    mem[_398 + 32] = stor3[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_8
                    mem[_398 + 64] = stor3[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_16
                    mem[_398 + 96] = stor3[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_48
                    mem[_398 + 128] = stor3[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_80
                    mem[_398 + 160] = stor3[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_112
                    mem[_398 + 192] = stor3[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_144
                    _399 = mem[64]
                    mem[64] = mem[64] + 512
                    mem[_399] = stor4[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_0
                    s = _399
                    t = 0
                    while _399 + 512 > s + 32:
                        mem[s + 32] = stor4[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))].field_8 * (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        s = s + 32
                        t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                        continue 
                    mem[_398 + 224] = _399
                    mem[_398 + 256] = stor6[4 * uint32(uint32(uint32(_382) + uint32(_383) - 1 % uint32(_383)) + uint32(_389) - uint32(uint32(_373) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_389))]
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[(32 * idx) + 224] = _398
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _350 = mem[192]
        mem[mem[64] + 32] = mem[192]
        idx = 0
        s = mem[64] + 64
        t = 224
        while idx < _350:
            _408 = mem[t]
            mem[s] = mem[mem[t] + 31 len 1]
            mem[s + 32] = mem[_408 + 63 len 1]
            mem[s + 64] = mem[_408 + 92 len 4]
            mem[s + 96] = mem[_408 + 124 len 4]
            mem[s + 128] = mem[_408 + 156 len 4]
            mem[s + 160] = mem[_408 + 188 len 4]
            mem[s + 192] = mem[_408 + 211 len 13]
            u = 0
            v = mem[_408 + 224]
            w = s + 224
            while u < 16:
                mem[w] = mem[v + 28 len 4]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[s + 736] = mem[_408 + 256]
            idx = idx + 1
            s = s + 768
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
