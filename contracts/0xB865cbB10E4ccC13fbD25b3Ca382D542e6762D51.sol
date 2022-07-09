contract main {




// =====================  Runtime code  =====================


#
#  - sub_03844097(?)
#  - sub_08d89d5f(?)
#  - sub_5e49b5de(?)
#  - collectIncome(address arg1)
#  - sub_f10cffbd(?)
#
address owner;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
mapping of struct sub_39f67738;
mapping of struct stor7;
array of struct stor8;
mapping of uint8 stor9;
mapping of address sub_5eb1877e;
mapping of uint256 sub_da142807;
array of address sub_1306c0a5;
mapping of struct sub_1ee08fa1;
mapping of uint256 sub_07962845;
mapping of uint256 sub_e383f7d2;
mapping of struct stor99;

function sub_07962845(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_07962845[arg1]
}

function sub_1306c0a5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < uint256(sub_1306c0a5[arg1])
    return address(sub_1306c0a5[arg1][arg2])
}

function sub_1ee08fa1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_1ee08fa1[arg1].field_0), 
           bool(uint8(sub_1ee08fa1[arg1].field_256)),
           bool(uint8(sub_1ee08fa1[arg1].field_264)),
           uint256(sub_1ee08fa1[arg1].field_512)
}

function sub_39f67738(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return address(sub_39f67738[arg1[all]].field_0), 
           bool(uint8(sub_39f67738[arg1[all]].field_160)),
           uint256(sub_39f67738[arg1[all]].field_256),
           uint256(sub_39f67738[arg1[all]].field_512),
           uint256(sub_39f67738[arg1[all]].field_768),
           uint256(sub_39f67738[arg1[all]].field_1024),
           uint256(sub_39f67738[arg1[all]].field_1280)
}

function sub_5cb3b14f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function sub_5eb1877e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5eb1877e[arg1]
}

function owner() payable {
    return owner
}

function sub_a59b3645(?) payable {
    return address(stor4.length)
}

function lottery() payable {
    return address(stor3.length)
}

function factory() payable {
    return address(stor1.length)
}

function priceGetter() payable {
    return address(stor2.length)
}

function sub_da142807(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_da142807[address(arg1)][address(arg2)]
}

function sub_e383f7d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e383f7d2[arg1]
}

function sub_e6251237(?) payable {
    return address(stor5.length)
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

function addStablecoin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 1
    emit 0x86b377b6: arg1
}

function setLottery(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor3.length) = arg1
    emit 0x925ca4fe: arg1
}

function sub_1d7ad9d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor4.length) = address(arg1)
    emit 0x6fc32d8d: address(arg1)
}

function sub_a815a221(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor5.length) = address(arg1)
    emit 0x82b306b4: address(arg1)
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

function sub_4e75ce89(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        revert with 0, 'Policy token not found'
    mem[ceil32(ceil32(arg1.length)) + 97] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_18dd152f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor7[arg1].field_0):
            if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor7[arg1].field_1):
                if 31 < uint255(stor7[arg1].field_1):
                    mem[128] = uint256(stor7[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor7[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7[arg1].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
        else:
            if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor7[arg1].field_1 % 128:
                if 31 < stor7[arg1].field_1 % 128:
                    mem[128] = uint256(stor7[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor7[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7[arg1].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
        mem[ceil32(uint255(stor7[arg1].field_1)) + 192 len ceil32(uint255(stor7[arg1].field_1))] = mem[128 len ceil32(uint255(stor7[arg1].field_1))]
        if ceil32(uint255(stor7[arg1].field_1)) > uint255(stor7[arg1].field_1):
            mem[uint255(stor7[arg1].field_1) + ceil32(uint255(stor7[arg1].field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor7[arg1].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1].field_1))], mem[(2 * ceil32(uint255(stor7[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor7[arg1].field_1))]), 
    if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor7[arg1].field_1):
            if 31 < uint255(stor7[arg1].field_1):
                mem[128] = uint256(stor7[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor7[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0 % 128, data=mem[128 len ceil32(stor7[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
    else:
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor7[arg1].field_1 % 128:
            if 31 < stor7[arg1].field_1 % 128:
                mem[128] = uint256(stor7[arg1].field_0)
                idx = 128
                s = 0
                while stor7[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor7[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0 % 128, data=mem[128 len ceil32(stor7[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
    mem[ceil32(stor7[arg1].field_1 % 128) + 192 len ceil32(stor7[arg1].field_1 % 128)] = mem[128 len ceil32(stor7[arg1].field_1 % 128)]
    if ceil32(stor7[arg1].field_1 % 128) > stor7[arg1].field_1 % 128:
        mem[stor7[arg1].field_1 % 128 + ceil32(stor7[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor7[arg1].field_0 % 128, data=mem[128 len ceil32(stor7[arg1].field_1 % 128)], mem[(2 * ceil32(stor7[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor7[arg1].field_1 % 128)]), 
}

function sub_0dc72647(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor8.length
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_0):
            if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor8[arg1].field_1):
                if 31 < uint255(stor8[arg1].field_1):
                    mem[128] = uint256(stor8[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor8[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor8[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8[arg1].field_1)), data=mem[128 len ceil32(uint255(stor8[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        else:
            if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_1 % 128:
                if 31 < stor8[arg1].field_1 % 128:
                    mem[128] = uint256(stor8[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor8[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8[arg1].field_1)), data=mem[128 len ceil32(uint255(stor8[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        mem[ceil32(uint255(stor8[arg1].field_1)) + 192 len ceil32(uint255(stor8[arg1].field_1))] = mem[128 len ceil32(uint255(stor8[arg1].field_1))]
        if ceil32(uint255(stor8[arg1].field_1)) > uint255(stor8[arg1].field_1):
            mem[uint255(stor8[arg1].field_1) + ceil32(uint255(stor8[arg1].field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor8[arg1].field_1)), data=mem[128 len ceil32(uint255(stor8[arg1].field_1))], mem[(2 * ceil32(uint255(stor8[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor8[arg1].field_1))]), 
    if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor8[arg1].field_1):
            if 31 < uint255(stor8[arg1].field_1):
                mem[128] = uint256(stor8[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor8[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor8[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    else:
        if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_1 % 128:
            if 31 < stor8[arg1].field_1 % 128:
                mem[128] = uint256(stor8[arg1].field_0)
                idx = 128
                s = 0
                while stor8[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor8[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    mem[ceil32(stor8[arg1].field_1 % 128) + 192 len ceil32(stor8[arg1].field_1 % 128)] = mem[128 len ceil32(stor8[arg1].field_1 % 128)]
    if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
        mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)], mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor8[arg1].field_1 % 128)]), 
}

function sub_38081de2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor7[address(arg1)].field_0):
        if bool(stor7[address(arg1)].field_0) == uint255(stor7[address(arg1)].field_1) < 32:
            revert with 0, 34
        if bool(stor7[address(arg1)].field_0):
            if bool(stor7[address(arg1)].field_0) == uint255(stor7[address(arg1)].field_1) < 32:
                revert with 0, 34
            if uint255(stor7[address(arg1)].field_1):
                if 31 < uint255(stor7[address(arg1)].field_1):
                    mem[128] = uint256(stor7[address(arg1)].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor7[address(arg1)].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor7[address(arg1)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor7[address(arg1)].field_1) <= 0:
                        revert with 0, 'Policy name not found'
                    return Array(len=2 * Mask(256, -1, uint255(stor7[address(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor7[address(arg1)].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor7[address(arg1)].field_8)
        else:
            if bool(stor7[address(arg1)].field_0) == stor7[address(arg1)].field_1 % 128 < 32:
                revert with 0, 34
            if stor7[address(arg1)].field_1 % 128:
                if 31 < stor7[address(arg1)].field_1 % 128:
                    mem[128] = uint256(stor7[address(arg1)].field_0)
                    idx = 128
                    s = 0
                    while stor7[address(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor7[address(arg1)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor7[address(arg1)].field_1) <= 0:
                        revert with 0, 'Policy name not found'
                    return Array(len=2 * Mask(256, -1, uint255(stor7[address(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor7[address(arg1)].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor7[address(arg1)].field_8)
        if uint255(stor7[address(arg1)].field_1) <= 0:
            revert with 0, 'Policy name not found'
        mem[ceil32(uint255(stor7[address(arg1)].field_1)) + 192 len ceil32(uint255(stor7[address(arg1)].field_1))] = mem[128 len ceil32(uint255(stor7[address(arg1)].field_1))]
        if ceil32(uint255(stor7[address(arg1)].field_1)) > uint255(stor7[address(arg1)].field_1):
            mem[uint255(stor7[address(arg1)].field_1) + ceil32(uint255(stor7[address(arg1)].field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor7[address(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor7[address(arg1)].field_1))], mem[(2 * ceil32(uint255(stor7[address(arg1)].field_1))) + 192 len 2 * ceil32(uint255(stor7[address(arg1)].field_1))]), 
    if bool(stor7[address(arg1)].field_0) == stor7[address(arg1)].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor7[address(arg1)].field_0):
        if bool(stor7[address(arg1)].field_0) == uint255(stor7[address(arg1)].field_1) < 32:
            revert with 0, 34
        if uint255(stor7[address(arg1)].field_1):
            if 31 < uint255(stor7[address(arg1)].field_1):
                mem[128] = uint256(stor7[address(arg1)].field_0)
                idx = 128
                s = 0
                while uint255(stor7[address(arg1)].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor7[address(arg1)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor7[address(arg1)].field_1 % 128 <= 0:
                    revert with 0, 'Policy name not found'
                return Array(len=stor7[address(arg1)].field_0 % 128, data=mem[128 len ceil32(stor7[address(arg1)].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7[address(arg1)].field_8)
    else:
        if bool(stor7[address(arg1)].field_0) == stor7[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if stor7[address(arg1)].field_1 % 128:
            if 31 < stor7[address(arg1)].field_1 % 128:
                mem[128] = uint256(stor7[address(arg1)].field_0)
                idx = 128
                s = 0
                while stor7[address(arg1)].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor7[address(arg1)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor7[address(arg1)].field_1 % 128 <= 0:
                    revert with 0, 'Policy name not found'
                return Array(len=stor7[address(arg1)].field_0 % 128, data=mem[128 len ceil32(stor7[address(arg1)].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7[address(arg1)].field_8)
    if stor7[address(arg1)].field_1 % 128 <= 0:
        revert with 0, 'Policy name not found'
    mem[ceil32(stor7[address(arg1)].field_1 % 128) + 192 len ceil32(stor7[address(arg1)].field_1 % 128)] = mem[128 len ceil32(stor7[address(arg1)].field_1 % 128)]
    if ceil32(stor7[address(arg1)].field_1 % 128) > stor7[address(arg1)].field_1 % 128:
        mem[stor7[address(arg1)].field_1 % 128 + ceil32(stor7[address(arg1)].field_1 % 128) + 192] = 0
    return Array(len=stor7[address(arg1)].field_0 % 128, data=mem[128 len ceil32(stor7[address(arg1)].field_1 % 128)], mem[(2 * ceil32(stor7[address(arg1)].field_1 % 128)) + 192 len 2 * ceil32(stor7[address(arg1)].field_1 % 128)]), 
}

function sub_d9e85c84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return address(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 6)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0), 
           bool(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 6)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_160)),
           uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))].field_0),
           uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]),
           uint256(stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]),
           uint256(stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]),
           uint256(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))])
}

function sub_bb9febaf(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor9[address(arg2)]) != 1:
        revert with 0, 'Do not support this stablecoin currently'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        revert with 0, 'This policy token has not been deployed, please deploy it first'
    if arg3 <= block.timestamp:
        revert with 0, 'Wrong deadline'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if arg3 != uint256(stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Policy token and pool deadline not the same'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _450 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_450].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_450].field_0), address(arg2));
            else:
                _452 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_452].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_452].field_0), address(arg2));
        else:
            if ceil32(arg1.length) <= arg1.length:
                _454 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_454].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_454].field_0), address(arg2));
            else:
                _456 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_456].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_456].field_0), address(arg2));
    else:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _458 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_458].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_458].field_0), address(arg2));
            else:
                _460 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_460].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_460].field_0), address(arg2));
        else:
            if ceil32(arg1.length) <= arg1.length:
                _462 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_462].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_462].field_0), address(arg2));
            else:
                _464 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                mem[ceil32(ceil32(arg1.length)) + 101] = address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
                call address(stor1.length).0x3a5f69f8 with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg1.length)) + 101], address(arg2), arg3, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_5eb1877e[address(stor[_464].field_0)] = address(arg2)
                emit PoolDeployed(ext_call.return_data[12 len 20], address(stor[_464].field_0), address(arg2));
    return address(ext_call.return_data[0])
}

function sub_7336c38d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if block.timestamp > uint256(stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Can not deposit/redeem, has passed the deadline'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        revert with 0, 'Policy token not found'
    if sub_5eb1877e[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] != address(arg2):
        revert with 0, 'Invalid policytoken with stablecoin'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _6209 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6209].field_0))
                call address(stor[_6209].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6211 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6211].field_0))
                call address(stor[_6211].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
        else:
            if ceil32(arg1.length) <= arg1.length:
                _6213 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6213].field_0))
                call address(stor[_6213].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6215 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6215].field_0))
                call address(stor[_6215].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
    else:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _6217 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6217].field_0))
                call address(stor[_6217].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6219 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6219].field_0))
                call address(stor[_6219].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
        else:
            if ceil32(arg1.length) <= arg1.length:
                _6221 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6221].field_0))
                call address(stor[_6221].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6223 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if arg3 > sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    revert with 0, 'User's quota not sufficient'
                if sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] < arg3:
                    revert with 0, 17
                sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] -= arg3
                if not sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    sub_da142807[msg.sender][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] = 0
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 68
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0xa9059cbb(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 261 len 96] = 0, msg.sender, arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 293] == bool(mem[ceil32(ceil32(arg1.length)) + 293])
                        if not mem[ceil32(ceil32(arg1.length)) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6223].field_0))
                call address(stor[_6223].field_0).0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xae452465: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
}

