contract main {




// =====================  Runtime code  =====================


#
#  - CreateStandardToken(string arg1, string arg2, uint8 arg3, uint256 arg4)
#
const BlockTimestamp = block.timestamp


address owner;
address stor1;
uint256 geUnlockTime;
uint256 stor3;
uint256 standardTokenCreationFees;
uint8 stor5;
address feesAddress; offset 8
mapping of struct stor6;
mapping of address tokenToOwner;
mapping of uint256 individualTokenCreationCount;
mapping of uint8 stor9;
mapping of address tokenMap;
mapping of struct stor11;

function verifiedDxMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function tokenToOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenToOwner[arg1]
}

function standardTokenCreationFees() {
    return standardTokenCreationFees
}

function owner() {
    return owner
}

function feesAddress() {
    return feesAddress
}

function feesEnabled() {
    return bool(stor5)
}

function tokenMap(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenMap[arg1]
}

function geUnlockTime() {
    return geUnlockTime
}

function individualTokenCreationCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return individualTokenCreationCount[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit code.data[9822 len 32]: owner, 0
    owner = 0
}

function enableFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5:
        revert with 0, 'fees already enabled'
    stor5 = 1
}

function disableFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5:
        revert with 0, 'fees already disabled'
    stor5 = 0
}

function updateFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    standardTokenCreationFees = arg1
}

function updateFeesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'address cant be 0x0'
    feesAddress = arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit code.data[9822 len 32]: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit code.data[9822 len 32]: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit code.data[9822 len 32]: owner, arg1
    owner = arg1
}

function getAllTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor3:
        mem[0] = idx
        mem[32] = 10
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenMap[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[128] = 32
    idx = 0
    s = 160
    t = 128
    while idx < 32:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, 32, mem[160 len 1024]
}

