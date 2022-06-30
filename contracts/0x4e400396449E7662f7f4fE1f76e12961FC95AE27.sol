contract main {




// =====================  Runtime code  =====================


#
#  - sub_1815a8d5(?)
#  - sub_beb324ca(?)
#  - sub_ce17505a(?)
#
const blockTime = block.timestamp


mapping of uint256 sub_e1ab2ba4;
array of uint256 stor1;
array of uint256 stor2;
mapping of struct stor4;
address owner;
address sub_3ecc52b9Address;
address collectorAddress;
mapping of struct stor99;

function sub_3ecc52b9(?) {
    return sub_3ecc52b9Address
}

function sub_41f59620(?) {
    return stor2.length
}

function owner() {
    return owner
}

function collector() {
    return collectorAddress
}

function sub_e1ab2ba4(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_e1ab2ba4[arg1[all]]
}

function _fallback() payable {
    revert
}

function sub_bc07ef9e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Fuck off'
    stor2.length = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Fuck off'
    owner = arg1
}

function updateCollector(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Fuck off'
    collectorAddress = arg1
}

function sub_b4932ca6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Fuck off'
    sub_3ecc52b9Address = address(arg1)
}

function withdrawFees() {
    if owner != msg.sender:
        revert with 0, 'Fuck off'
    call collectorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b23bf443(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_3ecc52b9Address != msg.sender:
        revert with 0, 'Fuck off'
    if block.timestamp > !stor2.length:
        revert with 0, 17
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
    uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = block.timestamp + stor2.length
}

function sub_b6cc3a66(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
    if uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) <= 0:
        return stor1.length
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 97] = uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_0f693383(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
    if 0 == uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        return (block.timestamp > stor1.length)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 97] = block.timestamp > uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_f2d049b6(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Fuck off'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5 < 32:
            revert with 0, 34
        uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = 0
        if 31 < uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5:
            idx = 0
            while (uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32]))].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 < 32:
            revert with 0, 34
        uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = 0
        if 31 < stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128:
            idx = 0
            while stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32]))].field_0) = 0
                idx = idx + 1
                continue 
    stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = 0
    stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = 0
}

function sub_fe551b05(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if bool(stor4[arg1[all]].field_0):
        if bool(stor4[arg1[all]].field_0) == uint255(uint256(stor4[arg1[all]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4[arg1[all]].field_0):
            if bool(stor4[arg1[all]].field_0) == uint255(uint256(stor4[arg1[all]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor4[arg1[all]].field_0)):
                if 31 >= uint255(uint256(stor4[arg1[all]].field_0)) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor4[arg1[all]].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor4[arg1[all]].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor4[arg1[all]].field_0)) * 0.5) + 97 > idx:
                        mem[idx + 32] = uint256(stor4[arg1[all]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1[all]].field_0) == stor4[arg1[all]].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1[all]].field_1 % 128:
                if 31 >= stor4[arg1[all]].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor4[arg1[all]].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor4[arg1[all]].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor4[arg1[all]].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor4[arg1[all]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint256(stor4[arg1[all]].field_0)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(uint256(stor4[arg1[all]].field_0)) * 0.5)]), 
               uint256(stor4[arg1[all]].field_256),
               uint256(stor4[arg1[all]].field_512)
    if bool(stor4[arg1[all]].field_0) == stor4[arg1[all]].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1[all]].field_0):
        if bool(stor4[arg1[all]].field_0) == uint255(uint256(stor4[arg1[all]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor4[arg1[all]].field_0)):
            if 31 >= uint255(uint256(stor4[arg1[all]].field_0)) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor4[arg1[all]].field_8)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor4[arg1[all]].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(uint256(stor4[arg1[all]].field_0)) * 0.5) + 97 > idx:
                    mem[idx + 32] = uint256(stor4[arg1[all]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1[all]].field_0) == stor4[arg1[all]].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[arg1[all]].field_1 % 128:
            if 31 >= stor4[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor4[arg1[all]].field_8)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor4[arg1[all]].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor4[arg1[all]].field_1 % 128 + 97 > idx:
                    mem[idx + 32] = uint256(stor4[arg1[all]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor4[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor4[arg1[all]].field_1 % 128)]), 
           uint256(stor4[arg1[all]].field_256),
           uint256(stor4[arg1[all]].field_512)
}

function sub_5676959a(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Fuck off'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 96))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))] = arg2
    stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 96))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))] = arg3
}

function sub_9dd45f56(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 4
    if ceil32(arg2.length) <= arg2.length:
        _11690 = sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)):
                if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                    revert with 0, 'Amount less than fee'
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)) * 0.5:
                    if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                        revert with 0, 'Amount less than fee'
                else:
                    idx = ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226
                    s = 0
                    while ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_11690].field_0)) * 0.5) + 194 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_11690) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if msg.value < stor1[_11690]:
                        revert with 0, 'Amount less than fee'
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128:
                if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                    revert with 0, 'Amount less than fee'
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128:
                    if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                        revert with 0, 'Amount less than fee'
                else:
                    idx = ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226
                    s = 0
                    while ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + stor[_11690].field_1 % 128 + 194 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_11690) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if msg.value < stor1[_11690]:
                        revert with 0, 'Amount less than fee'
    else:
        _11693 = sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)):
                if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                    revert with 0, 'Amount less than fee'
            else:
                if 31 >= uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0)) * 0.5:
                    if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                        revert with 0, 'Amount less than fee'
                else:
                    idx = ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226
                    s = 0
                    while ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + (uint255(uint256(stor[_11693].field_0)) * 0.5) + 194 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_11693) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if msg.value < stor1[_11693]:
                        revert with 0, 'Amount less than fee'
        else:
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128:
                if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                    revert with 0, 'Amount less than fee'
            else:
                if 31 >= stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])].field_1 % 128:
                    if msg.value < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]:
                        revert with 0, 'Amount less than fee'
                else:
                    idx = ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226
                    s = 0
                    while ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + stor[_11693].field_1 % 128 + 194 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_11693) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if msg.value < stor1[_11693]:
                        revert with 0, 'Amount less than fee'
    if 0 == uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if block.timestamp > stor1.length:
            revert with 0, 'Node has expired, pay restore fee'
    else:
        if block.timestamp > uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
            revert with 0, 'Node has expired, pay restore fee'
    if 0 == uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if stor1.length > !stor2.length:
            revert with 0, 17
        if stor1.length + stor2.length < stor1.length:
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = stor1.length + stor2.length
    else:
        if uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) > !stor2.length:
            revert with 0, 17
        if uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) + stor2.length < uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) += stor2.length
}



}
