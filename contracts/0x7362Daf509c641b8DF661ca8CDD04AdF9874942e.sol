contract main {




// =====================  Runtime code  =====================


#
#  - sub_42681fc1(?)
#  - isSigner(address arg1)
#  - _fallback()
#
address owner;
array of struct stor1;
address sub_a4679264Address;
uint256 sub_39ddbc8c;
address tokenAddress;
address sub_bbacaac3Address;
address sub_246fa74dAddress;
address sub_51bf1352Address;
address sub_871c1a72Address;
address sub_808f5322Address;
address sub_a72f8755Address;
array of address stor11;
mapping of struct stor12;
mapping of uint8 sub_4ffa00f1;

function sub_246fa74d(?) {
    return sub_246fa74dAddress
}

function sub_39ddbc8c(?) {
    return sub_39ddbc8c
}

function sub_4ffa00f1(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_4ffa00f1[arg1[all]][arg2[all]]
}

function sub_51bf1352(?) {
    return sub_51bf1352Address
}

function sub_808f5322(?) {
    return sub_808f5322Address
}

function sub_871c1a72(?) {
    return sub_871c1a72Address
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_a4679264(?) {
    return sub_a4679264Address
}

function sub_a72f8755(?) {
    return sub_a72f8755Address
}

function sub_bbacaac3(?) {
    return sub_bbacaac3Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b32ea0b9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor12[address(arg1)].field_0):
        if not bool(stor12[address(arg1)].field_0) - (uint255(uint256(stor12[address(arg1)].field_0)) * 0.5 < 32):
            revert with 0, 34
        if arg2.length:
            uint256(stor12[address(arg1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor12[address(arg1)].field_0) = 0
            idx = 0
            while (uint255(uint256(stor12[address(arg1)].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor12[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor12[address(arg1)].field_0) - (stor12[address(arg1)].field_1 % 128 < 32):
            revert with 0, 34
        if arg2.length:
            uint256(stor12[address(arg1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor12[address(arg1)].field_0) = 0
            idx = 0
            while stor12[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor12[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_4b657607(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while uint8(idx) < stor11.length:
        mem[0] = 11
        if msg.sender - address(stor11[uint8(idx)].field_0):
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        if bool(stor12[msg.sender].field_0):
            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                revert with 0, 34
            if not arg1.length:
                uint256(stor12[msg.sender].field_0) = 0
                idx = sha3(sha3(msg.sender, 12))
                while sha3(sha3(msg.sender, 12)) + ((uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor12[msg.sender].field_0) = (2 * arg1.length) + 1
                s = sha3(sha3(msg.sender, 12))
                idx = 128
                while arg1.length + 128 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(msg.sender, 12)) + (Mask(251, 0, arg1.length + 31) >> 5)
                while sha3(sha3(msg.sender, 12)) + ((uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                revert with 0, 34
            if not arg1.length:
                uint256(stor12[msg.sender].field_0) = 0
                idx = sha3(sha3(msg.sender, 12))
                while sha3(sha3(msg.sender, 12)) + (stor12[msg.sender].field_1 % 128 + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor12[msg.sender].field_0) = (2 * arg1.length) + 1
                s = sha3(sha3(msg.sender, 12))
                idx = 128
                while arg1.length + 128 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(msg.sender, 12)) + (Mask(251, 0, arg1.length + 31) >> 5)
                while sha3(sha3(msg.sender, 12)) + (stor12[msg.sender].field_1 % 128 + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
    revert with 0, 'caller is not signer'
}

function sub_b120db32(?) {
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor1.length):
            if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function sub_57f940c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor12[arg1].field_0):
        if not bool(stor12[arg1].field_0) - (uint255(uint256(stor12[arg1].field_0)) * 0.5 < 32):
            revert with 0, 34
        if bool(stor12[arg1].field_0):
            if not bool(stor12[arg1].field_0) - (uint255(uint256(stor12[arg1].field_0)) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, uint256(stor12[arg1].field_0)):
                if 31 < uint255(uint256(stor12[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor12[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor12[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor12[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        else:
            if not bool(stor12[arg1].field_0) - (stor12[arg1].field_1 % 128 < 32):
                revert with 0, 34
            if stor12[arg1].field_1 % 128:
                if 31 < stor12[arg1].field_1 % 128:
                    mem[128] = uint256(stor12[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor12[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        mem[ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5) > uint255(uint256(stor12[arg1].field_0)) * 0.5:
            mem[ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5) + (uint255(uint256(stor12[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor12[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor12[arg1].field_0)) * 0.5)]), 
    if not bool(stor12[arg1].field_0) - (stor12[arg1].field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor12[arg1].field_0):
        if not bool(stor12[arg1].field_0) - (uint255(uint256(stor12[arg1].field_0)) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, uint256(stor12[arg1].field_0)):
            if 31 < uint255(uint256(stor12[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor12[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor12[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    else:
        if not bool(stor12[arg1].field_0) - (stor12[arg1].field_1 % 128 < 32):
            revert with 0, 34
        if stor12[arg1].field_1 % 128:
            if 31 < stor12[arg1].field_1 % 128:
                mem[128] = uint256(stor12[arg1].field_0)
                idx = 128
                s = 0
                while stor12[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    mem[ceil32(stor12[arg1].field_1 % 128) + 192 len ceil32(stor12[arg1].field_1 % 128)] = mem[128 len ceil32(stor12[arg1].field_1 % 128)]
    if ceil32(stor12[arg1].field_1 % 128) > stor12[arg1].field_1 % 128:
        mem[ceil32(stor12[arg1].field_1 % 128) + stor12[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)], mem[(2 * ceil32(stor12[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor12[arg1].field_1 % 128)]), 
}

function sub_b9d2d32c(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while uint8(idx) < stor11.length:
        mem[0] = 11
        if msg.sender - address(stor11[uint8(idx)].field_0):
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        idx = 0
        s = 0
        while uint8(idx) < stor11.length:
            _253 = mem[64]
            if bool(stor1.length):
                if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor1.length):
                    mem[mem[64]] = Mask(248, 8, stor1.length)
                    mem[mem[64] + (uint255(stor1.length) * 0.5)] = 13
                    _263 = sha3(Mask(248, 8, stor1.length), mem[mem[64] + 32 len uint255(stor1.length) * 0.5])
                    if uint8(idx) >= stor11.length:
                        revert with 0, 50
                    mem[0] = address(stor11[uint8(idx)].field_0)
                    mem[32] = 12
                    _266 = mem[64]
                    if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                        if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                            mem[mem[64] + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _263
                            if uint8(s) > -uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                                revert with 0, 17
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                            continue 
                        if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                            mem[0] = _263
                            if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                                revert with 0, 17
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                            continue 
                        mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5:
                            mem[t + _266] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_266 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _263
                        if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _266 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[sha3(mem[mem[64] len _266 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + uint8(s)
                        continue 
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 < 32):
                        revert with 0, 34
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                        mem[mem[64] + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _263
                        if uint8(s) > -uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                        continue 
                    if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                        mem[0] = _263
                        if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                        continue 
                    mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                    t = 0
                    u = sha3(mem[0])
                    while t < stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128:
                        mem[t + _266] = uint256(stor[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_266 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _263
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _266 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len _266 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + uint8(s)
                    continue 
                if bool(stor1.length) != 1:
                    _268 = sha3(mem[mem[64] len -mem[64] + 32])
                    if uint8(idx) >= stor11.length:
                        revert with 0, 50
                    mem[0] = address(stor11[uint8(idx)].field_0)
                    mem[32] = 12
                    _273 = mem[64]
                    if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                        if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                            mem[mem[64] + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _268
                            if uint8(s) > -uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                                revert with 0, 17
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                            continue 
                        if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                            mem[0] = _268
                            if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                                revert with 0, 17
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                            continue 
                        mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5:
                            mem[t + _273] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_273 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _268
                        if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _273 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[sha3(mem[mem[64] len _273 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + uint8(s)
                        continue 
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 < 32):
                        revert with 0, 34
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                        mem[mem[64] + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _268
                        if uint8(s) > -uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                        continue 
                    if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                        mem[0] = _268
                        if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                        continue 
                    mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                    t = 0
                    u = sha3(mem[0])
                    while t < stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128:
                        mem[t + _273] = uint256(stor[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_273 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _268
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _273 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len _273 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + uint8(s)
                    continue 
                mem[0] = 1
                t = 0
                u = sha3(mem[0])
                while t < uint255(stor1.length) * 0.5:
                    mem[t + _253] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_253 + (uint255(stor1.length) * 0.5)] = 13
                _381 = sha3(mem[mem[64] len _253 + (uint255(stor1.length) * 0.5) + -mem[64] + 32])
                if uint8(idx) >= stor11.length:
                    revert with 0, 50
                mem[0] = address(stor11[uint8(idx)].field_0)
                mem[32] = 12
                _398 = mem[64]
                if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5 < 32):
                        revert with 0, 34
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                        mem[mem[64] + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _381
                        if uint8(s) > -uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                        continue 
                    if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                        mem[0] = _381
                        if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                        continue 
                    mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                    t = 0
                    u = sha3(mem[0])
                    while t < uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5:
                        mem[t + _398] = uint256(stor[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_398 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _381
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _398 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len _398 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + uint8(s)
                    continue 
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 < 32):
                    revert with 0, 34
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                    mem[mem[64] + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _381
                    if uint8(s) > -uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                    continue 
                if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                    mem[0] = _381
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                    continue 
                mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                t = 0
                u = sha3(mem[0])
                while t < stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128:
                    mem[t + _398] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_398 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _381
                if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _398 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + 255:
                    revert with 0, 17
                if not uint8(idx) - 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(stor[sha3(mem[mem[64] len _398 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + uint8(s)
                continue 
            if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
                revert with 0, 34
            if not bool(stor1.length):
                mem[mem[64]] = Mask(248, 8, stor1.length)
                mem[mem[64] + stor1.length.field_1 % 128] = 13
                _270 = sha3(Mask(248, 8, stor1.length), mem[mem[64] + 32 len stor1.length.field_1 % 128])
                if uint8(idx) >= stor11.length:
                    revert with 0, 50
                mem[0] = address(stor11[uint8(idx)].field_0)
                mem[32] = 12
                _276 = mem[64]
                if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5 < 32):
                        revert with 0, 34
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                        mem[mem[64] + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _270
                        if uint8(s) > -uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                        continue 
                    if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                        mem[0] = _270
                        if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                        continue 
                    mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                    t = 0
                    u = sha3(mem[0])
                    while t < uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5:
                        mem[t + _276] = uint256(stor[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_276 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _270
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _276 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len _276 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + uint8(s)
                    continue 
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 < 32):
                    revert with 0, 34
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                    mem[mem[64] + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _270
                    if uint8(s) > -uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                    continue 
                if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                    mem[0] = _270
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                    continue 
                mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                t = 0
                u = sha3(mem[0])
                while t < stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128:
                    mem[t + _276] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_276 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _270
                if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _276 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + 255:
                    revert with 0, 17
                if not uint8(idx) - 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(stor[sha3(mem[mem[64] len _276 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + uint8(s)
                continue 
            if bool(stor1.length) != 1:
                _278 = sha3(mem[mem[64] len -mem[64] + 32])
                if uint8(idx) >= stor11.length:
                    revert with 0, 50
                mem[0] = address(stor11[uint8(idx)].field_0)
                mem[32] = 12
                _283 = mem[64]
                if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5 < 32):
                        revert with 0, 34
                    if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                        mem[mem[64] + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _278
                        if uint8(s) > -uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                        continue 
                    if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                        mem[0] = _278
                        if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                            revert with 0, 17
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                        continue 
                    mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                    t = 0
                    u = sha3(mem[0])
                    while t < uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5:
                        mem[t + _283] = uint256(stor[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_283 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _278
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _283 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len _283 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + uint8(s)
                    continue 
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 < 32):
                    revert with 0, 34
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                    mem[mem[64] + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _278
                    if uint8(s) > -uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                    continue 
                if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                    mem[0] = _278
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                    continue 
                mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                t = 0
                u = sha3(mem[0])
                while t < stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128:
                    mem[t + _283] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_283 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _278
                if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _283 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + 255:
                    revert with 0, 17
                if not uint8(idx) - 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(stor[sha3(mem[mem[64] len _283 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + uint8(s)
                continue 
            mem[0] = 1
            t = 0
            u = sha3(mem[0])
            while t < stor1.length.field_1 % 128:
                mem[t + _253] = uint256(stor[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_253 + stor1.length.field_1 % 128] = 13
            _391 = sha3(mem[mem[64] len _253 + stor1.length.field_1 % 128 + -mem[64] + 32])
            if uint8(idx) >= stor11.length:
                revert with 0, 50
            mem[0] = address(stor11[uint8(idx)].field_0)
            mem[32] = 12
            _401 = mem[64]
            if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                    mem[mem[64] + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _391
                    if uint8(s) > -uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                    continue 
                if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                    mem[0] = _391
                    if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                        revert with 0, 17
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                    continue 
                mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
                t = 0
                u = sha3(mem[0])
                while t < uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5:
                    mem[t + _401] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_401 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5)] = _391
                if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _401 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + 255:
                    revert with 0, 17
                if not uint8(idx) - 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(stor[sha3(mem[mem[64] len _401 + (uint255(uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0)) * 0.5) + -mem[64] + 32])]) + uint8(s)
                continue 
            if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) - (stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 < 32):
                revert with 0, 34
            if not bool(stor12[address(stor11[uint8(idx)].field_0)].field_0):
                mem[mem[64]] = Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))
                mem[mem[64] + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _391
                if uint8(s) > -uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + 255:
                    revert with 0, 17
                if not uint8(idx) - 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(stor[mem[mem[64] + 32 len stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128]][Mask(248, 8, uint256(stor12[address(stor11[uint8(idx)].field_0)].field_0))]) + uint8(s)
                continue 
            if bool(stor12[address(stor11[uint8(idx)].field_0)].field_0) != 1:
                mem[0] = _391
                if uint8(s) > -uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + 255:
                    revert with 0, 17
                if not uint8(idx) - 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                s = uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) + uint8(s)
                continue 
            mem[0] = sha3(address(stor11[uint8(idx)].field_0), 12)
            t = 0
            u = sha3(mem[0])
            while t < stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128:
                mem[t + _401] = uint256(stor[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_401 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128] = _391
            if uint8(s) > -uint8(stor[sha3(mem[mem[64] len _401 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + 255:
                revert with 0, 17
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(stor[sha3(mem[mem[64] len _401 + stor12[address(stor11[uint8(idx)].field_0)].field_1 % 128 + -mem[64] + 32])]) + uint8(s)
            continue 
        if uint8(s) <= uint255(stor11.length.field_1):
            revert with 0, 'Not enough active nodes'
        mem[mem[64] + 4] = sub_a4679264Address
        mem[mem[64] + 36] = sub_39ddbc8c
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_a4679264Address, sub_39ddbc8c
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_257] == bool(mem[_257])
    revert with 0, 'caller is not signer'
}

function vote(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while uint8(idx) < stor11.length:
        mem[0] = 11
        if msg.sender - address(stor11[uint8(idx)].field_0):
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        if not arg1:
            if bool(stor1.length):
                if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor1.length):
                    mem[96] = Mask(248, 8, stor1.length)
                    mem[(uint255(stor1.length) * 0.5) + 96] = 13
                    _224 = sha3(Mask(248, 8, stor1.length), mem[128 len uint255(stor1.length) * 0.5])
                    if bool(stor12[msg.sender].field_0):
                        if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len uint255(stor1.length) * 0.5])
                            uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 0
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _224
                                uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 0
                    else:
                        if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len uint255(stor1.length) * 0.5])
                            uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 0
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < stor12[msg.sender].field_1 % 128:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _224
                                uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 0
                else:
                    if bool(stor1.length) != 1:
                        _230 = sha3(mem[96 len -64])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _230
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 0
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _230
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 0
                    else:
                        idx = 0
                        s = sha3(1)
                        while idx < uint255(stor1.length) * 0.5:
                            mem[idx + 96] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(uint255(stor1.length) * 0.5) + 96] = 13
                        _432 = sha3(mem[96 len (uint255(stor1.length) * 0.5) + 32])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _432
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _432
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 0
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _432
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = _432
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 0
            else:
                if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
                    revert with 0, 34
                if not bool(stor1.length):
                    mem[96] = Mask(248, 8, stor1.length)
                    mem[stor1.length.field_1 % 128 + 96] = 13
                    _233 = sha3(Mask(248, 8, stor1.length), mem[128 len stor1.length.field_1 % 128])
                    if bool(stor12[msg.sender].field_0):
                        if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len stor1.length.field_1 % 128])
                            uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 0
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _233
                                uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 0
                    else:
                        if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len stor1.length.field_1 % 128])
                            uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 0
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < stor12[msg.sender].field_1 % 128:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _233
                                uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 0
                else:
                    if bool(stor1.length) != 1:
                        _242 = sha3(mem[96 len -64])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _242
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 0
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _242
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 0
                    else:
                        idx = 0
                        s = sha3(1)
                        while idx < stor1.length.field_1 % 128:
                            mem[idx + 96] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[stor1.length.field_1 % 128 + 96] = 13
                        _443 = sha3(mem[96 len stor1.length.field_1 % 128 + 32])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _443
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _443
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 0
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _443
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 0
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 0
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = _443
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 0
        else:
            if bool(stor1.length):
                if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor1.length):
                    mem[96] = Mask(248, 8, stor1.length)
                    mem[(uint255(stor1.length) * 0.5) + 96] = 13
                    _227 = sha3(Mask(248, 8, stor1.length), mem[128 len uint255(stor1.length) * 0.5])
                    if bool(stor12[msg.sender].field_0):
                        if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len uint255(stor1.length) * 0.5])
                            uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 1
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _227
                                uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 1
                    else:
                        if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len uint255(stor1.length) * 0.5])
                            uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 1
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < stor12[msg.sender].field_1 % 128:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _227
                                uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 1
                else:
                    if bool(stor1.length) != 1:
                        _236 = sha3(mem[96 len -64])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _236
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 1
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _236
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 1
                    else:
                        idx = 0
                        s = sha3(1)
                        while idx < uint255(stor1.length) * 0.5:
                            mem[idx + 96] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(uint255(stor1.length) * 0.5) + 96] = 13
                        _454 = sha3(mem[96 len (uint255(stor1.length) * 0.5) + 32])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _454
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _454
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 1
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _454
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = _454
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 1
            else:
                if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
                    revert with 0, 34
                if not bool(stor1.length):
                    mem[96] = Mask(248, 8, stor1.length)
                    mem[stor1.length.field_1 % 128 + 96] = 13
                    _239 = sha3(Mask(248, 8, stor1.length), mem[128 len stor1.length.field_1 % 128])
                    if bool(stor12[msg.sender].field_0):
                        if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len stor1.length.field_1 % 128])
                            uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 1
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _239
                                uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 1
                    else:
                        if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                            revert with 0, 34
                        if not bool(stor12[msg.sender].field_0):
                            mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                            mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(Mask(248, 8, stor1.length), mem[128 len stor1.length.field_1 % 128])
                            uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                        else:
                            if bool(stor12[msg.sender].field_0) != 1:
                                uint8(stor[sha3(mem[96 len -64])]) = 1
                            else:
                                idx = 0
                                s = sha3(sha3(msg.sender, 12))
                                while idx < stor12[msg.sender].field_1 % 128:
                                    mem[idx + 96] = uint256(stor[s])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _239
                                uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 1
                else:
                    if bool(stor1.length) != 1:
                        _245 = sha3(mem[96 len -64])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _245
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 1
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _245
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = sha3(mem[96 len -64])
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 1
                    else:
                        idx = 0
                        s = sha3(1)
                        while idx < stor1.length.field_1 % 128:
                            mem[idx + 96] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[stor1.length.field_1 % 128 + 96] = 13
                        _465 = sha3(mem[96 len stor1.length.field_1 % 128 + 32])
                        if bool(stor12[msg.sender].field_0):
                            if not bool(stor12[msg.sender].field_0) - (uint255(uint256(stor12[msg.sender].field_0)) * 0.5 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _465
                                uint8(stor[mem[128 len uint255(uint256(stor12[msg.sender].field_0)) * 0.5]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < uint255(uint256(stor12[msg.sender].field_0)) * 0.5:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[(uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 96] = _465
                                    uint8(stor[sha3(mem[96 len (uint255(uint256(stor12[msg.sender].field_0)) * 0.5) + 32])]) = 1
                        else:
                            if not bool(stor12[msg.sender].field_0) - (stor12[msg.sender].field_1 % 128 < 32):
                                revert with 0, 34
                            if not bool(stor12[msg.sender].field_0):
                                mem[96] = Mask(248, 8, uint256(stor12[msg.sender].field_0))
                                mem[stor12[msg.sender].field_1 % 128 + 96] = _465
                                uint8(stor[mem[128 len stor12[msg.sender].field_1 % 128]][Mask(248, 8, uint256(stor12[msg.sender].field_0))]) = 1
                            else:
                                if bool(stor12[msg.sender].field_0) != 1:
                                    uint8(stor[sha3(mem[96 len -64])]) = 1
                                else:
                                    idx = 0
                                    s = sha3(sha3(msg.sender, 12))
                                    while idx < stor12[msg.sender].field_1 % 128:
                                        mem[idx + 96] = uint256(stor[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[stor12[msg.sender].field_1 % 128 + 96] = _465
                                    uint8(stor[sha3(mem[96 len stor12[msg.sender].field_1 % 128 + 32])]) = 1
    revert with 0, 'caller is not signer'
}



}