function deposit(string arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require arg3 == arg3
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if block.timestamp > uint256(stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Can not deposit/redeem, has passed the deadline'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        revert with 0, 'Policy token not found'
    if sub_5eb1877e[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] != arg2:
        revert with 0, 'Invalid policytoken with stablecoin'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _6161 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6161].field_0))
                call address(stor[_6161].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6163 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6163].field_0))
                call address(stor[_6163].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
        else:
            if ceil32(arg1.length) <= arg1.length:
                _6165 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6165].field_0))
                call address(stor[_6165].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6167 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6167].field_0))
                call address(stor[_6167].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
    else:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _6169 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6169].field_0))
                call address(stor[_6169].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6171 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6171].field_0))
                call address(stor[_6171].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
        else:
            if ceil32(arg1.length) <= arg1.length:
                _6173 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6173].field_0))
                call address(stor[_6173].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                _6175 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = msg.sender
                if sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(msg.sender)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, msg.sender, address(this.address), arg3, 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(stor[_6175].field_0))
                call address(stor[_6175].field_0).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xaad69ef0: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
}

function sub_eb9132dd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        _611 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
            revert with 0, 'Policy token not found'
        _616 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
        mem[64] = ceil32(ceil32(arg1.length)) + 225
        mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
        mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_616].field_0))
        mem[ceil32(ceil32(arg1.length)) + 161] = bool(uint8(stor1[_616].field_8))
        mem[ceil32(ceil32(arg1.length)) + 193] = uint256(stor2[_616])
        if not uint256(stor[_616].field_0):
            revert with 0, 'Have not got the oracle result'
        if bool(uint8(stor1[_616].field_8)) != 1:
            revert with 0, 'Have not got the oracle result'
        if uint8(stor1[_616].field_0):
            revert with 0, 'Only call this function when the event does not happen'
        mem[0] = address(stor[_611].field_0)
        mem[32] = 13
        if uint256(sub_1306c0a5[address(stor[_611].field_0)]) < uint256(stor2[_616]):
            revert with 0, 'Have distributed all'
        if arg3:
            if uint256(stor2[_616]) != arg3:
                revert with 0, 'You need to start from the last distribution point'
            if arg4 >= uint256(sub_1306c0a5[address(stor[_611].field_0)]):
                revert with 0, 'Invalid stop index'
            idx = arg3
            s = 0
            while idx < arg4:
                if idx >= uint256(sub_1306c0a5[address(stor[_611].field_0)]):
                    revert with 0, 50
                mem[0] = address(stor[_611].field_0)
                mem[32] = sha3(address(sub_1306c0a5[address(stor[_611].field_0)][idx]), 12)
                if sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if not 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _1242 = mem[64]
                mem[mem[64] + 36] = address(sub_1306c0a5[address(stor[_611].field_0)][idx])
                mem[mem[64] + 68] = 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000
                _1254 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1254 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1254 + 36 len 28]
                mem[64] = _1242 + 164
                mem[_1242 + 100] = 32
                mem[_1242 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                _1302 = mem[_1254]
                t = 0
                while t < _1302:
                    mem[t + _1242 + 164] = mem[t + _1254 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1302) > _1302:
                    mem[_1302 + _1242 + 164] = 0
                call address(arg2).mem[_1242 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1242 + 168 len _1302 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1242 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1242 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1242 + 232] = mem[idx + _1242 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1242 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1242 + ceil32(return_data.size) + 165
                    mem[_1242 + 164] = return_data.size
                    mem[_1242 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1242 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1242 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1242 + ceil32(return_data.size) + 233] = mem[idx + _1242 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1242 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1242 + 196] == bool(mem[_1242 + 196])
                        if not mem[_1242 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[0] = address(stor[_611].field_0)
                mem[32] = sha3(address(sub_1306c0a5[address(stor[_611].field_0)][idx]), 12)
                sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] = 0
                if sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] < 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000:
                    revert with 0, 17
                if s > !(sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000)
                continue 
            if 0 > !s:
                revert with 0, 17
            uint256(sub_1ee08fa1[address(stor[_611].field_0)].field_512) = arg4
            if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if sub_07962845[address(arg2)] > !(8 * s / 10):
                revert with 0, 17
            sub_07962845[address(arg2)] += 8 * s / 10
            if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 8 * s / 10:
                revert with 0, 17
            mem[32] = 16
            if sub_e383f7d2[address(arg2)] > !(s - (8 * s / 10)):
                revert with 0, 17
            sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + s - (8 * s / 10)
            mem[mem[64]] = 128
            _1308 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len ceil32(_1308)] = mem[128 len ceil32(_1308)]
            if ceil32(_1308) > _1308:
                mem[_1308 + mem[64] + 160] = 0
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            emit 0xb882f845: 128, address(arg2), arg3, arg4, mem[mem[64] + 128 len ceil32(_1308) + 32]
        else:
            if not arg4:
                idx = 0
                s = 0
                while idx < uint256(sub_1306c0a5[address(stor[_611].field_0)]):
                    if idx >= uint256(sub_1306c0a5[address(stor[_611].field_0)]):
                        revert with 0, 50
                    mem[0] = address(stor[_611].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_611].field_0)][idx]), 12)
                    if sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                        revert with 0, 17
                    if not 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _1244 = mem[64]
                    mem[mem[64] + 36] = address(sub_1306c0a5[address(stor[_611].field_0)][idx])
                    mem[mem[64] + 68] = 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000
                    _1258 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1258 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1258 + 36 len 28]
                    mem[64] = _1244 + 164
                    mem[_1244 + 100] = 32
                    mem[_1244 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    _1304 = mem[_1258]
                    t = 0
                    while t < _1304:
                        mem[t + _1244 + 164] = mem[t + _1258 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1304) > _1304:
                        mem[_1304 + _1244 + 164] = 0
                    call address(arg2).mem[_1244 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1244 + 168 len _1304 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1244 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1244 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1244 + 232] = mem[idx + _1244 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1244 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1244 + ceil32(return_data.size) + 165
                        mem[_1244 + 164] = return_data.size
                        mem[_1244 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1244 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1244 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1244 + ceil32(return_data.size) + 233] = mem[idx + _1244 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1244 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1244 + 196] == bool(mem[_1244 + 196])
                            if not mem[_1244 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = address(stor[_611].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_611].field_0)][idx]), 12)
                    sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] = 0
                    if sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] < 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000:
                        revert with 0, 17
                    if s > !(sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000)
                    continue 
                if 0 > !s:
                    revert with 0, 17
                uint256(sub_1ee08fa1[address(stor[_611].field_0)].field_512) = uint256(sub_1306c0a5[address(stor[_611].field_0)])
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * s / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * s / 10
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if s < 8 * s / 10:
                    revert with 0, 17
                mem[32] = 16
                if sub_e383f7d2[address(arg2)] > !(s - (8 * s / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + s - (8 * s / 10)
                mem[mem[64]] = 128
                _1310 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len ceil32(_1310)] = mem[128 len ceil32(_1310)]
                if ceil32(_1310) > _1310:
                    mem[_1310 + mem[64] + 160] = 0
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = uint256(sub_1306c0a5[address(stor[_611].field_0)])
                emit 0xb882f845: 128, address(arg2), 0, uint256(sub_1306c0a5[address(stor[_611].field_0)]), mem[mem[64] + 128 len ceil32(_1310) + 32]
            else:
                if uint256(stor2[_616]) != arg3:
                    revert with 0, 'You need to start from the last distribution point'
                if arg4 >= uint256(sub_1306c0a5[address(stor[_611].field_0)]):
                    revert with 0, 'Invalid stop index'
                idx = arg3
                s = 0
                while idx < arg4:
                    if idx >= uint256(sub_1306c0a5[address(stor[_611].field_0)]):
                        revert with 0, 50
                    mem[0] = address(stor[_611].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_611].field_0)][idx]), 12)
                    if sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                        revert with 0, 17
                    if not 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _1243 = mem[64]
                    mem[mem[64] + 36] = address(sub_1306c0a5[address(stor[_611].field_0)][idx])
                    mem[mem[64] + 68] = 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000
                    _1256 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1256 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1256 + 36 len 28]
                    mem[64] = _1243 + 164
                    mem[_1243 + 100] = 32
                    mem[_1243 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    _1303 = mem[_1256]
                    t = 0
                    while t < _1303:
                        mem[t + _1243 + 164] = mem[t + _1256 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1303) > _1303:
                        mem[_1303 + _1243 + 164] = 0
                    call address(arg2).mem[_1243 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1243 + 168 len _1303 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1243 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1243 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1243 + 232] = mem[idx + _1243 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1243 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1243 + ceil32(return_data.size) + 165
                        mem[_1243 + 164] = return_data.size
                        mem[_1243 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1243 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1243 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1243 + ceil32(return_data.size) + 233] = mem[idx + _1243 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1243 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1243 + 196] == bool(mem[_1243 + 196])
                            if not mem[_1243 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = address(stor[_611].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_611].field_0)][idx]), 12)
                    sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] = 0
                    if sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] < 990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000:
                        revert with 0, 17
                    if s > !(sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_611].field_0)][idx])][address(stor[_611].field_0)] / 1000)
                    continue 
                if 0 > !s:
                    revert with 0, 17
                uint256(sub_1ee08fa1[address(stor[_611].field_0)].field_512) = arg4
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * s / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * s / 10
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if s < 8 * s / 10:
                    revert with 0, 17
                mem[32] = 16
                if sub_e383f7d2[address(arg2)] > !(s - (8 * s / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + s - (8 * s / 10)
                mem[mem[64]] = 128
                _1309 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len ceil32(_1309)] = mem[128 len ceil32(_1309)]
                if ceil32(_1309) > _1309:
                    mem[_1309 + mem[64] + 160] = 0
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                emit 0xb882f845: 128, address(arg2), arg3, arg4, mem[mem[64] + 128 len ceil32(_1309) + 32]
    else:
        _613 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
            revert with 0, 'Policy token not found'
        _618 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
        mem[64] = ceil32(ceil32(arg1.length)) + 225
        mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
        mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_618].field_0))
        mem[ceil32(ceil32(arg1.length)) + 161] = bool(uint8(stor1[_618].field_8))
        mem[ceil32(ceil32(arg1.length)) + 193] = uint256(stor2[_618])
        if not uint256(stor[_618].field_0):
            revert with 0, 'Have not got the oracle result'
        if bool(uint8(stor1[_618].field_8)) != 1:
            revert with 0, 'Have not got the oracle result'
        if uint8(stor1[_618].field_0):
            revert with 0, 'Only call this function when the event does not happen'
        mem[0] = address(stor[_613].field_0)
        mem[32] = 13
        if uint256(sub_1306c0a5[address(stor[_613].field_0)]) < uint256(stor2[_618]):
            revert with 0, 'Have distributed all'
        if arg3:
            if uint256(stor2[_618]) != arg3:
                revert with 0, 'You need to start from the last distribution point'
            if arg4 >= uint256(sub_1306c0a5[address(stor[_613].field_0)]):
                revert with 0, 'Invalid stop index'
            idx = arg3
            s = 0
            while idx < arg4:
                if idx >= uint256(sub_1306c0a5[address(stor[_613].field_0)]):
                    revert with 0, 50
                mem[0] = address(stor[_613].field_0)
                mem[32] = sha3(address(sub_1306c0a5[address(stor[_613].field_0)][idx]), 12)
                if sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if not 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _1245 = mem[64]
                mem[mem[64] + 36] = address(sub_1306c0a5[address(stor[_613].field_0)][idx])
                mem[mem[64] + 68] = 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000
                _1260 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1260 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1260 + 36 len 28]
                mem[64] = _1245 + 164
                mem[_1245 + 100] = 32
                mem[_1245 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                _1305 = mem[_1260]
                t = 0
                while t < _1305:
                    mem[t + _1245 + 164] = mem[t + _1260 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1305) > _1305:
                    mem[_1305 + _1245 + 164] = 0
                call address(arg2).mem[_1245 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1245 + 168 len _1305 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1245 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1245 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1245 + 232] = mem[idx + _1245 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1245 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1245 + ceil32(return_data.size) + 165
                    mem[_1245 + 164] = return_data.size
                    mem[_1245 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1245 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1245 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1245 + ceil32(return_data.size) + 233] = mem[idx + _1245 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1245 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1245 + 196] == bool(mem[_1245 + 196])
                        if not mem[_1245 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[0] = address(stor[_613].field_0)
                mem[32] = sha3(address(sub_1306c0a5[address(stor[_613].field_0)][idx]), 12)
                sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] = 0
                if sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] < 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000:
                    revert with 0, 17
                if s > !(sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000)
                continue 
            if 0 > !s:
                revert with 0, 17
            uint256(sub_1ee08fa1[address(stor[_613].field_0)].field_512) = arg4
            if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if sub_07962845[address(arg2)] > !(8 * s / 10):
                revert with 0, 17
            sub_07962845[address(arg2)] += 8 * s / 10
            if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if s < 8 * s / 10:
                revert with 0, 17
            mem[32] = 16
            if sub_e383f7d2[address(arg2)] > !(s - (8 * s / 10)):
                revert with 0, 17
            sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + s - (8 * s / 10)
            mem[mem[64]] = 128
            _1311 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len ceil32(_1311)] = mem[128 len ceil32(_1311)]
            if ceil32(_1311) > _1311:
                mem[_1311 + mem[64] + 160] = 0
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            emit 0xb882f845: 128, address(arg2), arg3, arg4, mem[mem[64] + 128 len ceil32(_1311) + 32]
        else:
            if not arg4:
                idx = 0
                s = 0
                while idx < uint256(sub_1306c0a5[address(stor[_613].field_0)]):
                    if idx >= uint256(sub_1306c0a5[address(stor[_613].field_0)]):
                        revert with 0, 50
                    mem[0] = address(stor[_613].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_613].field_0)][idx]), 12)
                    if sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                        revert with 0, 17
                    if not 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _1247 = mem[64]
                    mem[mem[64] + 36] = address(sub_1306c0a5[address(stor[_613].field_0)][idx])
                    mem[mem[64] + 68] = 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000
                    _1264 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1264 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1264 + 36 len 28]
                    mem[64] = _1247 + 164
                    mem[_1247 + 100] = 32
                    mem[_1247 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    _1307 = mem[_1264]
                    t = 0
                    while t < _1307:
                        mem[t + _1247 + 164] = mem[t + _1264 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1307) > _1307:
                        mem[_1307 + _1247 + 164] = 0
                    call address(arg2).mem[_1247 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1247 + 168 len _1307 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1247 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1247 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1247 + 232] = mem[idx + _1247 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1247 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1247 + ceil32(return_data.size) + 165
                        mem[_1247 + 164] = return_data.size
                        mem[_1247 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1247 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1247 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1247 + ceil32(return_data.size) + 233] = mem[idx + _1247 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1247 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1247 + 196] == bool(mem[_1247 + 196])
                            if not mem[_1247 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = address(stor[_613].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_613].field_0)][idx]), 12)
                    sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] = 0
                    if sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] < 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000:
                        revert with 0, 17
                    if s > !(sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000)
                    continue 
                if 0 > !s:
                    revert with 0, 17
                uint256(sub_1ee08fa1[address(stor[_613].field_0)].field_512) = uint256(sub_1306c0a5[address(stor[_613].field_0)])
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * s / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * s / 10
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if s < 8 * s / 10:
                    revert with 0, 17
                mem[32] = 16
                if sub_e383f7d2[address(arg2)] > !(s - (8 * s / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + s - (8 * s / 10)
                mem[mem[64]] = 128
                _1313 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len ceil32(_1313)] = mem[128 len ceil32(_1313)]
                if ceil32(_1313) > _1313:
                    mem[_1313 + mem[64] + 160] = 0
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = uint256(sub_1306c0a5[address(stor[_613].field_0)])
                emit 0xb882f845: 128, address(arg2), 0, uint256(sub_1306c0a5[address(stor[_613].field_0)]), mem[mem[64] + 128 len ceil32(_1313) + 32]
            else:
                if uint256(stor2[_618]) != arg3:
                    revert with 0, 'You need to start from the last distribution point'
                if arg4 >= uint256(sub_1306c0a5[address(stor[_613].field_0)]):
                    revert with 0, 'Invalid stop index'
                idx = arg3
                s = 0
                while idx < arg4:
                    if idx >= uint256(sub_1306c0a5[address(stor[_613].field_0)]):
                        revert with 0, 50
                    mem[0] = address(stor[_613].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_613].field_0)][idx]), 12)
                    if sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                        revert with 0, 17
                    if not 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _1246 = mem[64]
                    mem[mem[64] + 36] = address(sub_1306c0a5[address(stor[_613].field_0)][idx])
                    mem[mem[64] + 68] = 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000
                    _1262 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1262 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1262 + 36 len 28]
                    mem[64] = _1246 + 164
                    mem[_1246 + 100] = 32
                    mem[_1246 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    _1306 = mem[_1262]
                    t = 0
                    while t < _1306:
                        mem[t + _1246 + 164] = mem[t + _1262 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1306) > _1306:
                        mem[_1306 + _1246 + 164] = 0
                    call address(arg2).mem[_1246 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1246 + 168 len _1306 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1246 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1246 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1246 + 232] = mem[idx + _1246 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1246 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1246 + ceil32(return_data.size) + 165
                        mem[_1246 + 164] = return_data.size
                        mem[_1246 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1246 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1246 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1246 + ceil32(return_data.size) + 233] = mem[idx + _1246 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1246 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1246 + 196] == bool(mem[_1246 + 196])
                            if not mem[_1246 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = address(stor[_613].field_0)
                    mem[32] = sha3(address(sub_1306c0a5[address(stor[_613].field_0)][idx]), 12)
                    sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] = 0
                    if sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] < 990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000:
                        revert with 0, 17
                    if s > !(sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] - (990 * sub_da142807[address(stor13[address(stor[_613].field_0)][idx])][address(stor[_613].field_0)] / 1000)
                    continue 
                if 0 > !s:
                    revert with 0, 17
                uint256(sub_1ee08fa1[address(stor[_613].field_0)].field_512) = arg4
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * s / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * s / 10
                if s > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if s < 8 * s / 10:
                    revert with 0, 17
                mem[32] = 16
                if sub_e383f7d2[address(arg2)] > !(s - (8 * s / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + s - (8 * s / 10)
                mem[mem[64]] = 128
                _1312 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len ceil32(_1312)] = mem[128 len ceil32(_1312)]
                if ceil32(_1312) > _1312:
                    mem[_1312 + mem[64] + 160] = 0
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                emit 0xb882f845: 128, address(arg2), arg3, arg4, mem[mem[64] + 128 len ceil32(_1312) + 32]
}

function sub_c49df4bf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if block.timestamp < uint256(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Can not settle/claim, have not reached settleTimestamp'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        revert with 0, 'Policy token not found'
    if sub_5eb1877e[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] != address(arg2):
        revert with 0, 'Invalid policytoken with stablecoin'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _3545 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3568 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3568].field_0))
                if not uint256(stor[_3568].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3568].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3568].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3545].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3545].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3545].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3545].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3545].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3545].field_0)] / 1000
            else:
                _3547 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3570 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3570].field_0))
                if not uint256(stor[_3570].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3570].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3570].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3547].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3547].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3547].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3547].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3547].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3547].field_0)] / 1000
        else:
            if ceil32(arg1.length) <= arg1.length:
                _3549 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3572 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3572].field_0))
                if not uint256(stor[_3572].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3572].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3572].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3549].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3549].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3549].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3549].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3549].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3549].field_0)] / 1000
            else:
                _3551 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3574 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3574].field_0))
                if not uint256(stor[_3574].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3574].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3574].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3551].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3551].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3551].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3551].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3551].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3551].field_0)] / 1000
    else:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _3553 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3576 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3576].field_0))
                if not uint256(stor[_3576].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3576].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3576].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3553].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3553].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3553].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3553].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3553].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3553].field_0)] / 1000
            else:
                _3555 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3578 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3578].field_0))
                if not uint256(stor[_3578].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3578].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3578].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3555].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3555].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3555].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3555].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3555].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3555].field_0)] / 1000
        else:
            if ceil32(arg1.length) <= arg1.length:
                _3557 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3580 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3580].field_0))
                if not uint256(stor[_3580].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3580].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3580].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3557].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3557].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3557].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3557].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3557].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3557].field_0)] / 1000
            else:
                _3559 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                _3582 = sha3(address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0), 14)
                mem[ceil32(ceil32(arg1.length)) + 97] = uint256(sub_1ee08fa1[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)
                mem[ceil32(ceil32(arg1.length)) + 129] = bool(uint8(stor1[_3582].field_0))
                if not uint256(stor[_3582].field_0):
                    revert with 0, 'Have not got the oracle result'
                if not uint8(stor1[_3582].field_8):
                    revert with 0, 'Have not got the oracle result'
                if uint8(stor1[_3582].field_0):
                    revert with 0, 'Only call this function when the event does not happen'
                if not sub_da142807[msg.sender][address(stor[_3559].field_0)]:
                    revert with 0, 'No quota, you did not deposit and mint policy tokens before'
                if sub_da142807[msg.sender][address(stor[_3559].field_0)] > 0x4232aecdd5978804232aecdd5978804232aecdd5978804232aecdd59788042:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3559].field_0)] < 990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_07962845[address(arg2)] > !(8 * sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) / 10):
                    revert with 0, 17
                sub_07962845[address(arg2)] += 8 * sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) / 10
                if sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) < 8 * sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) / 10:
                    revert with 0, 17
                if sub_e383f7d2[address(arg2)] > !(sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) / 10)):
                    revert with 0, 17
                sub_e383f7d2[address(arg2)] = sub_e383f7d2[address(arg2)] + sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) - (8 * sub_da142807[msg.sender][address(stor[_3559].field_0)] - (990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000) / 10)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 389 len 96] = 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg1.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 421] == bool(mem[ceil32(ceil32(arg1.length)) + 421])
                        if not mem[ceil32(ceil32(arg1.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                sub_da142807[msg.sender][address(stor[_3559].field_0)] = 0
                emit 0x3562b702: msg.sender, Array(len=arg1.length, data=arg1[all]), address(arg2), 990 * sub_da142807[msg.sender][address(stor[_3559].field_0)] / 1000
}

function sub_f15cac34(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if block.timestamp > uint256(stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Can not deposit/redeem, has passed the deadline'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        revert with 0, 'Policy token not found'
    if sub_5eb1877e[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] != address(arg2):
        revert with 0, 'Invalid policytoken with stablecoin'
    if address(stor5.length) != msg.sender:
        revert with 0, 'Only the router contract can delegate'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _9769 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9769].field_0))
                    call address(stor[_9769].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9769].field_0))
                    call address(stor[_9769].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
            else:
                _9771 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9771].field_0))
                    call address(stor[_9771].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9771].field_0))
                    call address(stor[_9771].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
        else:
            if ceil32(arg1.length) <= arg1.length:
                _9773 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9773].field_0))
                    call address(stor[_9773].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9773].field_0))
                    call address(stor[_9773].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
            else:
                _9775 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9775].field_0))
                    call address(stor[_9775].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9775].field_0))
                    call address(stor[_9775].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
    else:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                _9777 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9777].field_0))
                    call address(stor[_9777].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9777].field_0))
                    call address(stor[_9777].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
            else:
                _9779 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9779].field_0))
                    call address(stor[_9779].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9779].field_0))
                    call address(stor[_9779].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
        else:
            if ceil32(arg1.length) <= arg1.length:
                _9781 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9781].field_0))
                    call address(stor[_9781].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9781].field_0))
                    call address(stor[_9781].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
            else:
                _9783 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                if not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
                    revert with 0, 'Policy token not found'
                if not sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)]:
                    uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])++
                    address(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)][uint256(sub_1306c0a5[address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)])]) = address(arg4)
                if sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] > !arg3:
                    revert with 0, 17
                sub_da142807[address(arg4)][address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)] += arg3
                mem[ceil32(ceil32(arg1.length)) + 133] = address(arg4)
                mem[ceil32(ceil32(arg1.length)) + 97] = 100
                mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg2)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg1.length)) + 293 len 128] = 0, address(arg4), address(this.address), arg3, 0
                call address(arg2) with:
                   funct Mask(32, 224, 0, address(arg4), address(this.address), arg3, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, address(arg4), address(this.address), arg3, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length:
                            revert with arg1[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9783].field_0))
                    call address(stor[_9783].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + 453 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 453] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + 453] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + 485 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 485] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + 453 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + arg1.length + 485 len ceil32(arg1.length) - arg1.length]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
                        if not mem[ceil32(ceil32(arg1.length)) + 325]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor[_9783].field_0))
                    call address(stor[_9783].field_0).0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg4), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                    if ceil32(arg1.length) <= arg1.length:
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        emit 0x99f877eb: msg.sender, address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                    else:
                        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = 0
                        emit 0xaad69ef0: address(arg4), Array(len=arg1.length, data=arg1[all]), address(arg2), arg3
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454] = arg1.length
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 100) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                        if ceil32(arg1.length) > arg1.length:
                            mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 486] = 0
                        emit 0x99f877eb: msg.sender, address(arg4), 160, address(arg2), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 454 len arg1.length], 0, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + arg1.length + 486 len ceil32(arg1.length) - arg1.length]
}

