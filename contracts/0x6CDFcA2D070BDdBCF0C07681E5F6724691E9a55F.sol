contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - emergencyWithdraw()
#
const blockTimestamp = block.timestamp

const MAX_BET_FEE = 1000


address owner;
array of bool stor1;
array of struct stor2;
address feeAddress;
address stor4;
uint256 stor5;
uint256 stor6;
uint16 stor7;
mapping of struct stor8;
mapping of struct stor9;
array of struct username;
mapping of uint8 stor11;
mapping of uint8 stor12;
array of uint256 stor99;

function userLength() payable {
    return username.length
}

function feeAddress() payable {
    return feeAddress
}

function sub_6e7bb152(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor11[arg1[all]])
}

function sub_785490b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[address(arg1)])
}

function owner() payable {
    return owner
}

function didWon(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor8[address(arg1)].field_672))
}

function getUsername(uint256 arg1) payable {
    return stor[(3 * arg1) + ('name', 'username', 10) + 1][0 len stor[(3 * arg1) + ('name', 'username', 10) + 1].length].field_0
}

function tomato() payable {
    return address(stor2.length)
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor4, stor5, stor6, stor7
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6fedb9eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    stor7 = uint16(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setFeeAddress: setting feeAddress to the zero address is forbidden'
    if feeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setFeeAddress: caller is not feeAddress'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function userInfoList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor8[arg1][1].field_0
    idx = 128
    s = 0
    while stor8[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor8[arg1].field_0, 
           Array(len=stor8[arg1][1].length, data=mem[128 len ceil32(stor8[arg1][1].length)]),
           address(stor8[arg1].field_512),
           bool(uint8(stor8[arg1].field_672))
}

function userInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < username.length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'username', 10) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'username', 10) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'username', 10) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return username[arg1].field_0, 
           Array(len=stor[(3 * arg1) + ('name', 'username', 10) + 1].length, data=mem[128 len ceil32(stor[(3 * arg1) + ('name', 'username', 10) + 1].length)]),
           address(username[arg1].field_512),
           bool(uint8(username[arg1].field_672))
}

function sub_3461b771(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor9[arg1[all]][1].length
    mem[ceil32(arg1.length) + 160] = stor9[arg1[all]][1].field_0
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor9[arg1[all]][1].length + 128 > idx:
        mem[idx + 32] = stor9[arg1[all]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 160] = stor9[arg1[all]].field_0
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 192] = 128
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 320] = 0
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 224] = address(stor9[arg1[all]].field_512)
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 256] = bool(uint8(stor9[arg1[all]].field_672))
    return memory
      from ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 160
       len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160
}

