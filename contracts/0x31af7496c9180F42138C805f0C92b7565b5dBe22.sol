contract main {




// =====================  Runtime code  =====================


#
#  - reInsert(address arg1, uint256 arg2, address arg3, address arg4)
#  - sub_3e5d7947(?)
#  - findInsertPosition(uint256 arg1, address arg2, address arg3)
#  - sub_83be79a1(?)
#  - sub_8f37e2b8(?)
#
const NAME = 'SortedTroves'


address stor0;
address stor1;
address stor2;
address stor3;
uint256 sub_80ec46e8;
uint256 sub_eda6460c;
address firstAddress;
address lastAddress;
uint256 maxSize;
uint256 size;
mapping of struct sub_5189b08f;
mapping of uint8 stor11;
uint256 sub_d170f9f8;
uint8 stor13;

function getFirst() payable {
    return firstAddress
}

function getLast() payable {
    return lastAddress
}

function sub_5189b08f(?) payable {
    require calldata.size - 4 >= 32
    return sub_5189b08f[address(arg1)].field_512
}

function contains(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_5189b08f[address(arg1)].field_0)
}

function getMaxSize() payable {
    return maxSize
}

function getBoost(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_5189b08f[address(arg1)].field_768
}

function getNext(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_5189b08f[address(arg1)].field_8
}

function sub_79c1d4e4(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function sub_80ec46e8(?) payable {
    return sub_80ec46e8
}

function sub_97210879(?) payable {
    require calldata.size - 4 >= 32
    return sub_5189b08f[address(arg1)].field_1024
}

function getNode(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_5189b08f[address(arg1)].field_0), 
           sub_5189b08f[address(arg1)].field_0,
           sub_5189b08f[address(arg1)].field_256,
           sub_5189b08f[address(arg1)].field_512,
           sub_5189b08f[address(arg1)].field_768,
           sub_5189b08f[address(arg1)].field_1024
}

function sub_ad535efd(?) payable {
    return sub_d170f9f8
}

function getPrev(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_5189b08f[address(arg1)].field_256
}

function sub_d170f9f8(?) payable {
    return sub_d170f9f8
}

function getSize() payable {
    return size
}

function sub_eda6460c(?) payable {
    return sub_eda6460c
}

function _fallback() payable {
    revert
}

function isEmpty() payable {
    return not bool(size)
}

function isFull() payable {
    return (size == maxSize)
}

function data() payable {
    return firstAddress, lastAddress, maxSize, size
}

function sub_078e1d48(?) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'ST: External caller not allowed'
    sub_eda6460c = arg1
}

function sub_b0f0b726(?) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'ST: External caller not allowed'
    sub_80ec46e8 = arg1
}

function sub_9ca92f51(?) payable {
    require calldata.size - 4 >= 160
    if stor13:
        revert with 0, 'Addresses already set'
    stor13 = 1
    if not arg1:
        revert with 0, 'SortedTroves: Size can't be zero'
    maxSize = arg1
    sub_eda6460c = 999903734192105837
    stor2 = arg2
    stor0 = arg3
    stor1 = arg4
    stor3 = arg5
}

function sub_265eb84f(?) payable {
    require calldata.size - 4 >= 64
    if stor2 != msg.sender:
        revert with 0, 'ST: External caller not allowed'
    if not sub_5189b08f[address(arg1)].field_0:
        revert with 0, 'SortedTroves: Id not found'
    if not arg2:
        if stor11[address(arg1)]:
            if 1 > sub_d170f9f8:
                revert with 0, 'sub overflow'
            sub_d170f9f8--
            stor11[address(arg1)] = 0
            emit 0xebe81d44: arg1
    else:
        if not stor11[address(arg1)]:
            if sub_d170f9f8 + 1 < sub_d170f9f8:
                revert with 0, 'add overflow'
            sub_d170f9f8++
            stor11[address(arg1)] = 1
            emit 0x4f504020: arg1
}

function validInsertPosition(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2:
        if not arg3:
            if lastAddress != arg2:
                return (lastAddress == arg2)
            return arg1 <= sub_5189b08f[address(arg2)].field_512
        if arg3 != sub_5189b08f[address(arg2)].field_8:
            return (arg3 == sub_5189b08f[address(arg2)].field_8)
        if arg1 > sub_5189b08f[address(arg2)].field_512:
            return arg1 <= sub_5189b08f[address(arg2)].field_512
    else:
        if not arg3:
            return not bool(size)
        if not arg2:
            if firstAddress != arg3:
                return (firstAddress == arg3)
        else:
            if not arg3:
                if lastAddress != arg2:
                    return (lastAddress == arg2)
                return arg1 <= sub_5189b08f[address(arg2)].field_512
            if arg3 != sub_5189b08f[address(arg2)].field_8:
                return (arg3 == sub_5189b08f[address(arg2)].field_8)
            if arg1 > sub_5189b08f[address(arg2)].field_512:
                return arg1 <= sub_5189b08f[address(arg2)].field_512
    return arg1 >= sub_5189b08f[address(arg3)].field_512
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'ST: External caller not allowed'
    if not sub_5189b08f[address(arg1)].field_0:
        revert with 0, 'SortedTroves: Id not found'
    if 1 >= size:
        firstAddress = 0
        lastAddress = 0
    else:
        if firstAddress == arg1:
            firstAddress = sub_5189b08f[address(arg1)].field_8
            sub_5189b08f[sub_5189b08f[address(arg1)].field_8].field_256 = 0
        else:
            if lastAddress != arg1:
                sub_5189b08f[sub_5189b08f[address(arg1)].field_256].field_8 = sub_5189b08f[address(arg1)].field_8
                sub_5189b08f[sub_5189b08f[address(arg1)].field_8].field_256 = sub_5189b08f[address(arg1)].field_256
            else:
                lastAddress = sub_5189b08f[address(arg1)].field_256
                sub_5189b08f[sub_5189b08f[address(arg1)].field_256].field_8 = 0
    sub_5189b08f[address(arg1)].field_0 = 0
    sub_5189b08f[address(arg1)].field_256 = 0
    sub_5189b08f[address(arg1)].field_512 = 0
    sub_5189b08f[address(arg1)].field_768 = 0
    sub_5189b08f[address(arg1)].field_1024 = 0
    if 1 > size:
        revert with 0, 'sub overflow'
    size--
    emit NodeRemoved(arg1);
}

