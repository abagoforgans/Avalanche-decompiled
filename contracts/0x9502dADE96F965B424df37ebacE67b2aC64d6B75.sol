contract main {




// =====================  Runtime code  =====================


#
#  - claimableRent()
#  - claimRent()
#
array of struct stor0;
array of struct stor1;
mapping of address stor2;
mapping of uint256 stor3;
mapping of uint256 stor6;
uint256 stor8;
uint256 saleStarted;
array of uint256 stor12;
array of struct stor13;
mapping of uint256 totalLockedValueBy;
uint256 totalLockedValue;
address stor17;
uint256 stor18;
bool stor19; offset 256
uint8 stor19; offset 64
uint8 stor19; offset 96
uint8 stor19; offset 128
uint8 stor19; offset 160
uint32 stor19; offset 72
uint32 stor19; offset 104
uint32 stor19; offset 136
uint32 stor19; offset 168
uint32 rentStarted;
uint32 marketStarted; offset 32
uint32 minDaysToRent; offset 64
uint32 maxDaysToRent; offset 96
uint32 minDaysBeforeRentCancel; offset 128
uint32 maxDaysForRent; offset 160
uint64 stor19; offset 192
uint256 stor20;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
uint32 stor24;
uint256 stor24; offset 32
uint256 reflectionPercentage;
uint256 currentReflectionBalance;
address owner;

function getMaxDaysForRent() payable {
    return maxDaysForRent
}

function getSaleStarted() payable {
    return saleStarted
}

function getMinDaysToRent() payable {
    return minDaysToRent
}

function getRentStarted() payable {
    return rentStarted
}

function getMaxDaysToRent() payable {
    return maxDaysToRent
}

function getReflectionPercentage() payable {
    return reflectionPercentage
}

function owner() payable {
    return owner
}

function getCurrentReflectionBalance() payable {
    return currentReflectionBalance
}

function getMarketStarted() payable {
    return marketStarted
}

function getMinDaysBeforeRentCancel() payable {
    return minDaysBeforeRentCancel
}

function getTotalDividend() payable {
    return totalDividend
}

function getTotalLockedValue() payable {
    return totalLockedValue
}

function getTotalLockedValueByAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalLockedValueBy[address(arg1)]
}

function getLastDividendAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function getReflectionBalance() payable {
    return reflectionBalance
}

function _fallback() payable {
    revert
}

function currentRate() payable {
    if stor8:
        return (reflectionBalance / stor8)
    else:
        return 0
}

function flipSale() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    if 1 < saleStarted:
        revert with 0, 17
    saleStarted = -saleStarted + 1
}

function flipRent() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    if 1 < rentStarted:
        revert with 0, 17
    rentStarted = uint32(-rentStarted + 1)
}

function flipMarket() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    if 1 < marketStarted:
        revert with 0, 17
    marketStarted = uint32(-marketStarted + 1)
}

function setMinDaysToRent(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    minDaysToRent = arg1
}

function setMaxDaysToRent(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    maxDaysToRent = arg1
}

function setMaxDaysForRent(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    maxDaysForRent = arg1
}

function setMinDaysBeforeRentCancel(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    minDaysBeforeRentCancel = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setReflectionPercentage(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    uint32(stor24.field_0) = arg1
    Mask(224, 0, stor24.field_32) = 0
}

function getRentData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 13
    mem[64] = (32 * stor13[arg1].field_0) + 128
    mem[96] = stor13[arg1].field_0
    s = 128
    idx = 0
    while idx < stor13[arg1].field_0:
        mem[0] = sha3(arg1, 13)
        _21 = mem[64]
        mem[64] = mem[64] + 352
        mem[_21] = stor13[arg1][idx].field_0
        mem[_21 + 32] = stor13[arg1][idx].field_256
        mem[_21 + 64] = stor13[arg1][idx].field_512
        mem[_21 + 96] = stor13[arg1][idx].field_768
        mem[_21 + 128] = stor13[arg1][idx].field_1024
        mem[_21 + 160] = stor13[arg1][idx].field_1040
        mem[_21 + 192] = stor13[arg1][idx].field_1056
        mem[_21 + 224] = stor13[arg1][idx].field_1072
        mem[_21 + 256] = stor13[arg1][idx].field_1088
        mem[_21 + 288] = stor13[arg1][idx].field_1104
        mem[_21 + 320] = stor13[arg1][idx].field_1120
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    _23 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _23:
        _37 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_37 + 32]
        mem[t + 64] = mem[_37 + 64]
        mem[t + 96] = mem[_37 + 96]
        mem[t + 128] = mem[_37 + 158 len 2]
        mem[t + 160] = mem[_37 + 190 len 2]
        mem[t + 192] = mem[_37 + 222 len 2]
        mem[t + 224] = mem[_37 + 254 len 2]
        mem[t + 256] = mem[_37 + 286 len 2]
        mem[t + 288] = mem[_37 + 318 len 2]
        mem[t + 320] = mem[_37 + 350 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 352
        continue 
    return memory
      from mem[64]
       len _22 + (352 * _23) + -mem[64] + 64
}

