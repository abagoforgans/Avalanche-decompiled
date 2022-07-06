contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of uint256 stor3;
address stor4;
array of struct stor5;
uint256 stor6;

function owner() payable {
    return owner
}

function allowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_386ffa0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function sub_9ae13df5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2[address(arg1)]) = not uint8(stor2[address(arg1)]) or Mask(248, 8, uint256(stor2[address(arg1)]))
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

function sub_a027c486(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
}

function sub_c6c77368(?) payable {
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor5.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor5[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while stor5.length.field_1 + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor5.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor5[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while stor5.length.field_1 + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
}

function enoughRandom() payable {
    if not uint8(stor2[msg.sender]):
        if owner != msg.sender:
            revert with 0, 'Access denied'
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 >= uint255(stor5.length) * 0.5:
                    mem[ceil32(return_data.size) + 128] = 256 * stor5.length.field_8
                else:
                    mem[ceil32(return_data.size) + 128] = uint256(stor5.field_0)
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 >= stor5.length.field_1:
                    mem[ceil32(return_data.size) + 128] = 256 * stor5.length.field_8
                else:
                    mem[ceil32(return_data.size) + 128] = uint256(stor5.field_0)
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(return_data.size) + ceil32(uint255(stor5.length) * 0.5) + 212 len ceil32(uint255(stor5.length) * 0.5)] = mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor5.length) * 0.5)]
        mem[(uint255(stor5.length) * 0.5) + ceil32(return_data.size) + ceil32(uint255(stor5.length) * 0.5) + 212] = stor6
        if not stor3.length:
            revert with 0, 18
        if stor6 > !(sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor5.length) * 0.5)], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor5.length) * 0.5)) + 212 len (uint255(stor5.length) * 0.5) + -ceil32(uint255(stor5.length) * 0.5) + 32]) % 100):
            revert with 0, 17
        stor6 += sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor5.length) * 0.5)], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor5.length) * 0.5)) + 212 len (uint255(stor5.length) * 0.5) + -ceil32(uint255(stor5.length) * 0.5) + 32]) % 100
        if 10^18 < stor6 + (sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor5.length) * 0.5)], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor5.length) * 0.5)) + 212 len (uint255(stor5.length) * 0.5) + -ceil32(uint255(stor5.length) * 0.5) + 32]) % 100):
            stor6 = 0
        if sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor5.length) * 0.5)], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor5.length) * 0.5)) + 212 len (uint255(stor5.length) * 0.5) + -ceil32(uint255(stor5.length) * 0.5) + 32]) % stor3.length >= stor3.length:
            revert with 0, 50
        return sha3(block.timestamp, block.hash(block.number), stor3[sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor5.length) * 0.5)], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor5.length) * 0.5)) + 212 len (uint255(stor5.length) * 0.5) + -ceil32(uint255(stor5.length) * 0.5) + 32]) % stor3.length], ext_call.return_data[0], sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(uint255(stor5.length) * 0.5)], mem[ceil32(return_data.size) + (2 * ceil32(uint255(stor5.length) * 0.5)) + 212 len (uint255(stor5.length) * 0.5) + -ceil32(uint255(stor5.length) * 0.5) + 32]), mem[ceil32(return_data.size) + 128 len uint255(stor5.length) * 0.5])
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 >= uint255(stor5.length) * 0.5:
                mem[ceil32(return_data.size) + 128] = 256 * stor5.length.field_8
            else:
                mem[ceil32(return_data.size) + 128] = uint256(stor5.field_0)
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 >= stor5.length.field_1:
                mem[ceil32(return_data.size) + 128] = 256 * stor5.length.field_8
            else:
                mem[ceil32(return_data.size) + 128] = uint256(stor5.field_0)
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    mem[ceil32(return_data.size) + ceil32(stor5.length.field_1) + 212 len ceil32(stor5.length.field_1)] = mem[ceil32(return_data.size) + 128 len ceil32(stor5.length.field_1)]
    mem[stor5.length.field_1 + ceil32(return_data.size) + ceil32(stor5.length.field_1) + 212] = stor6
    if not stor3.length:
        revert with 0, 18
    if stor6 > !(sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(stor5.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor5.length.field_1)) + 212 len stor5.length.field_1 + -ceil32(stor5.length.field_1) + 32]) % 100):
        revert with 0, 17
    stor6 += sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(stor5.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor5.length.field_1)) + 212 len stor5.length.field_1 + -ceil32(stor5.length.field_1) + 32]) % 100
    if 10^18 < stor6 + (sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(stor5.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor5.length.field_1)) + 212 len stor5.length.field_1 + -ceil32(stor5.length.field_1) + 32]) % 100):
        stor6 = 0
    if sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(stor5.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor5.length.field_1)) + 212 len stor5.length.field_1 + -ceil32(stor5.length.field_1) + 32]) % stor3.length >= stor3.length:
        revert with 0, 50
    return sha3(block.timestamp, block.hash(block.number), stor3[sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(stor5.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor5.length.field_1)) + 212 len stor5.length.field_1 + -ceil32(stor5.length.field_1) + 32]) % stor3.length], ext_call.return_data[0], sha3(block.hash(block.number), stor4, mem[ceil32(return_data.size) + 128 len ceil32(stor5.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor5.length.field_1)) + 212 len stor5.length.field_1 + -ceil32(stor5.length.field_1) + 32]), mem[ceil32(return_data.size) + 128 len stor5.length.field_1])
}



}