function updateLogo(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor11[stor6[msg.sender][arg2].field_1280].field_0:
        if stor11[stor6[msg.sender][arg2].field_1280].field_0 == uint255(stor11[stor6[msg.sender][arg2].field_1280].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[stor6[msg.sender][arg2].field_1280][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11[stor6[msg.sender][arg2].field_1280].field_0 = 0
            idx = 0
            while (uint255(stor11[stor6[msg.sender][arg2].field_1280].field_0) * 0.5) + 31 / 32 > idx:
                stor11[stor6[msg.sender][arg2].field_1280][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[stor6[msg.sender][arg2].field_1280].field_0 == stor11[stor6[msg.sender][arg2].field_1280].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[stor6[msg.sender][arg2].field_1280][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11[stor6[msg.sender][arg2].field_1280].field_0 = 0
            idx = 0
            while stor11[stor6[msg.sender][arg2].field_1280].field_1 + 31 / 32 > idx:
                stor11[stor6[msg.sender][arg2].field_1280][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function addressToLogo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor11[arg1].field_0:
            if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_0):
                if 31 < uint255(stor11[arg1].field_0) * 0.5:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor11[arg1].field_8
        else:
            if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
                revert with 0, 34
            if stor11[arg1].field_1:
                if 31 < stor11[arg1].field_1:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor11[arg1].field_8
        mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor11[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor11[arg1].field_0) * 0.5) > uint255(stor11[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + (uint255(stor11[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)]), 
    if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
        revert with 0, 34
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_0):
            if 31 < uint255(stor11[arg1].field_0) * 0.5:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    else:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 0, 34
        if stor11[arg1].field_1:
            if 31 < stor11[arg1].field_1:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    mem[ceil32(stor11[arg1].field_1) + 192 len ceil32(stor11[arg1].field_1)] = mem[128 len ceil32(stor11[arg1].field_1)]
    if ceil32(stor11[arg1].field_1) > stor11[arg1].field_1:
        mem[ceil32(stor11[arg1].field_1) + stor11[arg1].field_1 + 192] = 0
    return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)], mem[(2 * ceil32(stor11[arg1].field_1)) + 192 len 2 * ceil32(stor11[arg1].field_1)]), 
}

function tokenStorage(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor6[arg1][arg2].field_512:
        if stor6[arg1][arg2].field_512 == uint255(stor6[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor6[arg1][arg2].field_512:
            if stor6[arg1][arg2].field_512 == uint255(stor6[arg1][arg2].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1][arg2].field_512):
                if 31 >= uint255(stor6[arg1][arg2].field_512) * 0.5:
                    mem[128] = 256 * stor6[arg1][arg2].field_520
                else:
                    mem[128] = stor6[arg1][arg2][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1][arg2].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][arg2][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor6[arg1][arg2].field_512 == stor6[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor6[arg1][arg2].field_513:
                if 31 >= stor6[arg1][arg2].field_513:
                    mem[128] = 256 * stor6[arg1][arg2].field_520
                else:
                    mem[128] = stor6[arg1][arg2][2].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1][arg2].field_513 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][arg2][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor6[arg1][arg2].field_768:
            if stor6[arg1][arg2].field_768 == uint255(stor6[arg1][arg2].field_768) * 0.5 < 32:
                revert with 0, 34
            if stor6[arg1][arg2].field_768:
                if stor6[arg1][arg2].field_768 == uint255(stor6[arg1][arg2].field_768) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor6[arg1][arg2].field_768):
                    if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                    if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
                else:
                    if 31 >= uint255(stor6[arg1][arg2].field_768) * 0.5:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = 256 * stor6[arg1][arg2].field_776
                    else:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = stor6[arg1][arg2][3].field_0
                        idx = ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                    if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
            else:
                if stor6[arg1][arg2].field_768 == stor6[arg1][arg2].field_769 < 32:
                    revert with 0, 34
                if not stor6[arg1][arg2].field_769:
                    if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                    if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
                else:
                    if 31 >= stor6[arg1][arg2].field_769:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = 256 * stor6[arg1][arg2].field_776
                    else:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = stor6[arg1][arg2][3].field_0
                        idx = ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + stor6[arg1][arg2].field_769 + 128 > idx:
                            mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                        mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                    if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                        mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
            return bool(stor6[arg1][arg2].field_0), 
                   stor6[arg1][arg2].field_256,
                   Array(len=2 * Mask(256, -1, stor6[arg1][arg2].field_512), data=mem[128 len ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)], 2 * Mask(256, -1, stor6[arg1][arg2].field_768), mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]),
                   ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 224,
                   stor6[arg1][arg2].field_1024,
                   stor6[arg1][arg2].field_1280
        if stor6[arg1][arg2].field_768 == stor6[arg1][arg2].field_769 < 32:
            revert with 0, 34
        if stor6[arg1][arg2].field_768:
            if stor6[arg1][arg2].field_768 == uint255(stor6[arg1][arg2].field_768) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor6[arg1][arg2].field_768):
                if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(stor6[arg1][arg2].field_769) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(stor6[arg1][arg2].field_769)]
                if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
            else:
                if 31 >= uint255(stor6[arg1][arg2].field_768) * 0.5:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = 256 * stor6[arg1][arg2].field_776
                else:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = stor6[arg1][arg2][3].field_0
                    idx = ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(stor6[arg1][arg2].field_769) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(stor6[arg1][arg2].field_769)]
                if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
        else:
            if stor6[arg1][arg2].field_768 == stor6[arg1][arg2].field_769 < 32:
                revert with 0, 34
            if not stor6[arg1][arg2].field_769:
                if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(stor6[arg1][arg2].field_769) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(stor6[arg1][arg2].field_769)]
                if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
            else:
                if 31 >= stor6[arg1][arg2].field_769:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = 256 * stor6[arg1][arg2].field_776
                else:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160] = stor6[arg1][arg2][3].field_0
                    idx = ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + stor6[arg1][arg2].field_769 + 128 > idx:
                        mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) > uint255(stor6[arg1][arg2].field_512) * 0.5:
                    mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + ceil32(stor6[arg1][arg2].field_769) + (uint255(stor6[arg1][arg2].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
                mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(stor6[arg1][arg2].field_769)]
                if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                    mem[(2 * ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
        return bool(stor6[arg1][arg2].field_0), 
               stor6[arg1][arg2].field_256,
               Array(len=2 * Mask(256, -1, stor6[arg1][arg2].field_512), data=mem[128 len ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5)], stor6[arg1][arg2].field_768, mem[ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 160 len ceil32(stor6[arg1][arg2].field_769)]),
               ceil32(uint255(stor6[arg1][arg2].field_512) * 0.5) + 224,
               stor6[arg1][arg2].field_1024,
               stor6[arg1][arg2].field_1280
    if stor6[arg1][arg2].field_512 == stor6[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor6[arg1][arg2].field_512:
        if stor6[arg1][arg2].field_512 == uint255(stor6[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1][arg2].field_512):
            if 31 >= uint255(stor6[arg1][arg2].field_512) * 0.5:
                mem[128] = 256 * stor6[arg1][arg2].field_520
            else:
                mem[128] = stor6[arg1][arg2][2].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1][arg2].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][arg2][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor6[arg1][arg2].field_512 == stor6[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor6[arg1][arg2].field_513:
            if 31 >= stor6[arg1][arg2].field_513:
                mem[128] = 256 * stor6[arg1][arg2].field_520
            else:
                mem[128] = stor6[arg1][arg2][2].field_0
                idx = 128
                s = 0
                while stor6[arg1][arg2].field_513 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][arg2][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor6[arg1][arg2].field_768:
        if stor6[arg1][arg2].field_768 == uint255(stor6[arg1][arg2].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor6[arg1][arg2].field_768:
            if stor6[arg1][arg2].field_768 == uint255(stor6[arg1][arg2].field_768) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor6[arg1][arg2].field_768):
                if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                    mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + stor6[arg1][arg2].field_513 + 384] = 0
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                    mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
            else:
                if 31 >= uint255(stor6[arg1][arg2].field_768) * 0.5:
                    mem[ceil32(stor6[arg1][arg2].field_513) + 160] = 256 * stor6[arg1][arg2].field_776
                else:
                    mem[ceil32(stor6[arg1][arg2].field_513) + 160] = stor6[arg1][arg2][3].field_0
                    idx = ceil32(stor6[arg1][arg2].field_513) + 160
                    s = 0
                    while ceil32(stor6[arg1][arg2].field_513) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                    mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + stor6[arg1][arg2].field_513 + 384] = 0
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                    mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
        else:
            if stor6[arg1][arg2].field_768 == stor6[arg1][arg2].field_769 < 32:
                revert with 0, 34
            if not stor6[arg1][arg2].field_769:
                if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                    mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + stor6[arg1][arg2].field_513 + 384] = 0
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                    mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
            else:
                if 31 >= stor6[arg1][arg2].field_769:
                    mem[ceil32(stor6[arg1][arg2].field_513) + 160] = 256 * stor6[arg1][arg2].field_776
                else:
                    mem[ceil32(stor6[arg1][arg2].field_513) + 160] = stor6[arg1][arg2][3].field_0
                    idx = ceil32(stor6[arg1][arg2].field_513) + 160
                    s = 0
                    while ceil32(stor6[arg1][arg2].field_513) + stor6[arg1][arg2].field_769 + 128 > idx:
                        mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                    mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + stor6[arg1][arg2].field_513 + 384] = 0
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 384] = uint255(stor6[arg1][arg2].field_768) * 0.5
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + 416 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]
                if ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) > uint255(stor6[arg1][arg2].field_768) * 0.5:
                    mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 416] = 0
        return bool(stor6[arg1][arg2].field_0), 
               stor6[arg1][arg2].field_256,
               Array(len=stor6[arg1][arg2].field_512, data=mem[128 len ceil32(stor6[arg1][arg2].field_513)], 2 * Mask(256, -1, stor6[arg1][arg2].field_768), mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(uint255(stor6[arg1][arg2].field_768) * 0.5)]),
               ceil32(stor6[arg1][arg2].field_513) + 224,
               stor6[arg1][arg2].field_1024,
               stor6[arg1][arg2].field_1280
    if stor6[arg1][arg2].field_768 == stor6[arg1][arg2].field_769 < 32:
        revert with 0, 34
    if stor6[arg1][arg2].field_768:
        if stor6[arg1][arg2].field_768 == uint255(stor6[arg1][arg2].field_768) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor6[arg1][arg2].field_768):
            if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_513 + 384] = 0
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(stor6[arg1][arg2].field_769)]
            if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
        else:
            if 31 >= uint255(stor6[arg1][arg2].field_768) * 0.5:
                mem[ceil32(stor6[arg1][arg2].field_513) + 160] = 256 * stor6[arg1][arg2].field_776
            else:
                mem[ceil32(stor6[arg1][arg2].field_513) + 160] = stor6[arg1][arg2][3].field_0
                idx = ceil32(stor6[arg1][arg2].field_513) + 160
                s = 0
                while ceil32(stor6[arg1][arg2].field_513) + (uint255(stor6[arg1][arg2].field_768) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_513 + 384] = 0
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(stor6[arg1][arg2].field_769)]
            if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
    else:
        if stor6[arg1][arg2].field_768 == stor6[arg1][arg2].field_769 < 32:
            revert with 0, 34
        if not stor6[arg1][arg2].field_769:
            if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_513 + 384] = 0
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(stor6[arg1][arg2].field_769)]
            if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
        else:
            if 31 >= stor6[arg1][arg2].field_769:
                mem[ceil32(stor6[arg1][arg2].field_513) + 160] = 256 * stor6[arg1][arg2].field_776
            else:
                mem[ceil32(stor6[arg1][arg2].field_513) + 160] = stor6[arg1][arg2][3].field_0
                idx = ceil32(stor6[arg1][arg2].field_513) + 160
                s = 0
                while ceil32(stor6[arg1][arg2].field_513) + stor6[arg1][arg2].field_769 + 128 > idx:
                    mem[idx + 32] = stor6[arg1][arg2][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor6[arg1][arg2].field_513) > stor6[arg1][arg2].field_513:
                mem[ceil32(stor6[arg1][arg2].field_513) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_513 + 384] = 0
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 384] = stor6[arg1][arg2].field_769
            mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + 416 len ceil32(stor6[arg1][arg2].field_769)] = mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(stor6[arg1][arg2].field_769)]
            if ceil32(stor6[arg1][arg2].field_769) > stor6[arg1][arg2].field_769:
                mem[(2 * ceil32(stor6[arg1][arg2].field_513)) + ceil32(stor6[arg1][arg2].field_769) + stor6[arg1][arg2].field_769 + 416] = 0
    return bool(stor6[arg1][arg2].field_0), 
           stor6[arg1][arg2].field_256,
           Array(len=stor6[arg1][arg2].field_512, data=mem[128 len ceil32(stor6[arg1][arg2].field_513)], stor6[arg1][arg2].field_768, mem[ceil32(stor6[arg1][arg2].field_513) + 160 len ceil32(stor6[arg1][arg2].field_769)]),
           ceil32(stor6[arg1][arg2].field_513) + 224,
           stor6[arg1][arg2].field_1024,
           stor6[arg1][arg2].field_1280
}



}