function init() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    stor17 = owner
    stor18 = 150
    mem[128 len 54] = 0xfe697066733a2f2f516d524e41357036527678786f743276397679736a474b6d4d76776159743935346972594247346857536f6a636e
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        stor12.length = 109
        s = 0
        idx = 128
        while 182 > idx:
            stor12[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor12.length.field_1 + 31 / 32 > idx:
            stor12[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        stor12.length = 109
        s = 0
        idx = 128
        while 182 > idx:
            stor12[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor12.length.field_1 + 31 / 32 > idx:
            stor12[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        uint8(stor0.length) = 36
        stor0.length.field_8 = 0
        stor0.length.field_112 = 0x426974706978656c7320666f722041766178
        idx = 0
        while stor0.length.field_1 + 31 / 32 > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        uint8(stor0.length) = 36
        stor0.length.field_8 = 0
        stor0.length.field_112 = 0x426974706978656c7320666f722041766178
        idx = 0
        while stor0.length.field_1 + 31 / 32 > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        uint8(stor1.length) = 18
        stor1.length.field_8 = 0
        stor1.length.field_184 = Mask(72, 0, 'BITPIXELS')
        idx = 0
        while stor1.length.field_1 + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        uint8(stor1.length) = 18
        stor1.length.field_8 = 0
        stor1.length.field_184 = Mask(72, 0, 'BITPIXELS')
        idx = 0
        while stor1.length.field_1 + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint8(stor19.field_64) = 30
    stor19.field_72 % 16777216 = 0
    uint8(stor19.field_96) = 30
    stor19.field_104 % 16777216 = 0
    uint8(stor19.field_128) = 10
    stor19.field_136 % 16777216 = 0
    uint8(stor19.field_160) = 90
    stor19.field_168 % 16777216 = 0
    uint64(stor19.field_192) = 0
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    stor20 = 1
    reflectionPercentage = 200
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function getReflectionBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not stor3[address(arg1)]:
        idx = 0
        s = 0
        while idx < 0:
            if idx >= 0:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 23
            if totalDividend < lastDividendAt[mem[(32 * idx) + 128]]:
                revert with 0, 17
            if s > !(totalDividend - lastDividendAt[mem[(32 * idx) + 128]]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + totalDividend - lastDividendAt[mem[(32 * idx) + 128]]
            continue 
        return 0
    if stor3[address(arg1)] > test266151307():
        revert with 0, 65
    if stor3[address(arg1)]:
        mem[128 len 32 * stor3[address(arg1)]] = call.data[calldata.size len 32 * stor3[address(arg1)]]
    idx = 0
    while idx < stor3[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= stor3[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= stor3[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor6[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < stor3[address(arg1)]:
        if idx >= stor3[address(arg1)]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 23
        if totalDividend < lastDividendAt[mem[(32 * idx) + 128]]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[mem[(32 * idx) + 128]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[mem[(32 * idx) + 128]]
        continue 
    return (s * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)] * stor3[address(arg1)])
}

function claimRewards() payable {
    if stor20 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor20 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not stor3[address(msg.sender)]:
        idx = 0
        while idx < 0:
            if idx >= 0:
                revert with 0, 50
            if not stor2[mem[(32 * idx) + 128]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if stor2[mem[(32 * idx) + 128]] != msg.sender:
                revert with 0, 'Only owner can claim'
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 23
            if totalDividend < lastDividendAt[mem[(32 * idx) + 128]]:
                revert with 0, 17
            if totalDividend - lastDividendAt[mem[(32 * idx) + 128]]:
                if currentReflectionBalance < totalDividend - lastDividendAt[mem[(32 * idx) + 128]]:
                    revert with 0, 17
                currentReflectionBalance = currentReflectionBalance - totalDividend + lastDividendAt[mem[(32 * idx) + 128]]
                lastDividendAt[mem[(32 * idx) + 128]] = totalDividend
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                if not stor2[mem[(32 * idx) + 128]]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                call stor2[mem[(32 * idx) + 128]] with:
                   value totalDividend - lastDividendAt[mem[(32 * idx) + 128]] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor3[address(msg.sender)] > test266151307():
            revert with 0, 65
        if stor3[address(msg.sender)]:
            mem[128 len 32 * stor3[address(msg.sender)]] = call.data[calldata.size len 32 * stor3[address(msg.sender)]]
        idx = 0
        while idx < stor3[address(msg.sender)]:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= stor3[address(msg.sender)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 6)
            if idx >= stor3[address(msg.sender)]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor6[address(msg.sender)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor3[address(msg.sender)]:
            if idx >= stor3[address(msg.sender)]:
                revert with 0, 50
            if not stor2[mem[(32 * idx) + 128]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if stor2[mem[(32 * idx) + 128]] != msg.sender:
                revert with 0, 'Only owner can claim'
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 23
            if totalDividend < lastDividendAt[mem[(32 * idx) + 128]]:
                revert with 0, 17
            if totalDividend - lastDividendAt[mem[(32 * idx) + 128]]:
                if currentReflectionBalance < totalDividend - lastDividendAt[mem[(32 * idx) + 128]]:
                    revert with 0, 17
                currentReflectionBalance = currentReflectionBalance - totalDividend + lastDividendAt[mem[(32 * idx) + 128]]
                lastDividendAt[mem[(32 * idx) + 128]] = totalDividend
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                if not stor2[mem[(32 * idx) + 128]]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                call stor2[mem[(32 * idx) + 128]] with:
                   value totalDividend - lastDividendAt[mem[(32 * idx) + 128]] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor20 = 1
}



}