function sub_864a0d0a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if stor11[arg1[all]]:
        revert with 0, 'addUser: duplicated username'
    if stor12[address(arg2)]:
        revert with 0, 'addUser: duplicated account'
    stor11[arg1[all]] = 1
    stor12[address(arg2)] = 1
    mem[arg1.length + 256] = 0
    mem[ceil32(arg1.length) + 256 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 256] = 9
    stor[mem[arg1.length + 288 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = 0
    stor[mem[arg1.length + 288 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1][] = Array(len=arg1.length, data=arg1[all])
    address(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = address(arg2)
    Mask(96, 0, stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_160) = 0
    stor8[address(arg2)].field_0 = stor[mem[arg1.length + 288 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    if 31 >= stor[mem[arg1.length + 288 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1].length:
        stor8[address(arg2)].field_256 = uint256(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))])
        idx = 0
        while stor8[address(arg2)][1].length + 31 / 32 > idx:
            stor8[address(arg2)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        address(stor8[address(arg2)].field_512) = address(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
        Mask(96, 0, stor8[address(arg2)].field_672) = Mask(96, 0, bool(uint8(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_160)))
        username.length++
        username[username.length].field_0 = stor8[address(arg2)].field_0
        if 31 >= stor8[address(arg2)][1].length:
            username[username.length].field_256 = stor8[address(arg2)].field_256
            idx = 0
            while stor[(3 * username.length) + ('name', 'username', 10) + 1].length + 31 / 32 > idx:
                stor[idx + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            username[username.length].field_256 = Mask(255, 1, (256 * not bool(stor8[address(arg2)].field_256)) - 1 and stor8[address(arg2)].field_256) + 1
            if not Mask(255, 1, (256 * not bool(stor8[address(arg2)].field_256)) - 1 and stor8[address(arg2)].field_256):
                idx = 0
                while stor[(3 * username.length) + ('name', 'username', 10) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor8[address(arg2)][1].length + 31 / 32 > idx:
                    stor[s + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = stor8[address(arg2)][idx + 1].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor8[address(arg2)][1].length + 31 / 32
                while stor[(3 * username.length) + ('name', 'username', 10) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        stor8[address(arg2)].field_256 = Mask(255, 1, (256 * not bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))])) - 1 and uint256(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))])) + 1
        if not Mask(255, 1, (256 * not bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))])) - 1 and uint256(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))])):
            idx = 0
            while stor8[address(arg2)][1].length + 31 / 32 > idx:
                stor8[address(arg2)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[mem[arg1.length + 288 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1].length + 31 / 32 > idx:
                stor8[address(arg2)][s + 1].field_0 = stor[mem[arg1.length + 288 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][idx + 1]
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[mem[arg1.length + 288 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][1].length + 31 / 32
            while stor8[address(arg2)][1].length + 31 / 32 > idx:
                stor8[address(arg2)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        address(stor8[address(arg2)].field_512) = address(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
        Mask(96, 0, stor8[address(arg2)].field_672) = Mask(96, 0, bool(uint8(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 288, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_160)))
        username.length++
        username[username.length].field_0 = stor8[address(arg2)].field_0
        if 31 >= stor8[address(arg2)][1].length:
            username[username.length].field_256 = stor8[address(arg2)].field_256
            idx = 0
            while stor[(3 * username.length) + ('name', 'username', 10) + 1].length + 31 / 32 > idx:
                stor[idx + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            username[username.length].field_256 = Mask(255, 1, (256 * not bool(stor8[address(arg2)].field_256)) - 1 and stor8[address(arg2)].field_256) + 1
            if not Mask(255, 1, (256 * not bool(stor8[address(arg2)].field_256)) - 1 and stor8[address(arg2)].field_256):
                idx = 0
                while stor[(3 * username.length) + ('name', 'username', 10) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor8[address(arg2)][1].length + 31 / 32 > idx:
                    stor[s + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = stor8[address(arg2)][idx + 1].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor8[address(arg2)][1].length + 31 / 32
                while stor[(3 * username.length) + ('name', 'username', 10) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((3 * username.length) + ('name', 'username', 10) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
    address(username[username.length].field_512) = address(stor8[address(arg2)].field_512)
    Mask(96, 0, username[username.length].field_672) = Mask(96, 0, bool(uint8(stor8[address(arg2)].field_672)))
}

function sub_600cee78(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[arg1[all]] = 0
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 9
    stor9[arg1[all]].field_0 = 0
    stor9[arg1[all]].field_256 = 0
    if 31 >= stor9[arg1[all]][1].length:
        address(stor9[arg1[all]].field_512) = 0
        uint8(stor9[arg1[all]].field_672) = 0
        idx = 0
        while idx < username.length:
            mem[0] = 10
            _389 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('name', 'username', 10) + 1].length) + 32
            mem[_389] = stor[(3 * idx) + ('name', 'username', 10) + 1].length
            mem[0] = (3 * idx) + sha3(10) + 1
            mem[_389 + 32] = stor[sha3((3 * idx) + ('name', 'username', 10) + 1)].field_0
            s = _389 + 32
            t = sha3(mem[0])
            while _389 + stor[(3 * idx) + ('name', 'username', 10) + 1].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            _787 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_787] = arg1.length
            mem[_787 + 32 len arg1.length] = arg1[all]
            mem[_787 + arg1.length + 32] = 0
            if arg1.length >= mem[_389]:
                s = 0
                while s < mem[_389]:
                    require s < arg1.length
                    require s < mem[_389]
                    require s < arg1.length
                    require s < mem[_389]
                    s = s + 1
                    continue 
            else:
                s = 0
                while s < arg1.length:
                    require s < arg1.length
                    require s < mem[_389]
                    require s < arg1.length
                    require s < mem[_389]
                    s = s + 1
                    continue 
            if mem[_389] < arg1.length:
                idx = idx + 1
                continue 
            if mem[_389] > arg1.length:
                idx = idx + 1
                continue 
            require idx < username.length
            stor12[address(stor10[idx].field_512)] = 0
            stor8[address(stor10[idx].field_512)].field_0 = 0
            stor8[address(stor10[idx].field_512)].field_256 = 0
            if 31 < stor8[address(stor10[idx].field_512)][1].length:
                s = sha3(sha3(address(username[idx].field_512), 8) + 1)
                while sha3(sha3(address(username[idx].field_512), 8) + 1) + (stor8[address(stor10[idx].field_512)][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor8[address(stor10[idx].field_512)].field_512) = 0
            uint8(stor8[address(stor10[idx].field_512)].field_672) = 0
            s = idx
            while s < username.length - 1:
                require s + 1 < username.length
                require s < username.length
                username[s].field_0 = username[s].field_768
                mem[0] = (3 * s) + sha3(10) + 1
                if 31 >= stor[(3 * s) + ('name', 'username', 10) + 4].length:
                    username[s].field_256 = username[s].field_1024
                    t = sha3((3 * s) + sha3(10) + 1)
                    while sha3((3 * s) + sha3(10) + 1) + (stor[(3 * s) + ('name', 'username', 10) + 1].length + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                else:
                    username[s].field_256 = Mask(255, 1, (256 * not bool(username[s].field_1024)) - 1 and username[s].field_1024) + 1
                    if not Mask(255, 1, (256 * not bool(username[s].field_1024)) - 1 and username[s].field_1024):
                        t = sha3((3 * s) + sha3(10) + 1)
                        while sha3((3 * s) + sha3(10) + 1) + (stor[(3 * s) + ('name', 'username', 10) + 1].length + 31 / 32) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    else:
                        mem[0] = (3 * s) + sha3(10) + 4
                        t = sha3((3 * s) + sha3(10) + 1)
                        u = sha3((3 * s) + sha3(10) + 4)
                        while sha3((3 * s) + sha3(10) + 4) + (stor[(3 * s) + ('name', 'username', 10) + 4].length + 31 / 32) > u:
                            stor[t] = stor[u]
                            t = t + 1
                            u = u + 1
                            continue 
                        u = t
                        while sha3((3 * s) + sha3(10) + 1) + (stor[(3 * s) + ('name', 'username', 10) + 1].length + 31 / 32) > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                address(username[s].field_512) = address(username[s].field_1280)
                Mask(96, 0, username[s].field_672) = Mask(96, 0, bool(uint8(username[s].field_1440)))
                s = s + 1
                continue 
            require username.length
            username[username.length].field_0 = 0
            username[username.length].field_0 = 0
            if 31 < stor[(3 * username.length) + ('name', 'username', 10) - 2].length:
                idx = sha3((3 * username.length) + sha3(10) - 2)
                while sha3((3 * username.length) + sha3(10) - 2) + (stor[(3 * username.length) + ('name', 'username', 10) - 2].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            address(username[username.length].field_0) = 0
            uint8(username[username.length].field_0) = 0
            username.length--
    else:
        mem[0] = sha3(arg1[all], 9) + 1
        idx = 0
        while stor9[arg1[all]][1].length + 31 / 32 > idx:
            stor9[arg1[all]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        address(stor9[arg1[all]].field_512) = 0
        uint8(stor9[arg1[all]].field_672) = 0
        idx = 0
        while idx < username.length:
            mem[0] = 10
            _803 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('name', 'username', 10) + 1].length) + 32
            mem[_803] = stor[(3 * idx) + ('name', 'username', 10) + 1].length
            mem[0] = (3 * idx) + sha3(10) + 1
            mem[_803 + 32] = stor[sha3((3 * idx) + ('name', 'username', 10) + 1)].field_0
            s = _803 + 32
            t = sha3(mem[0])
            while _803 + stor[(3 * idx) + ('name', 'username', 10) + 1].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            _1159 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_1159] = arg1.length
            mem[_1159 + 32 len arg1.length] = arg1[all]
            mem[_1159 + arg1.length + 32] = 0
            if arg1.length >= mem[_803]:
                s = 0
                while s < mem[_803]:
                    require s < arg1.length
                    require s < mem[_803]
                    require s < arg1.length
                    require s < mem[_803]
                    s = s + 1
                    continue 
            else:
                s = 0
                while s < arg1.length:
                    require s < arg1.length
                    require s < mem[_803]
                    require s < arg1.length
                    require s < mem[_803]
                    s = s + 1
                    continue 
            if mem[_803] < arg1.length:
                idx = idx + 1
                continue 
            if mem[_803] > arg1.length:
                idx = idx + 1
                continue 
            require idx < username.length
            stor12[address(stor10[idx].field_512)] = 0
            stor8[address(stor10[idx].field_512)].field_0 = 0
            stor8[address(stor10[idx].field_512)].field_256 = 0
            if 31 < stor8[address(stor10[idx].field_512)][1].length:
                s = sha3(sha3(address(username[idx].field_512), 8) + 1)
                while sha3(sha3(address(username[idx].field_512), 8) + 1) + (stor8[address(stor10[idx].field_512)][1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor8[address(stor10[idx].field_512)].field_512) = 0
            uint8(stor8[address(stor10[idx].field_512)].field_672) = 0
            s = idx
            while s < username.length - 1:
                require s + 1 < username.length
                require s < username.length
                username[s].field_0 = username[s].field_768
                mem[0] = (3 * s) + sha3(10) + 1
                if 31 >= stor[(3 * s) + ('name', 'username', 10) + 4].length:
                    username[s].field_256 = username[s].field_1024
                    t = sha3((3 * s) + sha3(10) + 1)
                    while sha3((3 * s) + sha3(10) + 1) + (stor[(3 * s) + ('name', 'username', 10) + 1].length + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                else:
                    username[s].field_256 = Mask(255, 1, (256 * not bool(username[s].field_1024)) - 1 and username[s].field_1024) + 1
                    if not Mask(255, 1, (256 * not bool(username[s].field_1024)) - 1 and username[s].field_1024):
                        t = sha3((3 * s) + sha3(10) + 1)
                        while sha3((3 * s) + sha3(10) + 1) + (stor[(3 * s) + ('name', 'username', 10) + 1].length + 31 / 32) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    else:
                        mem[0] = (3 * s) + sha3(10) + 4
                        t = sha3((3 * s) + sha3(10) + 1)
                        u = sha3((3 * s) + sha3(10) + 4)
                        while sha3((3 * s) + sha3(10) + 4) + (stor[(3 * s) + ('name', 'username', 10) + 4].length + 31 / 32) > u:
                            stor[t] = stor[u]
                            t = t + 1
                            u = u + 1
                            continue 
                        u = t
                        while sha3((3 * s) + sha3(10) + 1) + (stor[(3 * s) + ('name', 'username', 10) + 1].length + 31 / 32) > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                address(username[s].field_512) = address(username[s].field_1280)
                Mask(96, 0, username[s].field_672) = Mask(96, 0, bool(uint8(username[s].field_1440)))
                s = s + 1
                continue 
            require username.length
            username[username.length].field_0 = 0
            username[username.length].field_0 = 0
            if 31 < stor[(3 * username.length) + ('name', 'username', 10) - 2].length:
                idx = sha3((3 * username.length) + sha3(10) - 2)
                while sha3((3 * username.length) + sha3(10) - 2) + (stor[(3 * username.length) + ('name', 'username', 10) - 2].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            address(username[username.length].field_0) = 0
            uint8(username[username.length].field_0) = 0
            username.length--
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if arg1 <= 0:
        emit Deposit(arg1, msg.sender);
        stor1.length = 1
    mem[100] = this.address
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stor4) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call stor4 with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[ceil32(return_data.size) + 296] = this.address
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor7 <= 0:
            if stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
        else:
            mem[(2 * ceil32(return_data.size)) + 328] = feeAddress
            mem[(2 * ceil32(return_data.size)) + 360] = 0
            mem[(2 * ceil32(return_data.size)) + 292] = 68
            mem[(2 * ceil32(return_data.size)) + 324 len 4] = transfer(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 392] = 32
            mem[(2 * ceil32(return_data.size)) + 424] = 'SafeBEP20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(stor4) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 456 len 96] = 0, feeAddress, 0, 0
            mem[(2 * ceil32(return_data.size)) + 524] = 0
            call stor4 with:
               funct Mask(32, 224, 0, feeAddress, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, feeAddress, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                    if not mem[(2 * ceil32(return_data.size)) + 488]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            if stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > stor8[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
        emit Deposit(0, msg.sender);
        stor1.length = 1
    mem[ceil32(return_data.size) + 292] = return_data.size
    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeBEP20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
        if not mem[ceil32(return_data.size) + 324]:
            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor7 <= 0:
        if stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(0, msg.sender);
        stor1.length = 1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = feeAddress
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = transfer(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stor4) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, feeAddress, 0, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
    call stor4 with:
       funct Mask(32, 224, 0, feeAddress, 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, feeAddress, 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        if stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > stor8[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Deposit(0, msg.sender);
        stor1.length = 1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 32
        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeBEP20: low-level call failed'
    else:
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 462] = 32
                mem[(4 * ceil32(return_data.size)) + 494] = 42
                mem[(4 * ceil32(return_data.size)) + 526] = 'SafeBEP20: BEP20 operation did n'
                mem[(4 * ceil32(return_data.size)) + 558] = 'ot succeed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 458
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        if stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0:
            mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 462] = 32
            mem[(4 * ceil32(return_data.size)) + 494] = 27
            mem[(4 * ceil32(return_data.size)) + 526] = 'SafeMath: addition overflow'
        else:
            if 0 <= stor8[address(msg.sender)].field_0:
                emit Deposit(0, msg.sender);
                stor1.length = 1
            mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 462] = 32
            mem[(4 * ceil32(return_data.size)) + 494] = 30
            mem[(4 * ceil32(return_data.size)) + 526] = 'SafeMath: subtraction overflow'
    revert with memory
      from (4 * ceil32(return_data.size)) + 458
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
