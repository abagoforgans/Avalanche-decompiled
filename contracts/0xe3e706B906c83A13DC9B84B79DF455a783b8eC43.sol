contract main {




// =====================  Runtime code  =====================


const sub_8200d873(?) = 256


address owner;
address pendingOwner;
address managerAddress;
array of uint256 stor3;
array of struct stor4;
uint32 stor515;
uint32 stor515; offset 32
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

function getDrawCount() payable {
    if not uint32(stor515.field_0):
        return 0
    if uint32(stor515.field_32) >= 256:
        revert with 0, 50
    return uint32(stor515.field_0)
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

function getOldestDraw() payable {
    if uint32(stor515.field_32) >= 256:
        revert with 0, 50
    if stor4[uint32(stor515.field_32)].field_32:
        return stor3[uint32(stor515.field_32)], 
               stor4[uint32(stor515.field_32)].field_0,
               stor4[uint32(stor515.field_32)].field_0,
               stor4[uint32(stor515.field_32)].field_0,
               stor4[uint32(stor515.field_32)].field_160
    return stor3.length, uint32(stor4.length), uint64(stor4.length), uint64(stor4.length), stor4.length.field_160
}

function sub_089eb925(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == uint32(arg2)
    require arg3 == uint64(arg3)
    require arg4 == uint64(arg4)
    require arg5 == uint32(arg5)
    if managerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Manageable/caller-not-manager-or-owner'
    if uint32(stor515.field_32) >= 256:
        revert with 0, 50
    stor3[uint32(stor515.field_32)] = arg1
    stor4[uint32(stor515.field_32)].field_0 = uint32(arg2)
    stor4[uint32(stor515.field_32)].field_32 = uint64(arg3)
    stor4[uint32(stor515.field_32)].field_96 = uint64(arg4)
    stor4[uint32(stor515.field_32)].field_160 = uint32(arg5)
    if uint32(stor515.field_32) != 0:
        if 1 > -uint32(stor515.field_0) + test266151307():
            revert with 0, 17
        if uint32(arg2) != uint32(uint32(stor515.field_0) + 1):
            revert with 0, 'DRB/must-be-contig'
    else:
        if uint32(stor515.field_0):
            if 1 > -uint32(stor515.field_0) + test266151307():
                revert with 0, 17
            if uint32(arg2) != uint32(uint32(stor515.field_0) + 1):
                revert with 0, 'DRB/must-be-contig'
    if 1 > !uint32(stor515.field_32):
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    uint32(stor515.field_0) = uint32(arg2)
    uint32(stor515.field_32) = uint32(uint32(stor515.field_32) + 1 % uint32(stor515.field_0))
    emit 0xc6f337e5: arg1, arg2 << 224, arg3 << 192, arg4 << 192, uint32(arg5), uint32(arg2)
    return uint32(arg2)
}

function getNewestDraw() payable {
    if 0 == uint32(stor515.field_32):
        if not uint32(stor515.field_0):
            revert with 0, 'DRB/future-draw'
    if uint32(stor515.field_0) > uint32(stor515.field_0):
        revert with 0, 'DRB/future-draw'
    if uint32(stor515.field_0) < uint32(stor515.field_0):
        revert with 0, 17
    if 0 >= uint32(stor515.field_0):
        revert with 0, 'DRB/expired-draw'
    if not bufferCardinality:
        if 0 > !bufferCardinality:
            revert with 0, 17
        if uint32(stor515.field_0) < 0:
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor515.field_0) % uint32(stor515.field_0)) >= 256:
            revert with 0, 50
        return stor3[2 * uint32(uint32(stor515.field_64) % uint32(stor515.field_64))], 
               stor4[2 * uint32(uint32(stor515.field_64) % uint32(stor515.field_64))].field_0,
               stor4[2 * uint32(uint32(stor515.field_64) % uint32(stor515.field_64))].field_0,
               stor4[2 * uint32(uint32(stor515.field_64) % uint32(stor515.field_64))].field_0,
               stor4[2 * uint32(uint32(stor515.field_64) % uint32(stor515.field_64))].field_160
    if uint32(stor515.field_32) > !uint32(stor515.field_0):
        revert with 0, 17
    if uint32(stor515.field_32) + uint32(stor515.field_0) < 1:
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(stor515.field_32) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) > !uint32(stor515.field_0):
        revert with 0, 17
    if uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) < 0:
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) % uint32(stor515.field_0)) >= 256:
        revert with 0, 50
    return stor3[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) % uint32(stor515.field_64))], 
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) % uint32(stor515.field_64))].field_0,
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) % uint32(stor515.field_64))].field_0,
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) % uint32(stor515.field_64))].field_0,
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) % uint32(stor515.field_64))].field_160
}

