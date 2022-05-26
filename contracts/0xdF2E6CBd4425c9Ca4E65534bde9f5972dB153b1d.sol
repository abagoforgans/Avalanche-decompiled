contract main {




// =====================  Runtime code  =====================


#
#  - rescue(address arg1, address arg2, uint256 arg3)
#  - sub_a84a3a94(?)
#
address owner;
mapping of uint8 stor1;
address characterAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address referralAddress;
uint256 sub_3b89dcb3;
mapping of struct stor5;
mapping of uint8 stor6;
mapping of address sub_a5f9e683;
mapping of uint256 sub_45a311a8;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[arg1]))
}

function referral() payable {
    return referralAddress
}

function sub_3b89dcb3(?) payable {
    return sub_3b89dcb3
}

function sub_45a311a8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_45a311a8[arg1]
}

function character() payable {
    return characterAddress
}

function sub_7a221c8b(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function owner() payable {
    return owner
}

function sub_96f95600(?) payable {
    return bool(uint8(stor3.field_160))
}

function sub_a5f9e683(?) payable {
    require calldata.size - 4 >= 32
    return sub_a5f9e683[arg1]
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(users[arg1].field_0), uint256(users[arg1].field_256)
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

function sub_7d303d27(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b89dcb3 = arg1
}

function setReferral(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    referralAddress = arg1
}

function sub_204efe17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    characterAddress = address(arg1)
}

function sub_7cb555f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_45a311a8[address(arg1)] = arg2
}

function sub_50c11418(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(arg1))
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

function stringToUint(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    return sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
}