function sub_6ad88d05(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 10
    mem[96] = 12
    mem[128] = 'sub overflow'
    if sub_5189b08f[address(arg1)].field_1024 > block.timestamp:
        revert with 0, 'sub overflow'
    mem[64] = 224
    mem[160] = 8
    mem[192] = 'div by 0'
    if block.timestamp - sub_5189b08f[address(arg1)].field_1024 / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = sub_eda6460c
        while idx > 1:
            if not bool(idx):
                if not s:
                    _166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_166] = 8
                    mem[_166 + 32] = 'div by 0'
                    _172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_172] = 8
                    mem[_172 + 32] = 'div by 0'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_170] = 8
                mem[_170 + 32] = 'div by 0'
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 8
                mem[_174 + 32] = 'div by 0'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 8
                mem[_165 + 32] = 'div by 0'
                if not s:
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 8
                    mem[_208 + 32] = 'div by 0'
                    _232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_232] = 12
                    mem[_232 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_286] = 8
                        mem[_286 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _232 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_212] = 8
                    mem[_212 + 32] = 'div by 0'
                    _236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_236] = 12
                    mem[_236 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _304 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_304] = 8
                        mem[_304 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _236 + 32]
                        idx = idx + 32
                        continue 
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 'mul overflow'
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'add overflow'
                _169 = mem[64]
                mem[64] = mem[64] + 64
                mem[_169] = 8
                mem[_169 + 32] = 'div by 0'
                if not s:
                    _211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_211] = 8
                    mem[_211 + 32] = 'div by 0'
                    _235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_235] = 12
                    mem[_235 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _301 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_301] = 8
                        mem[_301 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _235 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_214] = 8
                    mem[_214 + 32] = 'div by 0'
                    _241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_241] = 12
                    mem[_241 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = 8
                        mem[_317 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _241 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, 'sub overflow'
    else:
        if not block.timestamp - sub_5189b08f[address(arg1)].field_1024 / 60:
            if not sub_5189b08f[address(arg1)].field_768:
                return 0
            if 10^18 * sub_5189b08f[address(arg1)].field_768 / sub_5189b08f[address(arg1)].field_768 != 10^18:
                revert with 0, 'mul overflow'
            return (10^18 * sub_5189b08f[address(arg1)].field_768 / 10^18)
        idx = block.timestamp - sub_5189b08f[address(arg1)].field_1024 / 60
        s = sub_eda6460c
        while idx > 1:
            if not bool(idx):
                if not s:
                    _163 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_163] = 8
                    mem[_163 + 32] = 'div by 0'
                    _171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_171] = 8
                    mem[_171 + 32] = 'div by 0'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 'mul overflow'
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'add overflow'
                _168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_168] = 8
                mem[_168 + 32] = 'div by 0'
                _173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_173] = 8
                mem[_173 + 32] = 'div by 0'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_162] = 8
                mem[_162 + 32] = 'div by 0'
                if not s:
                    _205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_205] = 8
                    mem[_205 + 32] = 'div by 0'
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = 12
                    mem[_231 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_278] = 8
                        mem[_278 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _231 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_210] = 8
                    mem[_210 + 32] = 'div by 0'
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = 12
                    mem[_234 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_294] = 8
                        mem[_294 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _234 + 32]
                        idx = idx + 32
                        continue 
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 'mul overflow'
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'add overflow'
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 8
                mem[_167 + 32] = 'div by 0'
                if not s:
                    _209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_209] = 8
                    mem[_209 + 32] = 'div by 0'
                    _233 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_233] = 12
                    mem[_233 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _291 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_291] = 8
                        mem[_291 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _233 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 'mul overflow'
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'add overflow'
                    _213 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_213] = 8
                    mem[_213 + 32] = 'div by 0'
                    _237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_237] = 12
                    mem[_237 + 32] = 'sub overflow'
                    if 1 <= idx:
                        _309 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_309] = 8
                        mem[_309 + 32] = 'div by 0'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 12
                    mem[mem[64] + 68] = 'sub overflow'
                    idx = 32
                    while idx < 12:
                        mem[idx + mem[64] + 68] = mem[idx + _237 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, 'sub overflow'
    if not s:
        if sub_5189b08f[address(arg1)].field_768:
            if 0 / sub_5189b08f[address(arg1)].field_768:
                revert with 0, 'mul overflow'
            else:
                return 0
        else:
            return 0
    if 10^18 * s / s != 10^18:
        revert with 0, 'mul overflow'
    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
        revert with 0, 'add overflow'
    if not sub_5189b08f[address(arg1)].field_768:
        return 0
    if (10^18 * s) + 5 * 10^17 / 10^18 * sub_5189b08f[address(arg1)].field_768 / sub_5189b08f[address(arg1)].field_768 != (10^18 * s) + 5 * 10^17 / 10^18:
        revert with 0, 'mul overflow'
    return ((10^18 * s) + 5 * 10^17 / 10^18 * sub_5189b08f[address(arg1)].field_768 / 10^18)
}



}