function getDraw(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == uint32(stor515.field_32):
        if not uint32(stor515.field_0):
            revert with 0, 'DRB/future-draw'
    if arg1 > uint32(stor515.field_0):
        revert with 0, 'DRB/future-draw'
    if uint32(stor515.field_0) < arg1:
        revert with 0, 17
    if uint32(uint32(stor515.field_0) - arg1) >= uint32(stor515.field_0):
        revert with 0, 'DRB/expired-draw'
    if not bufferCardinality:
        if 0 > !bufferCardinality:
            revert with 0, 17
        if uint32(stor515.field_0) < uint32(uint32(stor515.field_0) - arg1):
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_0)) >= 256:
            revert with 0, 50
        return stor3[2 * uint32(uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))], 
               stor4[2 * uint32(uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_0,
               stor4[2 * uint32(uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_0,
               stor4[2 * uint32(uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_0,
               stor4[2 * uint32(uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_160
    if uint32(stor515.field_32) > !uint32(stor515.field_0):
        revert with 0, 17
    if uint32(stor515.field_32) + uint32(stor515.field_0) < 1:
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(stor515.field_32) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) > !uint32(stor515.field_0):
        revert with 0, 17
    if uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) < uint32(uint32(stor515.field_0) - arg1):
        revert with 0, 17
    if not bufferCardinality:
        revert with 0, 18
    if uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_0)) >= 256:
        revert with 0, 50
    return stor3[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))], 
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_0,
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_0,
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_0,
           stor4[2 * uint32(uint32(uint32(stor515.field_32) + uint32(stor515.field_64) - 1 % uint32(stor515.field_64)) + uint32(stor515.field_64) - uint32(uint32(stor515.field_0) - arg1) % uint32(stor515.field_64))].field_160
}

function sub_d7bcb86b(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == uint32(arg2)
    require arg3 == uint64(arg3)
    require arg4 == uint64(arg4)
    require arg5 == uint32(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if 0 == uint32(stor515.field_32):
        if not uint32(stor515.field_0):
            revert with 0, 'DRB/future-draw'
    if uint32(arg2) > uint32(stor515.field_0):
        revert with 0, 'DRB/future-draw'
    if uint32(stor515.field_0) < uint32(arg2):
        revert with 0, 17
    if uint32(uint32(stor515.field_0) - uint32(arg2)) >= uint32(stor515.field_0):
        revert with 0, 'DRB/expired-draw'
    if not bufferCardinality:
        if 0 > !bufferCardinality:
            revert with 0, 17
        if uint32(stor515.field_0) < uint32(uint32(stor515.field_0) - uint32(arg2)):
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0)) >= 256:
            revert with 0, 50
        stor3[2 * uint32(uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))] = arg1
        stor4[2 * uint32(uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_0 = uint32(arg2)
        stor4[2 * uint32(uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_32 = uint64(arg3)
        stor4[2 * uint32(uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_96 = uint64(arg4)
        stor4[2 * uint32(uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_160 = uint32(arg5)
    else:
        if uint32(stor515.field_32) > !uint32(stor515.field_0):
            revert with 0, 17
        if uint32(stor515.field_32) + uint32(stor515.field_0) < 1:
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(stor515.field_32) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) > !uint32(stor515.field_0):
            revert with 0, 17
        if uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) < uint32(uint32(stor515.field_0) - uint32(arg2)):
            revert with 0, 17
        if not bufferCardinality:
            revert with 0, 18
        if uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0)) >= 256:
            revert with 0, 50
        stor3[2 * uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))] = arg1
        stor4[2 * uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_0 = uint32(arg2)
        stor4[2 * uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_32 = uint64(arg3)
        stor4[2 * uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_96 = uint64(arg4)
        stor4[2 * uint32(uint32(uint32(stor515.field_0) + uint32(stor515.field_0) - 1 % uint32(stor515.field_0)) + uint32(stor515.field_0) - uint32(uint32(stor515.field_0) - uint32(arg2)) % uint32(stor515.field_0))].field_160 = uint32(arg5)
    emit 0xc6f337e5: arg1, arg2 << 224, arg3 << 192, arg4 << 192, uint32(arg5), uint32(arg2)
    return uint32(arg2)
}

function sub_d0bb78f3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        mem[64] = (32 * ('cd', 4).length) + 224
        mem[(32 * ('cd', 4).length) + 128] = uint32(stor515.field_0)
        mem[(32 * ('cd', 4).length) + 160] = uint32(stor515.field_32)
        mem[(32 * ('cd', 4).length) + 192] = bufferCardinality
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
            if mem[(32 * ('cd', 4).length) + 188 len 4] != 0:
                if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[(32 * ('cd', 4).length) + 156 len 4]:
                    revert with 0, 'DRB/future-draw'
                _117 = mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * ('cd', 4).length) + 156 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 17
                if uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[(32 * ('cd', 4).length) + 220 len 4]:
                    revert with 0, 'DRB/expired-draw'
                _131 = mem[(32 * ('cd', 4).length) + 160]
                _132 = mem[(32 * ('cd', 4).length) + 192]
                if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                    _150 = mem[(32 * ('cd', 4).length) + 192]
                    if 0 > !mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 17
                    if mem[(32 * ('cd', 4).length) + 220 len 4] < uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 18
                    if uint32(mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4]) >= 256:
                        revert with 0, 50
                    _163 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_163] = stor3[2 * uint32(mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4])]
                    mem[_163 + 32] = stor4[2 * uint32(uint32(_150) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_150))].field_0
                    mem[_163 + 64] = stor4[2 * uint32(uint32(_150) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_150))].field_32
                    mem[_163 + 96] = stor4[2 * uint32(uint32(_150) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_150))].field_96
                    mem[_163 + 128] = stor4[2 * uint32(uint32(_150) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_150))].field_160
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _163
                else:
                    if mem[(32 * ('cd', 4).length) + 188 len 4] > !mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 17
                    if mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] < 1:
                        revert with 0, 17
                    if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 18
                    _159 = mem[(32 * ('cd', 4).length) + 192]
                    if uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) > !mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 17
                    if uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) + mem[(32 * ('cd', 4).length) + 220 len 4] < uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 18
                    if uint32(uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) + mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4]) >= 256:
                        revert with 0, 50
                    _171 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_171] = stor3[2 * uint32(uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) + mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4])]
                    mem[_171 + 32] = stor4[2 * uint32(uint32(uint32(_131) + uint32(_132) - 1 % uint32(_132)) + uint32(_159) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_159))].field_0
                    mem[_171 + 64] = stor4[2 * uint32(uint32(uint32(_131) + uint32(_132) - 1 % uint32(_132)) + uint32(_159) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_159))].field_32
                    mem[_171 + 96] = stor4[2 * uint32(uint32(uint32(_131) + uint32(_132) - 1 % uint32(_132)) + uint32(_159) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_159))].field_96
                    mem[_171 + 128] = stor4[2 * uint32(uint32(uint32(_131) + uint32(_132) - 1 % uint32(_132)) + uint32(_159) - uint32(uint32(_117) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_159))].field_160
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _171
            else:
                if not mem[(32 * ('cd', 4).length) + 156 len 4]:
                    revert with 0, 'DRB/future-draw'
                if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[(32 * ('cd', 4).length) + 156 len 4]:
                    revert with 0, 'DRB/future-draw'
                _122 = mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * ('cd', 4).length) + 156 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 17
                if uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[(32 * ('cd', 4).length) + 220 len 4]:
                    revert with 0, 'DRB/expired-draw'
                _140 = mem[(32 * ('cd', 4).length) + 160]
                _141 = mem[(32 * ('cd', 4).length) + 192]
                if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                    _155 = mem[(32 * ('cd', 4).length) + 192]
                    if 0 > !mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 17
                    if mem[(32 * ('cd', 4).length) + 220 len 4] < uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 18
                    if uint32(mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4]) >= 256:
                        revert with 0, 50
                    _165 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_165] = stor3[2 * uint32(mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4])]
                    mem[_165 + 32] = stor4[2 * uint32(uint32(_155) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_155))].field_0
                    mem[_165 + 64] = stor4[2 * uint32(uint32(_155) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_155))].field_32
                    mem[_165 + 96] = stor4[2 * uint32(uint32(_155) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_155))].field_96
                    mem[_165 + 128] = stor4[2 * uint32(uint32(_155) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_155))].field_160
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _165
                else:
                    if mem[(32 * ('cd', 4).length) + 188 len 4] > !mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 17
                    if mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] < 1:
                        revert with 0, 17
                    if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 18
                    _160 = mem[(32 * ('cd', 4).length) + 192]
                    if uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) > !mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 17
                    if uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) + mem[(32 * ('cd', 4).length) + 220 len 4] < uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                        revert with 0, 17
                    if not mem[(32 * ('cd', 4).length) + 220 len 4]:
                        revert with 0, 18
                    if uint32(uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) + mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4]) >= 256:
                        revert with 0, 50
                    _173 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_173] = stor3[2 * uint32(uint32(mem[(32 * ('cd', 4).length) + 188 len 4] + mem[(32 * ('cd', 4).length) + 220 len 4] - 1 % mem[(32 * ('cd', 4).length) + 220 len 4]) + mem[(32 * ('cd', 4).length) + 220 len 4] - uint32(mem[(32 * ('cd', 4).length) + 156 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[(32 * ('cd', 4).length) + 220 len 4])]
                    mem[_173 + 32] = stor4[2 * uint32(uint32(uint32(_140) + uint32(_141) - 1 % uint32(_141)) + uint32(_160) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_160))].field_0
                    mem[_173 + 64] = stor4[2 * uint32(uint32(uint32(_140) + uint32(_141) - 1 % uint32(_141)) + uint32(_160) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_160))].field_32
                    mem[_173 + 96] = stor4[2 * uint32(uint32(uint32(_140) + uint32(_141) - 1 % uint32(_141)) + uint32(_160) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_160))].field_96
                    mem[_173 + 128] = stor4[2 * uint32(uint32(uint32(_140) + uint32(_141) - 1 % uint32(_141)) + uint32(_160) - uint32(uint32(_122) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_160))].field_160
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _173
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _92 = mem[64]
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _94:
            _179 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_179 + 60 len 4]
            mem[s + 64] = mem[_179 + 88 len 8]
            mem[s + 96] = mem[_179 + 120 len 8]
            mem[s + 128] = mem[_179 + 156 len 4]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _92 + (160 * _94) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 288
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    _93 = mem[64]
    mem[64] = mem[64] + 96
    mem[_93] = uint32(stor515.field_0)
    mem[_93 + 32] = uint32(stor515.field_32)
    mem[_93 + 64] = bufferCardinality
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        if mem[_93 + 60 len 4] != 0:
            if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[_93 + 28 len 4]:
                revert with 0, 'DRB/future-draw'
            _199 = mem[_93]
            if mem[_93 + 28 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 17
            if uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[_93 + 92 len 4]:
                revert with 0, 'DRB/expired-draw'
            _208 = mem[_93 + 32]
            _209 = mem[_93 + 64]
            if not mem[_93 + 92 len 4]:
                _217 = mem[_93 + 64]
                if 0 > !mem[_93 + 92 len 4]:
                    revert with 0, 17
                if mem[_93 + 92 len 4] < uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                    revert with 0, 17
                if not mem[_93 + 92 len 4]:
                    revert with 0, 18
                if uint32(mem[_93 + 92 len 4] - uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[_93 + 92 len 4]) >= 256:
                    revert with 0, 50
                _221 = mem[64]
                mem[64] = mem[64] + 160
                mem[_221] = stor3[2 * uint32(uint32(_217) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_217))]
                mem[_221 + 32] = stor4[2 * uint32(uint32(_217) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_217))].field_0
                mem[_221 + 64] = stor4[2 * uint32(uint32(_217) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_217))].field_32
                mem[_221 + 96] = stor4[2 * uint32(uint32(_217) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_217))].field_96
                mem[_221 + 128] = stor4[2 * uint32(uint32(_217) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_217))].field_160
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _221
            else:
                if mem[_93 + 60 len 4] > !mem[_93 + 92 len 4]:
                    revert with 0, 17
                if mem[_93 + 60 len 4] + mem[_93 + 92 len 4] < 1:
                    revert with 0, 17
                if not mem[_93 + 92 len 4]:
                    revert with 0, 18
                _219 = mem[_93 + 64]
                if uint32(mem[_93 + 60 len 4] + mem[_93 + 92 len 4] - 1 % mem[_93 + 92 len 4]) > !mem[_93 + 92 len 4]:
                    revert with 0, 17
                if uint32(mem[_93 + 60 len 4] + mem[_93 + 92 len 4] - 1 % mem[_93 + 92 len 4]) + mem[_93 + 92 len 4] < uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                    revert with 0, 17
                if not mem[_93 + 92 len 4]:
                    revert with 0, 18
                if uint32(uint32(mem[_93 + 60 len 4] + mem[_93 + 92 len 4] - 1 % mem[_93 + 92 len 4]) + mem[_93 + 92 len 4] - uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[_93 + 92 len 4]) >= 256:
                    revert with 0, 50
                _225 = mem[64]
                mem[64] = mem[64] + 160
                mem[_225] = stor3[2 * uint32(uint32(uint32(_208) + uint32(_209) - 1 % uint32(_209)) + uint32(_219) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_219))]
                mem[_225 + 32] = stor4[2 * uint32(uint32(uint32(_208) + uint32(_209) - 1 % uint32(_209)) + uint32(_219) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_219))].field_0
                mem[_225 + 64] = stor4[2 * uint32(uint32(uint32(_208) + uint32(_209) - 1 % uint32(_209)) + uint32(_219) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_219))].field_32
                mem[_225 + 96] = stor4[2 * uint32(uint32(uint32(_208) + uint32(_209) - 1 % uint32(_209)) + uint32(_219) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_219))].field_96
                mem[_225 + 128] = stor4[2 * uint32(uint32(uint32(_208) + uint32(_209) - 1 % uint32(_209)) + uint32(_219) - uint32(uint32(_199) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_219))].field_160
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _225
        else:
            if not mem[_93 + 28 len 4]:
                revert with 0, 'DRB/future-draw'
            if uint32(cd[((32 * idx) + cd[4] + 36)]) > mem[_93 + 28 len 4]:
                revert with 0, 'DRB/future-draw'
            _204 = mem[_93]
            if mem[_93 + 28 len 4] < uint32(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 17
            if uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) >= mem[_93 + 92 len 4]:
                revert with 0, 'DRB/expired-draw'
            _213 = mem[_93 + 32]
            _214 = mem[_93 + 64]
            if not mem[_93 + 92 len 4]:
                _218 = mem[_93 + 64]
                if 0 > !mem[_93 + 92 len 4]:
                    revert with 0, 17
                if mem[_93 + 92 len 4] < uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                    revert with 0, 17
                if not mem[_93 + 92 len 4]:
                    revert with 0, 18
                if uint32(mem[_93 + 92 len 4] - uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[_93 + 92 len 4]) >= 256:
                    revert with 0, 50
                _223 = mem[64]
                mem[64] = mem[64] + 160
                mem[_223] = stor3[2 * uint32(uint32(_218) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_218))]
                mem[_223 + 32] = stor4[2 * uint32(uint32(_218) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_218))].field_0
                mem[_223 + 64] = stor4[2 * uint32(uint32(_218) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_218))].field_32
                mem[_223 + 96] = stor4[2 * uint32(uint32(_218) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_218))].field_96
                mem[_223 + 128] = stor4[2 * uint32(uint32(_218) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_218))].field_160
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _223
            else:
                if mem[_93 + 60 len 4] > !mem[_93 + 92 len 4]:
                    revert with 0, 17
                if mem[_93 + 60 len 4] + mem[_93 + 92 len 4] < 1:
                    revert with 0, 17
                if not mem[_93 + 92 len 4]:
                    revert with 0, 18
                _220 = mem[_93 + 64]
                if uint32(mem[_93 + 60 len 4] + mem[_93 + 92 len 4] - 1 % mem[_93 + 92 len 4]) > !mem[_93 + 92 len 4]:
                    revert with 0, 17
                if uint32(mem[_93 + 60 len 4] + mem[_93 + 92 len 4] - 1 % mem[_93 + 92 len 4]) + mem[_93 + 92 len 4] < uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])):
                    revert with 0, 17
                if not mem[_93 + 92 len 4]:
                    revert with 0, 18
                if uint32(uint32(mem[_93 + 60 len 4] + mem[_93 + 92 len 4] - 1 % mem[_93 + 92 len 4]) + mem[_93 + 92 len 4] - uint32(mem[_93 + 28 len 4] - uint32(cd[((32 * idx) + cd[4] + 36)])) % mem[_93 + 92 len 4]) >= 256:
                    revert with 0, 50
                _227 = mem[64]
                mem[64] = mem[64] + 160
                mem[_227] = stor3[2 * uint32(uint32(uint32(_213) + uint32(_214) - 1 % uint32(_214)) + uint32(_220) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_220))]
                mem[_227 + 32] = stor4[2 * uint32(uint32(uint32(_213) + uint32(_214) - 1 % uint32(_214)) + uint32(_220) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_220))].field_0
                mem[_227 + 64] = stor4[2 * uint32(uint32(uint32(_213) + uint32(_214) - 1 % uint32(_214)) + uint32(_220) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_220))].field_32
                mem[_227 + 96] = stor4[2 * uint32(uint32(uint32(_213) + uint32(_214) - 1 % uint32(_214)) + uint32(_220) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_220))].field_96
                mem[_227 + 128] = stor4[2 * uint32(uint32(uint32(_213) + uint32(_214) - 1 % uint32(_214)) + uint32(_220) - uint32(uint32(_204) - uint32(cd[((32 * idx) + cd[4] + 36)])) % uint32(_220))].field_160
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _227
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _186 = mem[64]
    mem[mem[64]] = 32
    _187 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _187:
        _229 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_229 + 60 len 4]
        mem[s + 64] = mem[_229 + 88 len 8]
        mem[s + 96] = mem[_229 + 120 len 8]
        mem[s + 128] = mem[_229 + 156 len 4]
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _186 + (160 * _187) + -mem[64] + 64
}



}