function isAlphaNumeric(string arg1) payable {
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
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            return 0
        if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                return 0
            if Mask(8, 248, mem[idx + 128]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                    return 0
                if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function codes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor5[arg1].field_0):
        if bool(stor5[arg1].field_0) == uint255(uint256(stor5[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5[arg1].field_0):
            if bool(stor5[arg1].field_0) == uint255(uint256(stor5[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor5[arg1].field_0)):
                if 31 < uint255(uint256(stor5[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor5[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor5[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor5[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
        else:
            if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor5[arg1].field_1 % 128:
                if 31 < stor5[arg1].field_1 % 128:
                    mem[128] = uint256(stor5[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor5[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
        mem[ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5) > uint255(uint256(stor5[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor5[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor5[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]), 
    if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor5[arg1].field_0):
        if bool(stor5[arg1].field_0) == uint255(uint256(stor5[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor5[arg1].field_0)):
            if 31 < uint255(uint256(stor5[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor5[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor5[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
    else:
        if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor5[arg1].field_1 % 128:
            if 31 < stor5[arg1].field_1 % 128:
                mem[128] = uint256(stor5[arg1].field_0)
                idx = 128
                s = 0
                while stor5[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
    mem[ceil32(stor5[arg1].field_1 % 128) + 192 len ceil32(stor5[arg1].field_1 % 128)] = mem[128 len ceil32(stor5[arg1].field_1 % 128)]
    if ceil32(stor5[arg1].field_1 % 128) > stor5[arg1].field_1 % 128:
        mem[stor5[arg1].field_1 % 128 + ceil32(stor5[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)], mem[(2 * ceil32(stor5[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor5[arg1].field_1 % 128)]), 
}

function sub_17be1062(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _241 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_241] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_241 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_241 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _241
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not uint256(users[msg.sender].field_0):
        revert with 0, 'not found profile'
    if uint256(users[address(msg.sender)].field_256) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * uint256(users[address(msg.sender)].field_256)):
        revert with 0, 17
    mem[0] = msg.sender
    mem[32] = 9
    if mem[96] > !uint256(users[address(msg.sender)].field_512):
        revert with 0, 17
    if (2 * uint256(users[address(msg.sender)].field_256)) + 2 >= sub_45a311a8[address(msg.sender)]:
        if mem[96] + uint256(users[address(msg.sender)].field_512) > (2 * uint256(users[address(msg.sender)].field_256)) + 2:
            revert with 0, 'codes too much'
        _472 = mem[96]
        idx = 0
        while idx < _472:
            if idx >= mem[96]:
                revert with 0, 50
            _476 = mem[(32 * idx) + 128]
            _478 = mem[64]
            _480 = mem[mem[(32 * idx) + 128]]
            s = 0
            while s < _480:
                mem[s + _478 + 32] = mem[s + _476 + 32]
                _472 = mem[96]
                s = s + 32
                continue 
            if ceil32(_480) <= _480:
                _694 = mem[64]
                mem[mem[64]] = _480 + _478 - mem[64]
                mem[64] = _480 + _478 + 32
                _696 = sha3(mem[_694 + 32 len mem[_694]])
                mem[0] = sha3(mem[_694 + 32 len mem[_694]])
                mem[32] = 7
                if sub_a5f9e683[mem[0]]:
                    revert with 0, 'duplicate code'
                if mem[_476] != 6:
                    revert with 0, 'wrong code length'
                s = 0
                while s < mem[_476]:
                    if s >= mem[_476]:
                        revert with 0, 50
                    if Mask(8, 248, mem[s + _476 + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'code is not alpha or numeric'
                    if Mask(8, 248, mem[s + _476 + 32]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[s + _476 + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'code is not alpha or numeric'
                        if Mask(8, 248, mem[s + _476 + 32]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[s + _476 + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                            if Mask(8, 248, mem[s + _476 + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                    if s == -1:
                        revert with 0, 17
                    _472 = mem[96]
                    s = s + 1
                    continue 
                mem[0] = _696
                mem[32] = 5
                _915 = mem[_476]
                if bool(stor5[_696].field_0):
                    if bool(stor5[_696].field_0) == uint255(uint256(stor5[_696].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_696, 5)
                    if not _915:
                        uint256(stor5[_696].field_0) = 0
                        s = sha3(sha3(_696, 5))
                        while sha3(sha3(_696, 5)) + ((uint255(uint256(stor5[_696].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_696].field_0) = (2 * _915) + 1
                        t = sha3(sha3(_696, 5))
                        s = _476 + 32
                        while _476 + _915 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _472 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_696, 5)) + (Mask(251, 0, _915 + 31) >> 5)
                        while sha3(sha3(_696, 5)) + ((uint255(uint256(stor5[_696].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor5[_696].field_0) == stor5[_696].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_696, 5)
                    if not _915:
                        uint256(stor5[_696].field_0) = 0
                        s = sha3(sha3(_696, 5))
                        while sha3(sha3(_696, 5)) + (stor5[_696].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_696].field_0) = (2 * _915) + 1
                        t = sha3(sha3(_696, 5))
                        s = _476 + 32
                        while _476 + _915 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _472 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_696, 5)) + (Mask(251, 0, _915 + 31) >> 5)
                        while sha3(sha3(_696, 5)) + (stor5[_696].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                sub_a5f9e683[_696] = msg.sender
                mem[32] = 9
                uint256(users[address(msg.sender)].field_512)++
                mem[0] = sha3(address(msg.sender), 9) + 2
                uint256(stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 9))) + uint256(users[address(msg.sender)].field_512)].field_0) = _696
            else:
                mem[_480 + _478 + 32] = 0
                _697 = mem[64]
                mem[mem[64]] = _480 + _478 - mem[64]
                mem[64] = _480 + _478 + 32
                _699 = sha3(mem[_697 + 32 len mem[_697]])
                mem[0] = sha3(mem[_697 + 32 len mem[_697]])
                mem[32] = 7
                if sub_a5f9e683[mem[0]]:
                    revert with 0, 'duplicate code'
                if mem[_476] != 6:
                    revert with 0, 'wrong code length'
                s = 0
                while s < mem[_476]:
                    if s >= mem[_476]:
                        revert with 0, 50
                    if Mask(8, 248, mem[s + _476 + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'code is not alpha or numeric'
                    if Mask(8, 248, mem[s + _476 + 32]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[s + _476 + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'code is not alpha or numeric'
                        if Mask(8, 248, mem[s + _476 + 32]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[s + _476 + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                            if Mask(8, 248, mem[s + _476 + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                    if s == -1:
                        revert with 0, 17
                    _472 = mem[96]
                    s = s + 1
                    continue 
                mem[0] = _699
                mem[32] = 5
                _917 = mem[_476]
                if bool(stor5[_699].field_0):
                    if bool(stor5[_699].field_0) == uint255(uint256(stor5[_699].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_699, 5)
                    if not _917:
                        uint256(stor5[_699].field_0) = 0
                        s = sha3(sha3(_699, 5))
                        while sha3(sha3(_699, 5)) + ((uint255(uint256(stor5[_699].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_699].field_0) = (2 * _917) + 1
                        t = sha3(sha3(_699, 5))
                        s = _476 + 32
                        while _476 + _917 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _472 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_699, 5)) + (Mask(251, 0, _917 + 31) >> 5)
                        while sha3(sha3(_699, 5)) + ((uint255(uint256(stor5[_699].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor5[_699].field_0) == stor5[_699].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_699, 5)
                    if not _917:
                        uint256(stor5[_699].field_0) = 0
                        s = sha3(sha3(_699, 5))
                        while sha3(sha3(_699, 5)) + (stor5[_699].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_699].field_0) = (2 * _917) + 1
                        t = sha3(sha3(_699, 5))
                        s = _476 + 32
                        while _476 + _917 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _472 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_699, 5)) + (Mask(251, 0, _917 + 31) >> 5)
                        while sha3(sha3(_699, 5)) + (stor5[_699].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _472 = mem[96]
                            s = s + 1
                            continue 
                sub_a5f9e683[_699] = msg.sender
                mem[32] = 9
                uint256(users[address(msg.sender)].field_512)++
                mem[0] = sha3(address(msg.sender), 9) + 2
                uint256(stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 9))) + uint256(users[address(msg.sender)].field_512)].field_0) = _699
            if idx == -1:
                revert with 0, 17
            _472 = mem[96]
            idx = idx + 1
            continue 
    else:
        if mem[96] + uint256(users[address(msg.sender)].field_512) > sub_45a311a8[address(msg.sender)]:
            revert with 0, 'codes too much'
        _473 = mem[96]
        idx = 0
        while idx < _473:
            if idx >= mem[96]:
                revert with 0, 50
            _477 = mem[(32 * idx) + 128]
            _479 = mem[64]
            _481 = mem[mem[(32 * idx) + 128]]
            s = 0
            while s < _481:
                mem[s + _479 + 32] = mem[s + _477 + 32]
                _473 = mem[96]
                s = s + 32
                continue 
            if ceil32(_481) <= _481:
                _700 = mem[64]
                mem[mem[64]] = _481 + _479 - mem[64]
                mem[64] = _481 + _479 + 32
                _702 = sha3(mem[_700 + 32 len mem[_700]])
                mem[0] = sha3(mem[_700 + 32 len mem[_700]])
                mem[32] = 7
                if sub_a5f9e683[mem[0]]:
                    revert with 0, 'duplicate code'
                if mem[_477] != 6:
                    revert with 0, 'wrong code length'
                s = 0
                while s < mem[_477]:
                    if s >= mem[_477]:
                        revert with 0, 50
                    if Mask(8, 248, mem[s + _477 + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'code is not alpha or numeric'
                    if Mask(8, 248, mem[s + _477 + 32]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[s + _477 + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'code is not alpha or numeric'
                        if Mask(8, 248, mem[s + _477 + 32]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[s + _477 + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                            if Mask(8, 248, mem[s + _477 + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                    if s == -1:
                        revert with 0, 17
                    _473 = mem[96]
                    s = s + 1
                    continue 
                mem[0] = _702
                mem[32] = 5
                _919 = mem[_477]
                if bool(stor5[_702].field_0):
                    if bool(stor5[_702].field_0) == uint255(uint256(stor5[_702].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_702, 5)
                    if not _919:
                        uint256(stor5[_702].field_0) = 0
                        s = sha3(sha3(_702, 5))
                        while sha3(sha3(_702, 5)) + ((uint255(uint256(stor5[_702].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_702].field_0) = (2 * _919) + 1
                        t = sha3(sha3(_702, 5))
                        s = _477 + 32
                        while _477 + _919 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _473 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_702, 5)) + (Mask(251, 0, _919 + 31) >> 5)
                        while sha3(sha3(_702, 5)) + ((uint255(uint256(stor5[_702].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor5[_702].field_0) == stor5[_702].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_702, 5)
                    if not _919:
                        uint256(stor5[_702].field_0) = 0
                        s = sha3(sha3(_702, 5))
                        while sha3(sha3(_702, 5)) + (stor5[_702].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_702].field_0) = (2 * _919) + 1
                        t = sha3(sha3(_702, 5))
                        s = _477 + 32
                        while _477 + _919 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _473 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_702, 5)) + (Mask(251, 0, _919 + 31) >> 5)
                        while sha3(sha3(_702, 5)) + (stor5[_702].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                sub_a5f9e683[_702] = msg.sender
                mem[32] = 9
                uint256(users[address(msg.sender)].field_512)++
                mem[0] = sha3(address(msg.sender), 9) + 2
                uint256(stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 9))) + uint256(users[address(msg.sender)].field_512)].field_0) = _702
            else:
                mem[_481 + _479 + 32] = 0
                _703 = mem[64]
                mem[mem[64]] = _481 + _479 - mem[64]
                mem[64] = _481 + _479 + 32
                _705 = sha3(mem[_703 + 32 len mem[_703]])
                mem[0] = sha3(mem[_703 + 32 len mem[_703]])
                mem[32] = 7
                if sub_a5f9e683[mem[0]]:
                    revert with 0, 'duplicate code'
                if mem[_477] != 6:
                    revert with 0, 'wrong code length'
                s = 0
                while s < mem[_477]:
                    if s >= mem[_477]:
                        revert with 0, 50
                    if Mask(8, 248, mem[s + _477 + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'code is not alpha or numeric'
                    if Mask(8, 248, mem[s + _477 + 32]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[s + _477 + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'code is not alpha or numeric'
                        if Mask(8, 248, mem[s + _477 + 32]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[s + _477 + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                            if Mask(8, 248, mem[s + _477 + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'code is not alpha or numeric'
                    if s == -1:
                        revert with 0, 17
                    _473 = mem[96]
                    s = s + 1
                    continue 
                mem[0] = _705
                mem[32] = 5
                _921 = mem[_477]
                if bool(stor5[_705].field_0):
                    if bool(stor5[_705].field_0) == uint255(uint256(stor5[_705].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_705, 5)
                    if not _921:
                        uint256(stor5[_705].field_0) = 0
                        s = sha3(sha3(_705, 5))
                        while sha3(sha3(_705, 5)) + ((uint255(uint256(stor5[_705].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_705].field_0) = (2 * _921) + 1
                        t = sha3(sha3(_705, 5))
                        s = _477 + 32
                        while _477 + _921 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _473 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_705, 5)) + (Mask(251, 0, _921 + 31) >> 5)
                        while sha3(sha3(_705, 5)) + ((uint255(uint256(stor5[_705].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor5[_705].field_0) == stor5[_705].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_705, 5)
                    if not _921:
                        uint256(stor5[_705].field_0) = 0
                        s = sha3(sha3(_705, 5))
                        while sha3(sha3(_705, 5)) + (stor5[_705].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor5[_705].field_0) = (2 * _921) + 1
                        t = sha3(sha3(_705, 5))
                        s = _477 + 32
                        while _477 + _921 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _473 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_705, 5)) + (Mask(251, 0, _921 + 31) >> 5)
                        while sha3(sha3(_705, 5)) + (stor5[_705].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _473 = mem[96]
                            s = s + 1
                            continue 
                sub_a5f9e683[_705] = msg.sender
                mem[32] = 9
                uint256(users[address(msg.sender)].field_512)++
                mem[0] = sha3(address(msg.sender), 9) + 2
                uint256(stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 9))) + uint256(users[address(msg.sender)].field_512)].field_0) = _705
            if idx == -1:
                revert with 0, 17
            _473 = mem[96]
            idx = idx + 1
            continue 
}

function sub_6791039b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 9
    mem[96] = uint256(users[address(arg1)].field_512)
    if not uint256(users[address(arg1)].field_512):
        if uint256(users[address(arg1)].field_512) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(users[address(arg1)].field_512)) + 128] = uint256(users[address(arg1)].field_512)
        mem[64] = (64 * uint256(users[address(arg1)].field_512)) + 160
        if not uint256(users[address(arg1)].field_512):
            idx = 0
            while idx < uint256(users[address(arg1)].field_512):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                _66 = sha3(mem[(32 * idx) + 128], 5)
                if bool(stor5[mem[(32 * idx) + 128]].field_0):
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _76 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5) + 32
                    mem[_76] = uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5
                    if bool(stor[_66].field_0):
                        if bool(stor[_66].field_0) == uint255(uint256(stor[_66].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_66].field_0)):
                            if 31 >= uint255(uint256(stor[_66].field_0)) * 0.5:
                                mem[_76 + 32] = 256 * Mask(248, 0, stor[_66].field_8)
                            else:
                                mem[0] = _66
                                mem[_76 + 32] = uint256(stor[sha3(_66)].field_0)
                                s = _76 + 32
                                t = sha3(_66)
                                while _76 + (uint255(uint256(stor[_66].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_66].field_0) == stor[_66].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_66].field_1 % 128:
                            if 31 >= stor[_66].field_1 % 128:
                                mem[_76 + 32] = 256 * Mask(248, 0, stor[_66].field_8)
                            else:
                                mem[0] = _66
                                mem[_76 + 32] = uint256(stor[sha3(_66)].field_0)
                                s = _76 + 32
                                t = sha3(_66)
                                while _76 + stor[_66].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _76
                else:
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == stor5[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 0, 34
                    _78 = mem[64]
                    mem[64] = mem[64] + ceil32(stor5[mem[(32 * idx) + 128]].field_1 % 128) + 32
                    mem[_78] = stor5[mem[(32 * idx) + 128]].field_1 % 128
                    if bool(stor[_66].field_0):
                        if bool(stor[_66].field_0) == uint255(uint256(stor[_66].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_66].field_0)):
                            if 31 >= uint255(uint256(stor[_66].field_0)) * 0.5:
                                mem[_78 + 32] = 256 * Mask(248, 0, stor[_66].field_8)
                            else:
                                mem[0] = _66
                                mem[_78 + 32] = uint256(stor[sha3(_66)].field_0)
                                s = _78 + 32
                                t = sha3(_66)
                                while _78 + (uint255(uint256(stor[_66].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_66].field_0) == stor[_66].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_66].field_1 % 128:
                            if 31 >= stor[_66].field_1 % 128:
                                mem[_78 + 32] = 256 * Mask(248, 0, stor[_66].field_8)
                            else:
                                mem[0] = _66
                                mem[_78 + 32] = uint256(stor[sha3(_66)].field_0)
                                s = _78 + 32
                                t = sha3(_66)
                                while _78 + stor[_66].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _78
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _64 = mem[64]
            mem[mem[64]] = 32
            _67 = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            idx = 0
            s = (32 * uint256(users[address(arg1)].field_512)) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _67) + 64
            while idx < _67:
                mem[t] = u + -_64 - 64
                _120 = mem[s]
                _124 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _124:
                    mem[v + u + 32] = mem[v + _120 + 32]
                    v = v + 32
                    continue 
                if ceil32(_124) > _124:
                    mem[_124 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_124) + u + 32
                continue 
        else:
            mem[(32 * uint256(users[address(arg1)].field_512)) + 160] = 96
            s = (32 * uint256(users[address(arg1)].field_512)) + 160
            idx = uint256(users[address(arg1)].field_512)
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _118 = mem[96]
            idx = 0
            while idx < _118:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                _131 = sha3(mem[(32 * idx) + 128], 5)
                if bool(stor5[mem[(32 * idx) + 128]].field_0):
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _142 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5) + 32
                    mem[_142] = uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5
                    if bool(stor[_131].field_0):
                        if bool(stor[_131].field_0) == uint255(uint256(stor[_131].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_131].field_0)):
                            if 31 >= uint255(uint256(stor[_131].field_0)) * 0.5:
                                mem[_142 + 32] = 256 * Mask(248, 0, stor[_131].field_8)
                            else:
                                mem[0] = _131
                                mem[_142 + 32] = uint256(stor[sha3(_131)].field_0)
                                s = _142 + 32
                                t = sha3(_131)
                                while _142 + (uint255(uint256(stor[_131].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_131].field_0) == stor[_131].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_131].field_1 % 128:
                            if 31 >= stor[_131].field_1 % 128:
                                mem[_142 + 32] = 256 * Mask(248, 0, stor[_131].field_8)
                            else:
                                mem[0] = _131
                                mem[_142 + 32] = uint256(stor[sha3(_131)].field_0)
                                s = _142 + 32
                                t = sha3(_131)
                                while _142 + stor[_131].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _142
                else:
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == stor5[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 0, 34
                    _145 = mem[64]
                    mem[64] = mem[64] + ceil32(stor5[mem[(32 * idx) + 128]].field_1 % 128) + 32
                    mem[_145] = stor5[mem[(32 * idx) + 128]].field_1 % 128
                    if bool(stor[_131].field_0):
                        if bool(stor[_131].field_0) == uint255(uint256(stor[_131].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_131].field_0)):
                            if 31 >= uint255(uint256(stor[_131].field_0)) * 0.5:
                                mem[_145 + 32] = 256 * Mask(248, 0, stor[_131].field_8)
                            else:
                                mem[0] = _131
                                mem[_145 + 32] = uint256(stor[sha3(_131)].field_0)
                                s = _145 + 32
                                t = sha3(_131)
                                while _145 + (uint255(uint256(stor[_131].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_131].field_0) == stor[_131].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_131].field_1 % 128:
                            if 31 >= stor[_131].field_1 % 128:
                                mem[_145 + 32] = 256 * Mask(248, 0, stor[_131].field_8)
                            else:
                                mem[0] = _131
                                mem[_145 + 32] = uint256(stor[sha3(_131)].field_0)
                                s = _145 + 32
                                t = sha3(_131)
                                while _145 + stor[_131].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _145
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _129 = mem[64]
            mem[mem[64]] = 32
            _132 = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            idx = 0
            s = (32 * uint256(users[address(arg1)].field_512)) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _132) + 64
            while idx < _132:
                mem[t] = u + -_129 - 64
                _214 = mem[s]
                _217 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _217:
                    mem[v + u + 32] = mem[v + _214 + 32]
                    v = v + 32
                    continue 
                if ceil32(_217) > _217:
                    mem[_217 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_217) + u + 32
                continue 
    else:
        mem[0] = sha3(address(arg1), 9) + 2
        mem[128] = uint256(users[address(arg1)][2].field_0)
        idx = 128
        s = 0
        while (32 * uint256(users[address(arg1)].field_512)) + 96 > idx:
            mem[idx + 32] = uint256(users[address(arg1)][s + 2].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if uint256(users[address(arg1)].field_512) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(users[address(arg1)].field_512)) + 128] = uint256(users[address(arg1)].field_512)
        mem[64] = (64 * uint256(users[address(arg1)].field_512)) + 160
        if not uint256(users[address(arg1)].field_512):
            idx = 0
            while idx < uint256(users[address(arg1)].field_512):
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                _224 = sha3(mem[(32 * idx) + 128], 5)
                if bool(stor5[mem[(32 * idx) + 128]].field_0):
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _235 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5) + 32
                    mem[_235] = uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5
                    if bool(stor[_224].field_0):
                        if bool(stor[_224].field_0) == uint255(uint256(stor[_224].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_224].field_0)):
                            if 31 >= uint255(uint256(stor[_224].field_0)) * 0.5:
                                mem[_235 + 32] = 256 * Mask(248, 0, stor[_224].field_8)
                            else:
                                mem[0] = _224
                                mem[_235 + 32] = uint256(stor[sha3(_224)].field_0)
                                s = _235 + 32
                                t = sha3(_224)
                                while _235 + (uint255(uint256(stor[_224].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_224].field_0) == stor[_224].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_224].field_1 % 128:
                            if 31 >= stor[_224].field_1 % 128:
                                mem[_235 + 32] = 256 * Mask(248, 0, stor[_224].field_8)
                            else:
                                mem[0] = _224
                                mem[_235 + 32] = uint256(stor[sha3(_224)].field_0)
                                s = _235 + 32
                                t = sha3(_224)
                                while _235 + stor[_224].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _235
                else:
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == stor5[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 0, 34
                    _237 = mem[64]
                    mem[64] = mem[64] + ceil32(stor5[mem[(32 * idx) + 128]].field_1 % 128) + 32
                    mem[_237] = stor5[mem[(32 * idx) + 128]].field_1 % 128
                    if bool(stor[_224].field_0):
                        if bool(stor[_224].field_0) == uint255(uint256(stor[_224].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_224].field_0)):
                            if 31 >= uint255(uint256(stor[_224].field_0)) * 0.5:
                                mem[_237 + 32] = 256 * Mask(248, 0, stor[_224].field_8)
                            else:
                                mem[0] = _224
                                mem[_237 + 32] = uint256(stor[sha3(_224)].field_0)
                                s = _237 + 32
                                t = sha3(_224)
                                while _237 + (uint255(uint256(stor[_224].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_224].field_0) == stor[_224].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_224].field_1 % 128:
                            if 31 >= stor[_224].field_1 % 128:
                                mem[_237 + 32] = 256 * Mask(248, 0, stor[_224].field_8)
                            else:
                                mem[0] = _224
                                mem[_237 + 32] = uint256(stor[sha3(_224)].field_0)
                                s = _237 + 32
                                t = sha3(_224)
                                while _237 + stor[_224].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _237
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _222 = mem[64]
            mem[mem[64]] = 32
            _225 = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            idx = 0
            s = (32 * uint256(users[address(arg1)].field_512)) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _225) + 64
            while idx < _225:
                mem[t] = u + -_222 - 64
                _279 = mem[s]
                _282 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _282:
                    mem[v + u + 32] = mem[v + _279 + 32]
                    v = v + 32
                    continue 
                if ceil32(_282) > _282:
                    mem[_282 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_282) + u + 32
                continue 
        else:
            mem[(32 * uint256(users[address(arg1)].field_512)) + 160] = 96
            s = (32 * uint256(users[address(arg1)].field_512)) + 160
            idx = uint256(users[address(arg1)].field_512)
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _277 = mem[96]
            idx = 0
            while idx < _277:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 5
                _289 = sha3(mem[(32 * idx) + 128], 5)
                if bool(stor5[mem[(32 * idx) + 128]].field_0):
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _295 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5) + 32
                    mem[_295] = uint255(uint256(stor5[mem[(32 * idx) + 128]].field_0)) * 0.5
                    if bool(stor[_289].field_0):
                        if bool(stor[_289].field_0) == uint255(uint256(stor[_289].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_289].field_0)):
                            if 31 >= uint255(uint256(stor[_289].field_0)) * 0.5:
                                mem[_295 + 32] = 256 * Mask(248, 0, stor[_289].field_8)
                            else:
                                mem[0] = _289
                                mem[_295 + 32] = uint256(stor[sha3(_289)].field_0)
                                s = _295 + 32
                                t = sha3(_289)
                                while _295 + (uint255(uint256(stor[_289].field_0)) * 0.5) > s:
                                    _277 = mem[96]
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_289].field_0) == stor[_289].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_289].field_1 % 128:
                            if 31 >= stor[_289].field_1 % 128:
                                mem[_295 + 32] = 256 * Mask(248, 0, stor[_289].field_8)
                            else:
                                mem[0] = _289
                                mem[_295 + 32] = uint256(stor[sha3(_289)].field_0)
                                s = _295 + 32
                                t = sha3(_289)
                                while _295 + stor[_289].field_1 % 128 > s:
                                    _277 = mem[96]
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _295
                else:
                    if bool(stor5[mem[(32 * idx) + 128]].field_0) == stor5[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 0, 34
                    _296 = mem[64]
                    mem[64] = mem[64] + ceil32(stor5[mem[(32 * idx) + 128]].field_1 % 128) + 32
                    mem[_296] = stor5[mem[(32 * idx) + 128]].field_1 % 128
                    if bool(stor[_289].field_0):
                        if bool(stor[_289].field_0) == uint255(uint256(stor[_289].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor[_289].field_0)):
                            if 31 >= uint255(uint256(stor[_289].field_0)) * 0.5:
                                mem[_296 + 32] = 256 * Mask(248, 0, stor[_289].field_8)
                            else:
                                mem[0] = _289
                                mem[_296 + 32] = uint256(stor[sha3(_289)].field_0)
                                s = _296 + 32
                                t = sha3(_289)
                                while _296 + (uint255(uint256(stor[_289].field_0)) * 0.5) > s:
                                    _277 = mem[96]
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor[_289].field_0) == stor[_289].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor[_289].field_1 % 128:
                            if 31 >= stor[_289].field_1 % 128:
                                mem[_296 + 32] = 256 * Mask(248, 0, stor[_289].field_8)
                            else:
                                mem[0] = _289
                                mem[_296 + 32] = uint256(stor[sha3(_289)].field_0)
                                s = _296 + 32
                                t = sha3(_289)
                                while _296 + stor[_289].field_1 % 128 > s:
                                    _277 = mem[96]
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * uint256(users[address(arg1)].field_512)) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(users[address(arg1)].field_512)) + 160] = _296
                if idx == -1:
                    revert with 0, 17
                _277 = mem[96]
                idx = idx + 1
                continue 
            _287 = mem[64]
            mem[mem[64]] = 32
            _290 = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(users[address(arg1)].field_512)) + 128]
            idx = 0
            s = (32 * uint256(users[address(arg1)].field_512)) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _290) + 64
            while idx < _290:
                mem[t] = u + -_287 - 64
                _315 = mem[s]
                _317 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _317:
                    mem[v + u + 32] = mem[v + _315 + 32]
                    v = v + 32
                    continue 
                if ceil32(_317) > _317:
                    mem[_317 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_317) + u + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