function getAllTokens() payable {
    if stor8.length > test266151307():
        revert with 0, 65
    mem[96] = stor8.length
    mem[64] = (32 * stor8.length) + 128
    if not stor8.length:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _72 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _85 = mem[64]
                    _86 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_85] = address(stor[_86].field_0)
                    mem[_85 + 32] = bool(uint8(stor[_86].field_160))
                    mem[_85 + 64] = uint256(stor1[_86].field_0)
                    mem[_85 + 96] = uint256(stor2[_86])
                    mem[_85 + 128] = uint256(stor3[_86])
                    mem[_85 + 160] = uint256(stor4[_86])
                    mem[_85 + 192] = uint256(stor5[_86])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _85
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _88 = mem[64]
                        _89 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_88] = address(stor[_89].field_0)
                        mem[_88 + 32] = bool(uint8(stor[_89].field_160))
                        mem[_88 + 64] = uint256(stor1[_89].field_0)
                        mem[_88 + 96] = uint256(stor2[_89])
                        mem[_88 + 128] = uint256(stor3[_89])
                        mem[_88 + 160] = uint256(stor4[_89])
                        mem[_88 + 192] = uint256(stor5[_89])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _88
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _72] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_72 + uint255(stor8[idx].field_1)] = 6
                        _141 = mem[64]
                        _142 = sha3(mem[mem[64] len _72 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_141] = address(stor[_142].field_0)
                        mem[_141 + 32] = bool(uint8(stor[_142].field_160))
                        mem[_141 + 64] = uint256(stor1[_142].field_0)
                        mem[_141 + 96] = uint256(stor2[_142])
                        mem[_141 + 128] = uint256(stor3[_142])
                        mem[_141 + 160] = uint256(stor4[_142])
                        mem[_141 + 192] = uint256(stor5[_142])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _141
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _91 = mem[64]
                    _92 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_91] = address(stor[_92].field_0)
                    mem[_91 + 32] = bool(uint8(stor[_92].field_160))
                    mem[_91 + 64] = uint256(stor1[_92].field_0)
                    mem[_91 + 96] = uint256(stor2[_92])
                    mem[_91 + 128] = uint256(stor3[_92])
                    mem[_91 + 160] = uint256(stor4[_92])
                    mem[_91 + 192] = uint256(stor5[_92])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _91
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _97 = mem[64]
                        _98 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_97] = address(stor[_98].field_0)
                        mem[_97 + 32] = bool(uint8(stor[_98].field_160))
                        mem[_97 + 64] = uint256(stor1[_98].field_0)
                        mem[_97 + 96] = uint256(stor2[_98])
                        mem[_97 + 128] = uint256(stor3[_98])
                        mem[_97 + 160] = uint256(stor4[_98])
                        mem[_97 + 192] = uint256(stor5[_98])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _97
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _72] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_72 + stor8[idx].field_1 % 128] = 6
                        _144 = mem[64]
                        _145 = sha3(mem[mem[64] len _72 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_144] = address(stor[_145].field_0)
                        mem[_144 + 32] = bool(uint8(stor[_145].field_160))
                        mem[_144 + 64] = uint256(stor1[_145].field_0)
                        mem[_144 + 96] = uint256(stor2[_145])
                        mem[_144 + 128] = uint256(stor3[_145])
                        mem[_144 + 160] = uint256(stor4[_145])
                        mem[_144 + 192] = uint256(stor5[_145])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _144
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _74:
            _137 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_137 + 32])
            mem[t + 64] = mem[_137 + 64]
            mem[t + 96] = mem[_137 + 96]
            mem[t + 128] = mem[_137 + 128]
            mem[t + 160] = mem[_137 + 160]
            mem[t + 192] = mem[_137 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _70 + (224 * _74) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 352
    mem[(32 * stor8.length) + 128] = 0
    mem[(32 * stor8.length) + 160] = 0
    mem[(32 * stor8.length) + 192] = 0
    mem[(32 * stor8.length) + 224] = 0
    mem[(32 * stor8.length) + 256] = 0
    mem[(32 * stor8.length) + 288] = 0
    mem[(32 * stor8.length) + 320] = 0
    mem[var9002] = var9001
    if not var9003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _223 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _235 = mem[64]
                    _236 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_235] = address(stor[_236].field_0)
                    mem[_235 + 32] = bool(uint8(stor[_236].field_160))
                    mem[_235 + 64] = uint256(stor1[_236].field_0)
                    mem[_235 + 96] = uint256(stor2[_236])
                    mem[_235 + 128] = uint256(stor3[_236])
                    mem[_235 + 160] = uint256(stor4[_236])
                    mem[_235 + 192] = uint256(stor5[_236])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _235
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _240 = mem[64]
                        _241 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_240] = address(stor[_241].field_0)
                        mem[_240 + 32] = bool(uint8(stor[_241].field_160))
                        mem[_240 + 64] = uint256(stor1[_241].field_0)
                        mem[_240 + 96] = uint256(stor2[_241])
                        mem[_240 + 128] = uint256(stor3[_241])
                        mem[_240 + 160] = uint256(stor4[_241])
                        mem[_240 + 192] = uint256(stor5[_241])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _240
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _223] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_223 + uint255(stor8[idx].field_1)] = 6
                        _291 = mem[64]
                        _292 = sha3(mem[mem[64] len _223 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_291] = address(stor[_292].field_0)
                        mem[_291 + 32] = bool(uint8(stor[_292].field_160))
                        mem[_291 + 64] = uint256(stor1[_292].field_0)
                        mem[_291 + 96] = uint256(stor2[_292])
                        mem[_291 + 128] = uint256(stor3[_292])
                        mem[_291 + 160] = uint256(stor4[_292])
                        mem[_291 + 192] = uint256(stor5[_292])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _291
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _243 = mem[64]
                    _244 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_243] = address(stor[_244].field_0)
                    mem[_243 + 32] = bool(uint8(stor[_244].field_160))
                    mem[_243 + 64] = uint256(stor1[_244].field_0)
                    mem[_243 + 96] = uint256(stor2[_244])
                    mem[_243 + 128] = uint256(stor3[_244])
                    mem[_243 + 160] = uint256(stor4[_244])
                    mem[_243 + 192] = uint256(stor5[_244])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _243
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _248 = mem[64]
                        _249 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_248] = address(stor[_249].field_0)
                        mem[_248 + 32] = bool(uint8(stor[_249].field_160))
                        mem[_248 + 64] = uint256(stor1[_249].field_0)
                        mem[_248 + 96] = uint256(stor2[_249])
                        mem[_248 + 128] = uint256(stor3[_249])
                        mem[_248 + 160] = uint256(stor4[_249])
                        mem[_248 + 192] = uint256(stor5[_249])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _248
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _223] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_223 + stor8[idx].field_1 % 128] = 6
                        _294 = mem[64]
                        _295 = sha3(mem[mem[64] len _223 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_294] = address(stor[_295].field_0)
                        mem[_294 + 32] = bool(uint8(stor[_295].field_160))
                        mem[_294 + 64] = uint256(stor1[_295].field_0)
                        mem[_294 + 96] = uint256(stor2[_295])
                        mem[_294 + 128] = uint256(stor3[_295])
                        mem[_294 + 160] = uint256(stor4[_295])
                        mem[_294 + 192] = uint256(stor5[_295])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _294
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _221 = mem[64]
        mem[mem[64]] = 32
        _224 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _224:
            _288 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_288 + 32])
            mem[t + 64] = mem[_288 + 64]
            mem[t + 96] = mem[_288 + 96]
            mem[t + 128] = mem[_288 + 128]
            mem[t + 160] = mem[_288 + 160]
            mem[t + 192] = mem[_288 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _221 + (224 * _224) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 576
    mem[(32 * stor8.length) + 352] = 0
    mem[(32 * stor8.length) + 384] = 0
    mem[(32 * stor8.length) + 416] = 0
    mem[(32 * stor8.length) + 448] = 0
    mem[(32 * stor8.length) + 480] = 0
    mem[(32 * stor8.length) + 512] = 0
    mem[(32 * stor8.length) + 544] = 0
    mem[var13002] = var13001
    if not var13003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _373 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _385 = mem[64]
                    _386 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_385] = address(stor[_386].field_0)
                    mem[_385 + 32] = bool(uint8(stor[_386].field_160))
                    mem[_385 + 64] = uint256(stor1[_386].field_0)
                    mem[_385 + 96] = uint256(stor2[_386])
                    mem[_385 + 128] = uint256(stor3[_386])
                    mem[_385 + 160] = uint256(stor4[_386])
                    mem[_385 + 192] = uint256(stor5[_386])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _385
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _390 = mem[64]
                        _391 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_390] = address(stor[_391].field_0)
                        mem[_390 + 32] = bool(uint8(stor[_391].field_160))
                        mem[_390 + 64] = uint256(stor1[_391].field_0)
                        mem[_390 + 96] = uint256(stor2[_391])
                        mem[_390 + 128] = uint256(stor3[_391])
                        mem[_390 + 160] = uint256(stor4[_391])
                        mem[_390 + 192] = uint256(stor5[_391])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _390
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _373] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_373 + uint255(stor8[idx].field_1)] = 6
                        _441 = mem[64]
                        _442 = sha3(mem[mem[64] len _373 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_441] = address(stor[_442].field_0)
                        mem[_441 + 32] = bool(uint8(stor[_442].field_160))
                        mem[_441 + 64] = uint256(stor1[_442].field_0)
                        mem[_441 + 96] = uint256(stor2[_442])
                        mem[_441 + 128] = uint256(stor3[_442])
                        mem[_441 + 160] = uint256(stor4[_442])
                        mem[_441 + 192] = uint256(stor5[_442])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _441
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _393 = mem[64]
                    _394 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_393] = address(stor[_394].field_0)
                    mem[_393 + 32] = bool(uint8(stor[_394].field_160))
                    mem[_393 + 64] = uint256(stor1[_394].field_0)
                    mem[_393 + 96] = uint256(stor2[_394])
                    mem[_393 + 128] = uint256(stor3[_394])
                    mem[_393 + 160] = uint256(stor4[_394])
                    mem[_393 + 192] = uint256(stor5[_394])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _393
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _398 = mem[64]
                        _399 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_398] = address(stor[_399].field_0)
                        mem[_398 + 32] = bool(uint8(stor[_399].field_160))
                        mem[_398 + 64] = uint256(stor1[_399].field_0)
                        mem[_398 + 96] = uint256(stor2[_399])
                        mem[_398 + 128] = uint256(stor3[_399])
                        mem[_398 + 160] = uint256(stor4[_399])
                        mem[_398 + 192] = uint256(stor5[_399])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _398
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _373] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_373 + stor8[idx].field_1 % 128] = 6
                        _444 = mem[64]
                        _445 = sha3(mem[mem[64] len _373 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_444] = address(stor[_445].field_0)
                        mem[_444 + 32] = bool(uint8(stor[_445].field_160))
                        mem[_444 + 64] = uint256(stor1[_445].field_0)
                        mem[_444 + 96] = uint256(stor2[_445])
                        mem[_444 + 128] = uint256(stor3[_445])
                        mem[_444 + 160] = uint256(stor4[_445])
                        mem[_444 + 192] = uint256(stor5[_445])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _444
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _371 = mem[64]
        mem[mem[64]] = 32
        _374 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _374:
            _438 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_438 + 32])
            mem[t + 64] = mem[_438 + 64]
            mem[t + 96] = mem[_438 + 96]
            mem[t + 128] = mem[_438 + 128]
            mem[t + 160] = mem[_438 + 160]
            mem[t + 192] = mem[_438 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _371 + (224 * _374) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 800
    mem[(32 * stor8.length) + 576] = 0
    mem[(32 * stor8.length) + 608] = 0
    mem[(32 * stor8.length) + 640] = 0
    mem[(32 * stor8.length) + 672] = 0
    mem[(32 * stor8.length) + 704] = 0
    mem[(32 * stor8.length) + 736] = 0
    mem[(32 * stor8.length) + 768] = 0
    mem[var17002] = var17001
    if not var17003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _523 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _535 = mem[64]
                    _536 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_535] = address(stor[_536].field_0)
                    mem[_535 + 32] = bool(uint8(stor[_536].field_160))
                    mem[_535 + 64] = uint256(stor1[_536].field_0)
                    mem[_535 + 96] = uint256(stor2[_536])
                    mem[_535 + 128] = uint256(stor3[_536])
                    mem[_535 + 160] = uint256(stor4[_536])
                    mem[_535 + 192] = uint256(stor5[_536])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _535
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _540 = mem[64]
                        _541 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_540] = address(stor[_541].field_0)
                        mem[_540 + 32] = bool(uint8(stor[_541].field_160))
                        mem[_540 + 64] = uint256(stor1[_541].field_0)
                        mem[_540 + 96] = uint256(stor2[_541])
                        mem[_540 + 128] = uint256(stor3[_541])
                        mem[_540 + 160] = uint256(stor4[_541])
                        mem[_540 + 192] = uint256(stor5[_541])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _540
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _523] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_523 + uint255(stor8[idx].field_1)] = 6
                        _591 = mem[64]
                        _592 = sha3(mem[mem[64] len _523 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_591] = address(stor[_592].field_0)
                        mem[_591 + 32] = bool(uint8(stor[_592].field_160))
                        mem[_591 + 64] = uint256(stor1[_592].field_0)
                        mem[_591 + 96] = uint256(stor2[_592])
                        mem[_591 + 128] = uint256(stor3[_592])
                        mem[_591 + 160] = uint256(stor4[_592])
                        mem[_591 + 192] = uint256(stor5[_592])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _591
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _543 = mem[64]
                    _544 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_543] = address(stor[_544].field_0)
                    mem[_543 + 32] = bool(uint8(stor[_544].field_160))
                    mem[_543 + 64] = uint256(stor1[_544].field_0)
                    mem[_543 + 96] = uint256(stor2[_544])
                    mem[_543 + 128] = uint256(stor3[_544])
                    mem[_543 + 160] = uint256(stor4[_544])
                    mem[_543 + 192] = uint256(stor5[_544])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _543
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _548 = mem[64]
                        _549 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_548] = address(stor[_549].field_0)
                        mem[_548 + 32] = bool(uint8(stor[_549].field_160))
                        mem[_548 + 64] = uint256(stor1[_549].field_0)
                        mem[_548 + 96] = uint256(stor2[_549])
                        mem[_548 + 128] = uint256(stor3[_549])
                        mem[_548 + 160] = uint256(stor4[_549])
                        mem[_548 + 192] = uint256(stor5[_549])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _548
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _523] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_523 + stor8[idx].field_1 % 128] = 6
                        _594 = mem[64]
                        _595 = sha3(mem[mem[64] len _523 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_594] = address(stor[_595].field_0)
                        mem[_594 + 32] = bool(uint8(stor[_595].field_160))
                        mem[_594 + 64] = uint256(stor1[_595].field_0)
                        mem[_594 + 96] = uint256(stor2[_595])
                        mem[_594 + 128] = uint256(stor3[_595])
                        mem[_594 + 160] = uint256(stor4[_595])
                        mem[_594 + 192] = uint256(stor5[_595])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _594
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _521 = mem[64]
        mem[mem[64]] = 32
        _524 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _524:
            _588 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_588 + 32])
            mem[t + 64] = mem[_588 + 64]
            mem[t + 96] = mem[_588 + 96]
            mem[t + 128] = mem[_588 + 128]
            mem[t + 160] = mem[_588 + 160]
            mem[t + 192] = mem[_588 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _521 + (224 * _524) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 1024
    mem[(32 * stor8.length) + 800] = 0
    mem[(32 * stor8.length) + 832] = 0
    mem[(32 * stor8.length) + 864] = 0
    mem[(32 * stor8.length) + 896] = 0
    mem[(32 * stor8.length) + 928] = 0
    mem[(32 * stor8.length) + 960] = 0
    mem[(32 * stor8.length) + 992] = 0
    mem[var21002] = var21001
    if not var21003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _673 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _685 = mem[64]
                    _686 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_685] = address(stor[_686].field_0)
                    mem[_685 + 32] = bool(uint8(stor[_686].field_160))
                    mem[_685 + 64] = uint256(stor1[_686].field_0)
                    mem[_685 + 96] = uint256(stor2[_686])
                    mem[_685 + 128] = uint256(stor3[_686])
                    mem[_685 + 160] = uint256(stor4[_686])
                    mem[_685 + 192] = uint256(stor5[_686])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _685
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _690 = mem[64]
                        _691 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_690] = address(stor[_691].field_0)
                        mem[_690 + 32] = bool(uint8(stor[_691].field_160))
                        mem[_690 + 64] = uint256(stor1[_691].field_0)
                        mem[_690 + 96] = uint256(stor2[_691])
                        mem[_690 + 128] = uint256(stor3[_691])
                        mem[_690 + 160] = uint256(stor4[_691])
                        mem[_690 + 192] = uint256(stor5[_691])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _690
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _673] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_673 + uint255(stor8[idx].field_1)] = 6
                        _741 = mem[64]
                        _742 = sha3(mem[mem[64] len _673 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_741] = address(stor[_742].field_0)
                        mem[_741 + 32] = bool(uint8(stor[_742].field_160))
                        mem[_741 + 64] = uint256(stor1[_742].field_0)
                        mem[_741 + 96] = uint256(stor2[_742])
                        mem[_741 + 128] = uint256(stor3[_742])
                        mem[_741 + 160] = uint256(stor4[_742])
                        mem[_741 + 192] = uint256(stor5[_742])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _741
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _693 = mem[64]
                    _694 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_693] = address(stor[_694].field_0)
                    mem[_693 + 32] = bool(uint8(stor[_694].field_160))
                    mem[_693 + 64] = uint256(stor1[_694].field_0)
                    mem[_693 + 96] = uint256(stor2[_694])
                    mem[_693 + 128] = uint256(stor3[_694])
                    mem[_693 + 160] = uint256(stor4[_694])
                    mem[_693 + 192] = uint256(stor5[_694])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _693
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _698 = mem[64]
                        _699 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_698] = address(stor[_699].field_0)
                        mem[_698 + 32] = bool(uint8(stor[_699].field_160))
                        mem[_698 + 64] = uint256(stor1[_699].field_0)
                        mem[_698 + 96] = uint256(stor2[_699])
                        mem[_698 + 128] = uint256(stor3[_699])
                        mem[_698 + 160] = uint256(stor4[_699])
                        mem[_698 + 192] = uint256(stor5[_699])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _698
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _673] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_673 + stor8[idx].field_1 % 128] = 6
                        _744 = mem[64]
                        _745 = sha3(mem[mem[64] len _673 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_744] = address(stor[_745].field_0)
                        mem[_744 + 32] = bool(uint8(stor[_745].field_160))
                        mem[_744 + 64] = uint256(stor1[_745].field_0)
                        mem[_744 + 96] = uint256(stor2[_745])
                        mem[_744 + 128] = uint256(stor3[_745])
                        mem[_744 + 160] = uint256(stor4[_745])
                        mem[_744 + 192] = uint256(stor5[_745])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _744
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _671 = mem[64]
        mem[mem[64]] = 32
        _674 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _674:
            _738 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_738 + 32])
            mem[t + 64] = mem[_738 + 64]
            mem[t + 96] = mem[_738 + 96]
            mem[t + 128] = mem[_738 + 128]
            mem[t + 160] = mem[_738 + 160]
            mem[t + 192] = mem[_738 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _671 + (224 * _674) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 1248
    mem[(32 * stor8.length) + 1024] = 0
    mem[(32 * stor8.length) + 1056] = 0
    mem[(32 * stor8.length) + 1088] = 0
    mem[(32 * stor8.length) + 1120] = 0
    mem[(32 * stor8.length) + 1152] = 0
    mem[(32 * stor8.length) + 1184] = 0
    mem[(32 * stor8.length) + 1216] = 0
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _823 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _835 = mem[64]
                    _836 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_835] = address(stor[_836].field_0)
                    mem[_835 + 32] = bool(uint8(stor[_836].field_160))
                    mem[_835 + 64] = uint256(stor1[_836].field_0)
                    mem[_835 + 96] = uint256(stor2[_836])
                    mem[_835 + 128] = uint256(stor3[_836])
                    mem[_835 + 160] = uint256(stor4[_836])
                    mem[_835 + 192] = uint256(stor5[_836])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _835
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _840 = mem[64]
                        _841 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_840] = address(stor[_841].field_0)
                        mem[_840 + 32] = bool(uint8(stor[_841].field_160))
                        mem[_840 + 64] = uint256(stor1[_841].field_0)
                        mem[_840 + 96] = uint256(stor2[_841])
                        mem[_840 + 128] = uint256(stor3[_841])
                        mem[_840 + 160] = uint256(stor4[_841])
                        mem[_840 + 192] = uint256(stor5[_841])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _840
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _823] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_823 + uint255(stor8[idx].field_1)] = 6
                        _891 = mem[64]
                        _892 = sha3(mem[mem[64] len _823 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_891] = address(stor[_892].field_0)
                        mem[_891 + 32] = bool(uint8(stor[_892].field_160))
                        mem[_891 + 64] = uint256(stor1[_892].field_0)
                        mem[_891 + 96] = uint256(stor2[_892])
                        mem[_891 + 128] = uint256(stor3[_892])
                        mem[_891 + 160] = uint256(stor4[_892])
                        mem[_891 + 192] = uint256(stor5[_892])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _891
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _843 = mem[64]
                    _844 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_843] = address(stor[_844].field_0)
                    mem[_843 + 32] = bool(uint8(stor[_844].field_160))
                    mem[_843 + 64] = uint256(stor1[_844].field_0)
                    mem[_843 + 96] = uint256(stor2[_844])
                    mem[_843 + 128] = uint256(stor3[_844])
                    mem[_843 + 160] = uint256(stor4[_844])
                    mem[_843 + 192] = uint256(stor5[_844])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _843
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _848 = mem[64]
                        _849 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_848] = address(stor[_849].field_0)
                        mem[_848 + 32] = bool(uint8(stor[_849].field_160))
                        mem[_848 + 64] = uint256(stor1[_849].field_0)
                        mem[_848 + 96] = uint256(stor2[_849])
                        mem[_848 + 128] = uint256(stor3[_849])
                        mem[_848 + 160] = uint256(stor4[_849])
                        mem[_848 + 192] = uint256(stor5[_849])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _848
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _823] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_823 + stor8[idx].field_1 % 128] = 6
                        _894 = mem[64]
                        _895 = sha3(mem[mem[64] len _823 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_894] = address(stor[_895].field_0)
                        mem[_894 + 32] = bool(uint8(stor[_895].field_160))
                        mem[_894 + 64] = uint256(stor1[_895].field_0)
                        mem[_894 + 96] = uint256(stor2[_895])
                        mem[_894 + 128] = uint256(stor3[_895])
                        mem[_894 + 160] = uint256(stor4[_895])
                        mem[_894 + 192] = uint256(stor5[_895])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _894
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _821 = mem[64]
        mem[mem[64]] = 32
        _824 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _824:
            _888 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_888 + 32])
            mem[t + 64] = mem[_888 + 64]
            mem[t + 96] = mem[_888 + 96]
            mem[t + 128] = mem[_888 + 128]
            mem[t + 160] = mem[_888 + 160]
            mem[t + 192] = mem[_888 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _821 + (224 * _824) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 1472
    mem[(32 * stor8.length) + 1248] = 0
    mem[(32 * stor8.length) + 1280] = 0
    mem[(32 * stor8.length) + 1312] = 0
    mem[(32 * stor8.length) + 1344] = 0
    mem[(32 * stor8.length) + 1376] = 0
    mem[(32 * stor8.length) + 1408] = 0
    mem[(32 * stor8.length) + 1440] = 0
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _973 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _985 = mem[64]
                    _986 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_985] = address(stor[_986].field_0)
                    mem[_985 + 32] = bool(uint8(stor[_986].field_160))
                    mem[_985 + 64] = uint256(stor1[_986].field_0)
                    mem[_985 + 96] = uint256(stor2[_986])
                    mem[_985 + 128] = uint256(stor3[_986])
                    mem[_985 + 160] = uint256(stor4[_986])
                    mem[_985 + 192] = uint256(stor5[_986])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _985
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _990 = mem[64]
                        _991 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_990] = address(stor[_991].field_0)
                        mem[_990 + 32] = bool(uint8(stor[_991].field_160))
                        mem[_990 + 64] = uint256(stor1[_991].field_0)
                        mem[_990 + 96] = uint256(stor2[_991])
                        mem[_990 + 128] = uint256(stor3[_991])
                        mem[_990 + 160] = uint256(stor4[_991])
                        mem[_990 + 192] = uint256(stor5[_991])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _990
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _973] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_973 + uint255(stor8[idx].field_1)] = 6
                        _1041 = mem[64]
                        _1042 = sha3(mem[mem[64] len _973 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1041] = address(stor[_1042].field_0)
                        mem[_1041 + 32] = bool(uint8(stor[_1042].field_160))
                        mem[_1041 + 64] = uint256(stor1[_1042].field_0)
                        mem[_1041 + 96] = uint256(stor2[_1042])
                        mem[_1041 + 128] = uint256(stor3[_1042])
                        mem[_1041 + 160] = uint256(stor4[_1042])
                        mem[_1041 + 192] = uint256(stor5[_1042])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1041
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _993 = mem[64]
                    _994 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_993] = address(stor[_994].field_0)
                    mem[_993 + 32] = bool(uint8(stor[_994].field_160))
                    mem[_993 + 64] = uint256(stor1[_994].field_0)
                    mem[_993 + 96] = uint256(stor2[_994])
                    mem[_993 + 128] = uint256(stor3[_994])
                    mem[_993 + 160] = uint256(stor4[_994])
                    mem[_993 + 192] = uint256(stor5[_994])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _993
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _998 = mem[64]
                        _999 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_998] = address(stor[_999].field_0)
                        mem[_998 + 32] = bool(uint8(stor[_999].field_160))
                        mem[_998 + 64] = uint256(stor1[_999].field_0)
                        mem[_998 + 96] = uint256(stor2[_999])
                        mem[_998 + 128] = uint256(stor3[_999])
                        mem[_998 + 160] = uint256(stor4[_999])
                        mem[_998 + 192] = uint256(stor5[_999])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _998
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _973] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_973 + stor8[idx].field_1 % 128] = 6
                        _1044 = mem[64]
                        _1045 = sha3(mem[mem[64] len _973 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1044] = address(stor[_1045].field_0)
                        mem[_1044 + 32] = bool(uint8(stor[_1045].field_160))
                        mem[_1044 + 64] = uint256(stor1[_1045].field_0)
                        mem[_1044 + 96] = uint256(stor2[_1045])
                        mem[_1044 + 128] = uint256(stor3[_1045])
                        mem[_1044 + 160] = uint256(stor4[_1045])
                        mem[_1044 + 192] = uint256(stor5[_1045])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1044
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _971 = mem[64]
        mem[mem[64]] = 32
        _974 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _974:
            _1038 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_1038 + 32])
            mem[t + 64] = mem[_1038 + 64]
            mem[t + 96] = mem[_1038 + 96]
            mem[t + 128] = mem[_1038 + 128]
            mem[t + 160] = mem[_1038 + 160]
            mem[t + 192] = mem[_1038 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _971 + (224 * _974) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 1696
    mem[(32 * stor8.length) + 1472] = 0
    mem[(32 * stor8.length) + 1504] = 0
    mem[(32 * stor8.length) + 1536] = 0
    mem[(32 * stor8.length) + 1568] = 0
    mem[(32 * stor8.length) + 1600] = 0
    mem[(32 * stor8.length) + 1632] = 0
    mem[(32 * stor8.length) + 1664] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _1123 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _1135 = mem[64]
                    _1136 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_1135] = address(stor[_1136].field_0)
                    mem[_1135 + 32] = bool(uint8(stor[_1136].field_160))
                    mem[_1135 + 64] = uint256(stor1[_1136].field_0)
                    mem[_1135 + 96] = uint256(stor2[_1136])
                    mem[_1135 + 128] = uint256(stor3[_1136])
                    mem[_1135 + 160] = uint256(stor4[_1136])
                    mem[_1135 + 192] = uint256(stor5[_1136])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1135
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _1140 = mem[64]
                        _1141 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1140] = address(stor[_1141].field_0)
                        mem[_1140 + 32] = bool(uint8(stor[_1141].field_160))
                        mem[_1140 + 64] = uint256(stor1[_1141].field_0)
                        mem[_1140 + 96] = uint256(stor2[_1141])
                        mem[_1140 + 128] = uint256(stor3[_1141])
                        mem[_1140 + 160] = uint256(stor4[_1141])
                        mem[_1140 + 192] = uint256(stor5[_1141])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1140
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _1123] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1123 + uint255(stor8[idx].field_1)] = 6
                        _1191 = mem[64]
                        _1192 = sha3(mem[mem[64] len _1123 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1191] = address(stor[_1192].field_0)
                        mem[_1191 + 32] = bool(uint8(stor[_1192].field_160))
                        mem[_1191 + 64] = uint256(stor1[_1192].field_0)
                        mem[_1191 + 96] = uint256(stor2[_1192])
                        mem[_1191 + 128] = uint256(stor3[_1192])
                        mem[_1191 + 160] = uint256(stor4[_1192])
                        mem[_1191 + 192] = uint256(stor5[_1192])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1191
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _1143 = mem[64]
                    _1144 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_1143] = address(stor[_1144].field_0)
                    mem[_1143 + 32] = bool(uint8(stor[_1144].field_160))
                    mem[_1143 + 64] = uint256(stor1[_1144].field_0)
                    mem[_1143 + 96] = uint256(stor2[_1144])
                    mem[_1143 + 128] = uint256(stor3[_1144])
                    mem[_1143 + 160] = uint256(stor4[_1144])
                    mem[_1143 + 192] = uint256(stor5[_1144])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1143
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _1148 = mem[64]
                        _1149 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1148] = address(stor[_1149].field_0)
                        mem[_1148 + 32] = bool(uint8(stor[_1149].field_160))
                        mem[_1148 + 64] = uint256(stor1[_1149].field_0)
                        mem[_1148 + 96] = uint256(stor2[_1149])
                        mem[_1148 + 128] = uint256(stor3[_1149])
                        mem[_1148 + 160] = uint256(stor4[_1149])
                        mem[_1148 + 192] = uint256(stor5[_1149])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1148
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _1123] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1123 + stor8[idx].field_1 % 128] = 6
                        _1194 = mem[64]
                        _1195 = sha3(mem[mem[64] len _1123 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1194] = address(stor[_1195].field_0)
                        mem[_1194 + 32] = bool(uint8(stor[_1195].field_160))
                        mem[_1194 + 64] = uint256(stor1[_1195].field_0)
                        mem[_1194 + 96] = uint256(stor2[_1195])
                        mem[_1194 + 128] = uint256(stor3[_1195])
                        mem[_1194 + 160] = uint256(stor4[_1195])
                        mem[_1194 + 192] = uint256(stor5[_1195])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1194
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1121 = mem[64]
        mem[mem[64]] = 32
        _1124 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1124:
            _1188 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_1188 + 32])
            mem[t + 64] = mem[_1188 + 64]
            mem[t + 96] = mem[_1188 + 96]
            mem[t + 128] = mem[_1188 + 128]
            mem[t + 160] = mem[_1188 + 160]
            mem[t + 192] = mem[_1188 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1121 + (224 * _1124) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 1920
    mem[(32 * stor8.length) + 1696] = 0
    mem[(32 * stor8.length) + 1728] = 0
    mem[(32 * stor8.length) + 1760] = 0
    mem[(32 * stor8.length) + 1792] = 0
    mem[(32 * stor8.length) + 1824] = 0
    mem[(32 * stor8.length) + 1856] = 0
    mem[(32 * stor8.length) + 1888] = 0
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _1273 = mem[64]
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _1285 = mem[64]
                    _1286 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_1285] = address(stor[_1286].field_0)
                    mem[_1285 + 32] = bool(uint8(stor[_1286].field_160))
                    mem[_1285 + 64] = uint256(stor1[_1286].field_0)
                    mem[_1285 + 96] = uint256(stor2[_1286])
                    mem[_1285 + 128] = uint256(stor3[_1286])
                    mem[_1285 + 160] = uint256(stor4[_1286])
                    mem[_1285 + 192] = uint256(stor5[_1286])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1285
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _1290 = mem[64]
                        _1291 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1290] = address(stor[_1291].field_0)
                        mem[_1290 + 32] = bool(uint8(stor[_1291].field_160))
                        mem[_1290 + 64] = uint256(stor1[_1291].field_0)
                        mem[_1290 + 96] = uint256(stor2[_1291])
                        mem[_1290 + 128] = uint256(stor3[_1291])
                        mem[_1290 + 160] = uint256(stor4[_1291])
                        mem[_1290 + 192] = uint256(stor5[_1291])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1290
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor8[idx].field_1):
                            mem[s + _1273] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1273 + uint255(stor8[idx].field_1)] = 6
                        _1341 = mem[64]
                        _1342 = sha3(mem[mem[64] len _1273 + uint255(stor8[idx].field_1) + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1341] = address(stor[_1342].field_0)
                        mem[_1341 + 32] = bool(uint8(stor[_1342].field_160))
                        mem[_1341 + 64] = uint256(stor1[_1342].field_0)
                        mem[_1341 + 96] = uint256(stor2[_1342])
                        mem[_1341 + 128] = uint256(stor3[_1342])
                        mem[_1341 + 160] = uint256(stor4[_1342])
                        mem[_1341 + 192] = uint256(stor5[_1342])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1341
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _1293 = mem[64]
                    _1294 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_1293] = address(stor[_1294].field_0)
                    mem[_1293 + 32] = bool(uint8(stor[_1294].field_160))
                    mem[_1293 + 64] = uint256(stor1[_1294].field_0)
                    mem[_1293 + 96] = uint256(stor2[_1294])
                    mem[_1293 + 128] = uint256(stor3[_1294])
                    mem[_1293 + 160] = uint256(stor4[_1294])
                    mem[_1293 + 192] = uint256(stor5[_1294])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1293
                else:
                    if bool(stor8[idx].field_0) != 1:
                        mem[0] = 6
                        _1298 = mem[64]
                        _1299 = sha3(mem[mem[64] len -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1298] = address(stor[_1299].field_0)
                        mem[_1298 + 32] = bool(uint8(stor[_1299].field_160))
                        mem[_1298 + 64] = uint256(stor1[_1299].field_0)
                        mem[_1298 + 96] = uint256(stor2[_1299])
                        mem[_1298 + 128] = uint256(stor3[_1299])
                        mem[_1298 + 160] = uint256(stor4[_1299])
                        mem[_1298 + 192] = uint256(stor5[_1299])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1298
                    else:
                        mem[0] = sha3(8) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor8[idx].field_1 % 128:
                            mem[s + _1273] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1273 + stor8[idx].field_1 % 128] = 6
                        _1344 = mem[64]
                        _1345 = sha3(mem[mem[64] len _1273 + stor8[idx].field_1 % 128 + -mem[64] + 32])
                        mem[64] = mem[64] + 224
                        mem[_1344] = address(stor[_1345].field_0)
                        mem[_1344 + 32] = bool(uint8(stor[_1345].field_160))
                        mem[_1344 + 64] = uint256(stor1[_1345].field_0)
                        mem[_1344 + 96] = uint256(stor2[_1345])
                        mem[_1344 + 128] = uint256(stor3[_1345])
                        mem[_1344 + 160] = uint256(stor4[_1345])
                        mem[_1344 + 192] = uint256(stor5[_1345])
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1344
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1271 = mem[64]
        mem[mem[64]] = 32
        _1274 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1274:
            _1338 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_1338 + 32])
            mem[t + 64] = mem[_1338 + 64]
            mem[t + 96] = mem[_1338 + 96]
            mem[t + 128] = mem[_1338 + 128]
            mem[t + 160] = mem[_1338 + 160]
            mem[t + 192] = mem[_1338 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1271 + (224 * _1274) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 2144
    mem[(32 * stor8.length) + 1920] = 0
    mem[(32 * stor8.length) + 1952] = 0
    mem[(32 * stor8.length) + 1984] = 0
    mem[(32 * stor8.length) + 2016] = 0
    mem[(32 * stor8.length) + 2048] = 0
    mem[(32 * stor8.length) + 2080] = 0
    mem[(32 * stor8.length) + 2112] = 0
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_1) < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + uint255(stor8[idx].field_1)] = 6
                    _1435 = mem[64]
                    _1436 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len uint255(stor8[idx].field_1)])
                    mem[64] = mem[64] + 224
                    mem[_1435] = address(stor[_1436].field_0)
                    mem[_1435 + 32] = bool(uint8(stor[_1436].field_160))
                    mem[_1435 + 64] = uint256(stor1[_1436].field_0)
                    mem[_1435 + 96] = uint256(stor2[_1436])
                    mem[_1435 + 128] = uint256(stor3[_1436])
                    mem[_1435 + 160] = uint256(stor4[_1436])
                    mem[_1435 + 192] = uint256(stor5[_1436])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1435
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor8[idx].field_0) == 1:
                    # nil
                else:
                    mem[0] = 6
                    _1440 = mem[64]
                    _1441 = sha3(mem[mem[64] len -mem[64] + 32])
                    mem[64] = mem[64] + 224
                    mem[_1440] = address(stor[_1441].field_0)
                    mem[_1440 + 32] = bool(uint8(stor[_1441].field_160))
                    mem[_1440 + 64] = uint256(stor1[_1441].field_0)
                    mem[_1440 + 96] = uint256(stor2[_1441])
                    mem[_1440 + 128] = uint256(stor3[_1441])
                    mem[_1440 + 160] = uint256(stor4[_1441])
                    mem[_1440 + 192] = uint256(stor5[_1441])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1440
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor8[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor8[idx].field_0))
                    mem[mem[64] + stor8[idx].field_1 % 128] = 6
                    _1443 = mem[64]
                    _1444 = sha3(Mask(248, 8, uint256(stor8[idx].field_0)), mem[mem[64] + 32 len stor8[idx].field_1 % 128])
                    mem[64] = mem[64] + 224
                    mem[_1443] = address(stor[_1444].field_0)
                    mem[_1443 + 32] = bool(uint8(stor[_1444].field_160))
                    mem[_1443 + 64] = uint256(stor1[_1444].field_0)
                    mem[_1443 + 96] = uint256(stor2[_1444])
                    mem[_1443 + 128] = uint256(stor3[_1444])
                    mem[_1443 + 160] = uint256(stor4[_1444])
                    mem[_1443 + 192] = uint256(stor5[_1444])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1443
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor8[idx].field_0) == 1:
                    # nil
                else:
                    mem[0] = 6
                    _1448 = mem[64]
                    _1449 = sha3(mem[mem[64] len -mem[64] + 32])
                    mem[64] = mem[64] + 224
                    mem[_1448] = address(stor[_1449].field_0)
                    mem[_1448 + 32] = bool(uint8(stor[_1449].field_160))
                    mem[_1448 + 64] = uint256(stor1[_1449].field_0)
                    mem[_1448 + 96] = uint256(stor2[_1449])
                    mem[_1448 + 128] = uint256(stor3[_1449])
                    mem[_1448 + 160] = uint256(stor4[_1449])
                    mem[_1448 + 192] = uint256(stor5[_1449])
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1448
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    # nil
}



}
