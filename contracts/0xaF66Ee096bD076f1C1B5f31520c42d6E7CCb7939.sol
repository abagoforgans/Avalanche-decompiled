contract main {




// =====================  Runtime code  =====================


#
#  - executeOrder(uint256 arg1)
#  - withdrawERC20(address arg1, uint256 arg2)
#  - orderDetails(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
array of address stor4;
array of uint256 stor5;
array of uint256 stor6;
array of struct stor7;
array of address stor8;
address owner;
uint256 stor101;
uint256 sub_0da14a87;
array of struct stor352;
mapping of uint256 stor353;
array of struct stor354;
mapping of uint256 stor355;
array of struct stor356;
mapping of uint256 stor357;
uint256 totalOrders;
mapping of struct stor359;
array of uint256 sub_f06ad531;
array of uint256 stor361;

function sub_0da14a87(?) payable {
    return sub_0da14a87
}

function sub_11c27d86(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor355[address(arg1)])
}

function totalOrders() payable {
    return totalOrders
}

function sub_4135a4ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor357[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_e316784d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor353[address(arg1)])
}

function sub_f06ad531(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    if arg1 > 3:
        revert with 0, 33
    return sub_f06ad531[arg1]
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function sub_f496f8b2(?) payable {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LootMarketplace: wrong percent value'
    sub_0da14a87 = arg1
    stor101 = 1
    return 1
}

function sub_d77e8117(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor357[address(arg1)]:
        stor356.length++
        stor356[stor356.length].field_0 = address(arg1)
        Mask(96, 0, stor356[stor356.length].field_160) = 0
        stor357[address(arg1)] = stor356.length
    stor101 = 1
    return 1
}

function sub_dba156a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor355[address(arg1)]:
        stor354.length++
        stor354[stor354.length].field_0 = address(arg1)
        Mask(96, 0, stor354[stor354.length].field_160) = 0
        stor355[address(arg1)] = stor354.length
    stor101 = 1
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function addSettlementToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LootMarketplace: token must be a contract'
    if not stor353[address(arg1)]:
        stor352.length++
        stor352[stor352.length].field_0 = arg1
        Mask(96, 0, stor352[stor352.length].field_160) = 0
        stor353[address(arg1)] = stor352.length
    stor101 = 1
    return 1
}

function sub_5e2f8384(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor355[address(arg1)]:
        if stor355[address(arg1)] < 1:
            revert with 0, 17
        if stor354.length < 1:
            revert with 0, 17
        if stor354.length - 1 != stor355[address(arg1)] - 1:
            if stor354.length - 1 >= stor354.length:
                revert with 0, 50
            if stor355[address(arg1)] - 1 >= stor354.length:
                revert with 0, 50
            uint256(stor354[stor355[address(arg1)]].field_0) = uint256(stor354[stor354.length].field_0)
            stor355[uint256(stor354[stor354.length].field_0)] = stor355[address(arg1)]
        if not stor354.length:
            revert with 0, 49
        uint256(stor354[stor354.length].field_0) = 0
        stor354.length--
        stor355[address(arg1)] = 0
    stor101 = 1
    return 1
}

function sub_da8a764f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor357[address(arg1)]:
        if stor357[address(arg1)] < 1:
            revert with 0, 17
        if stor356.length < 1:
            revert with 0, 17
        if stor356.length - 1 != stor357[address(arg1)] - 1:
            if stor356.length - 1 >= stor356.length:
                revert with 0, 50
            if stor357[address(arg1)] - 1 >= stor356.length:
                revert with 0, 50
            uint256(stor356[stor357[address(arg1)]].field_0) = uint256(stor356[stor356.length].field_0)
            stor357[uint256(stor356[stor356.length].field_0)] = stor357[address(arg1)]
        if not stor356.length:
            revert with 0, 49
        uint256(stor356[stor356.length].field_0) = 0
        stor356.length--
        stor357[address(arg1)] = 0
    stor101 = 1
    return 1
}

function removeSettlementToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor353[address(arg1)]:
        if stor353[address(arg1)] < 1:
            revert with 0, 17
        if stor352.length < 1:
            revert with 0, 17
        if stor352.length - 1 != stor353[address(arg1)] - 1:
            if stor352.length - 1 >= stor352.length:
                revert with 0, 50
            if stor353[address(arg1)] - 1 >= stor352.length:
                revert with 0, 50
            uint256(stor352[stor353[address(arg1)]].field_0) = uint256(stor352[stor352.length].field_0)
            stor353[uint256(stor352[stor352.length].field_0)] = stor353[address(arg1)]
        if not stor352.length:
            revert with 0, 49
        uint256(stor352[stor352.length].field_0) = 0
        stor352.length--
        stor353[address(arg1)] = 0
    stor101 = 1
    return 1
}

function sub_7c34aa87(?) payable {
    mem[64] = (32 * stor354.length) + 128
    mem[96] = stor354.length
    if not stor354.length:
        mem[(32 * stor354.length) + 128] = 32
        mem[(32 * stor354.length) + 160] = stor354.length
        idx = 0
        s = 128
        t = (32 * stor354.length) + 192
        while idx < stor354.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor354.length) + 128
           len (96 * stor354.length) + 64
    mem[128] = uint256(stor354.field_0)
    idx = 128
    s = 0
    while (32 * stor354.length) + 96 > idx:
        mem[idx + 32] = uint256(stor354[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor354.length) + 128] = 32
    mem[(32 * stor354.length) + 160] = stor354.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor354.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor354.length) + -mem[64] + 192
}

function sub_9e70eb33(?) payable {
    mem[64] = (32 * stor352.length) + 128
    mem[96] = stor352.length
    if not stor352.length:
        mem[(32 * stor352.length) + 128] = 32
        mem[(32 * stor352.length) + 160] = stor352.length
        idx = 0
        s = 128
        t = (32 * stor352.length) + 192
        while idx < stor352.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor352.length) + 128
           len (96 * stor352.length) + 64
    mem[128] = uint256(stor352.field_0)
    idx = 128
    s = 0
    while (32 * stor352.length) + 96 > idx:
        mem[idx + 32] = uint256(stor352[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor352.length) + 128] = 32
    mem[(32 * stor352.length) + 160] = stor352.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor352.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor352.length) + -mem[64] + 192
}

function sub_ce8e0ddb(?) payable {
    mem[64] = (32 * stor356.length) + 128
    mem[96] = stor356.length
    if not stor356.length:
        mem[(32 * stor356.length) + 128] = 32
        mem[(32 * stor356.length) + 160] = stor356.length
        idx = 0
        s = 128
        t = (32 * stor356.length) + 192
        while idx < stor356.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor356.length) + 128
           len (96 * stor356.length) + 64
    mem[128] = uint256(stor356.field_0)
    idx = 128
    s = 0
    while (32 * stor356.length) + 96 > idx:
        mem[idx + 32] = uint256(stor356[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor356.length) + 128] = 32
    mem[(32 * stor356.length) + 160] = stor356.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor356.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor356.length) + -mem[64] + 192
}

function initialize(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LootMarketplace: token must be a contract'
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 1
    if not stor353[address(arg1)]:
        stor352.length++
        stor352[stor352.length].field_0 = arg1
        Mask(96, 0, stor352[stor352.length].field_160) = 0
        stor353[address(arg1)] = stor352.length
    if arg2 >= 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LootMarketplace: wrong percent value'
    sub_0da14a87 = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = ceil32(32 * arg3.length) + 129
    while idx < arg4 + (32 * arg4.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_1b8a1325(?) payable {
    require calldata.size - 4 >= 96
    require arg1 < 4
    if arg1 > 3:
        revert with 0, 33
    if sub_f06ad531[arg1] < arg2:
        revert with 0, 17
    if arg3 <= sub_f06ad531[arg1] - arg2:
        if arg3 > test266151307():
            revert with 0, 65
        if arg3:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 0, 17
            if arg2 + idx >= sub_f06ad531[arg1]:
                revert with 0, 50
            mem[0] = sha3(arg1, 360)
            if idx >= arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg1'), ('name', 'sub_f06ad531', 360)) + arg2 + idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 > !arg3:
            revert with 0, 17
        return Array(len=arg3, data=mem[128 len 32 * arg3]), arg2 + arg3
    if sub_f06ad531[arg1] < arg2:
        revert with 0, 17
    if sub_f06ad531[arg1] - arg2 > test266151307():
        revert with 0, 65
    mem[96] = sub_f06ad531[arg1] - arg2
    if sub_f06ad531[arg1] - arg2:
        mem[128 len 32 * sub_f06ad531[arg1] - arg2] = call.data[calldata.size len 32 * sub_f06ad531[arg1] - arg2]
    idx = 0
    while idx < sub_f06ad531[arg1] - arg2:
        if arg2 > !idx:
            revert with 0, 17
        if arg2 + idx >= sub_f06ad531[arg1]:
            revert with 0, 50
        mem[0] = sha3(arg1, 360)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('map', ('param', 'arg1'), ('name', 'sub_f06ad531', 360)) + arg2 + idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg2 > !(sub_f06ad531[arg1] - arg2):
        revert with 0, 17
    mem[(32 * sub_f06ad531[arg1] - arg2) + 128] = 64
    mem[(32 * sub_f06ad531[arg1] - arg2) + 192] = mem[96]
    mem[(32 * sub_f06ad531[arg1] - arg2) + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 64, sub_f06ad531[arg1], mem[(32 * sub_f06ad531[arg1] - arg2) + 192 len (32 * mem[96]) + 32]
}

function sub_b35444b7(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 < 4
    if arg2 > 3:
        revert with 0, 33
    if stor361[address(arg1)][arg2] < arg3:
        revert with 0, 17
    if arg4 <= stor361[address(arg1)][arg2] - arg3:
        if arg4 > test266151307():
            revert with 0, 65
        if arg4:
            mem[128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = 0
        while idx < arg4:
            if arg3 > !idx:
                revert with 0, 17
            if arg3 + idx >= stor361[address(arg1)][arg2]:
                revert with 0, 50
            mem[0] = sha3(arg2, sha3(address(arg1), 361))
            if idx >= arg4:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor361', 361))) + arg3 + idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !arg4:
            revert with 0, 17
        return Array(len=arg4, data=mem[128 len 32 * arg4]), arg3 + arg4
    if stor361[address(arg1)][arg2] < arg3:
        revert with 0, 17
    if stor361[address(arg1)][arg2] - arg3 > test266151307():
        revert with 0, 65
    mem[96] = stor361[address(arg1)][arg2] - arg3
    if stor361[address(arg1)][arg2] - arg3:
        mem[128 len 32 * stor361[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * stor361[address(arg1)][arg2] - arg3]
    idx = 0
    while idx < stor361[address(arg1)][arg2] - arg3:
        if arg3 > !idx:
            revert with 0, 17
        if arg3 + idx >= stor361[address(arg1)][arg2]:
            revert with 0, 50
        mem[0] = sha3(arg2, sha3(address(arg1), 361))
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor361', 361))) + arg3 + idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg3 > !(stor361[address(arg1)][arg2] - arg3):
        revert with 0, 17
    mem[(32 * stor361[address(arg1)][arg2] - arg3) + 128] = 64
    mem[(32 * stor361[address(arg1)][arg2] - arg3) + 192] = mem[96]
    mem[(32 * stor361[address(arg1)][arg2] - arg3) + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 64, stor361[address(arg1)][arg2], mem[(32 * stor361[address(arg1)][arg2] - arg3) + 192 len (32 * mem[96]) + 32]
}

function cancelOrder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg1 >= totalOrders:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LootMarketplace: order does not exist'
    if uint8(stor359[arg1].field_256) > 2:
        revert with 0, 33
    if uint256(stor359[arg1].field_1280):
        idx = 480
        s = 0
        while (32 * uint256(stor359[arg1].field_1280)) + 448 > idx:
            mem[idx + 32] = stor359[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if uint8(stor359[arg1].field_1792) > 3:
        revert with 0, 33
    if uint8(stor359[arg1].field_1792) > 3:
        revert with 0, 33
    if uint8(stor359[arg1].field_1792) != 1:
        revert with 0, 'LootMarketplace: only for open orders'
    if stor359[arg1].field_1800 != msg.sender:
        revert with 0, 'LootMarketplace: sender is not the seller'
    if stor359[arg1].field_2048:
        revert with 0, 'LootMarketplace: order already completed'
    uint8(stor359[arg1].field_1792) = 2
    if sub_f06ad531[1][1][arg1]:
        if sub_f06ad531[1][1][arg1] < 1:
            revert with 0, 17
        if sub_f06ad531[1] < 1:
            revert with 0, 17
        if sub_f06ad531[1] - 1 != sub_f06ad531[1][1][arg1] - 1:
            if sub_f06ad531[1] - 1 >= sub_f06ad531[1]:
                revert with 0, 50
            if sub_f06ad531[1][1][arg1] - 1 >= sub_f06ad531[1]:
                revert with 0, 50
            sub_f06ad531[1][sub_f06ad531[1][1][arg1]] = sub_f06ad531[1][sub_f06ad531[1]]
            sub_f06ad531[1][1][sub_f06ad531[1][sub_f06ad531[1]]] = sub_f06ad531[1][1][arg1]
        if not sub_f06ad531[1]:
            revert with 0, 49
        sub_f06ad531[1][sub_f06ad531[1]] = 0
        sub_f06ad531[1]--
        sub_f06ad531[1][1][arg1] = 0
    if stor361[msg.sender][1][1][arg1]:
        if stor361[msg.sender][1][1][arg1] < 1:
            revert with 0, 17
        if stor361[msg.sender][1] < 1:
            revert with 0, 17
        if stor361[msg.sender][1] - 1 != stor361[msg.sender][1][1][arg1] - 1:
            if stor361[msg.sender][1] - 1 >= stor361[msg.sender][1]:
                revert with 0, 50
            if stor361[msg.sender][1][1][arg1] - 1 >= stor361[msg.sender][1]:
                revert with 0, 50
            stor361[msg.sender][1][stor361[msg.sender][1][1][arg1]] = stor361[msg.sender][1][stor361[msg.sender][1]]
            stor361[msg.sender][1][1][stor361[msg.sender][1][stor361[msg.sender][1]]] = stor361[msg.sender][1][1][arg1]
        if not stor361[msg.sender][1]:
            revert with 0, 49
        stor361[msg.sender][1][stor361[msg.sender][1]] = 0
        stor361[msg.sender][1]--
        stor361[msg.sender][1][1][arg1] = 0
    if not sub_f06ad531[2][1][arg1]:
        sub_f06ad531[2]++
        sub_f06ad531[2][sub_f06ad531[2]] = arg1
        sub_f06ad531[2][1][arg1] = sub_f06ad531[2]
    if not stor361[msg.sender][2][1][arg1]:
        stor361[msg.sender][2]++
        stor361[msg.sender][2][stor361[msg.sender][2]] = arg1
        stor361[msg.sender][2][1][arg1] = stor361[msg.sender][2]
    if uint8(stor359[arg1].field_256) > 2:
        revert with 0, 33
    require ext_code.size(stor359[arg1].field_264)
    if uint8(stor359[arg1].field_256) != 1:
        call stor359[arg1].field_264.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, uint256(stor359[arg1].field_512), uint256(stor359[arg1].field_768), 160, 0
    else:
        call stor359[arg1].field_264.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, uint256(stor359[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1e0e8a79: block.timestamp, msg.sender, arg1
    stor101 = 1
    return 1
}

function sub_6c3c5753(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] < 3
    require cd[36] == address(cd[36])
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require calldata.size > cd[164] + 35
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 97 < 96 or ceil32(32 * ('cd', 164).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    s = 128
    idx = cd[164] + 36
    while idx < cd[164] + (32 * ('cd', 164).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if cd[4] > 2:
        revert with 0, 33
    if not cd[4]:
        revert with 0, 'LootMarketplace: invalid nft standart'
    if not address(cd[36]):
        revert with 0, 'LootMarketplace: zero contract address'
    if cd[4] > 2:
        revert with 0, 33
    if cd[4] != 1:
        if not stor357[address(cd[36])]:
            revert with 0, 'LootMarketplace: nft not registered'
        if cd[100] < 1:
            revert with 0, 'LootMarketplace: wrong token amount'
    else:
        if not stor355[address(cd[36])]:
            revert with 0, 'LootMarketplace: nft not registered'
        if cd[100] != 1:
            revert with 0, 'LootMarketplace: wrong token amount'
    if not address(cd[132]):
        revert with 0, 'LootMarketplace: zero trade token address'
    if not stor353[address(cd[132])]:
        revert with 0, 'LootMarketplace: settlement token not registered'
    if ('cd', 164).length:
        revert with 0, 'LootMarketplace: only main settlement token'
    if cd[196] <= 10^14:
        revert with 0, 'LootMarketplace: wrong order price'
    mem[ceil32(32 * ('cd', 164).length) + 97] = totalOrders
    if cd[4] > 2:
        revert with 0, 33
    mem[ceil32(32 * ('cd', 164).length) + 129] = cd[4]
    uint256(stor359[stor358].field_0) = totalOrders
    if cd[4] > 2:
        revert with 0, 33
    uint256(stor359[stor358].field_256) = cd[4] or Mask(248, 8, uint256(stor359[stor358].field_256))
    stor359[stor358].field_264 = address(cd[36])
    uint256(stor359[stor358].field_512) = cd[68]
    uint256(stor359[stor358].field_768) = cd[100]
    stor359[stor358].field_1024 = address(cd[132])
    uint256(stor359[stor358].field_1280) = ('cd', 164).length
    if not ('cd', 164).length:
        idx = 0
        while uint256(stor359[stor358].field_1280) > idx:
            uint256(stor359[stor358][idx + 5].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 164).length) + 128 > idx:
            stor359[stor358][s + 5].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
        while uint256(stor359[stor358].field_1280) > idx:
            uint256(stor359[stor358][idx + 5].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor359[stor358].field_1536) = cd[196]
    uint8(stor359[stor358].field_1792) = 1
    stor359[stor358].field_1800 = msg.sender
    stor359[stor358].field_2048 = 0
    stor359[stor358].field_2304 % 1 = 0
    totalOrders++
    if not sub_f06ad531[1][1][stor358]:
        sub_f06ad531[1]++
        sub_f06ad531[1][sub_f06ad531[1]] = totalOrders
        sub_f06ad531[1][1][stor358] = sub_f06ad531[1]
    if not stor361[msg.sender][1][1][stor358]:
        stor361[msg.sender][1]++
        stor361[msg.sender][1][stor361[msg.sender][1]] = totalOrders
        stor361[msg.sender][1][1][stor358] = stor361[msg.sender][1]
    if cd[4] > 2:
        revert with 0, 33
    require ext_code.size(address(cd[36]))
    if cd[4] != 1:
        call address(cd[36]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[68], cd[100], 160, 0
    else:
        call address(cd[36]).0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if cd[4] >= 3:
        revert with 0, 33
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 164).length) + 705
    while idx < ('cd', 164).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xab7f8a73: totalOrders, cd[4], cd[100], address(cd[132]), Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + 705 len 32 * ('cd', 164).length]), cd[196], block.timestamp, msg.sender, address(cd[36]), cd[68]
    stor101 = 1
    return totalOrders
}

function sub_6a4405ab(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 359
            _113 = sha3(mem[(32 * idx) + 128], 359)
            _114 = mem[64]
            mem[64] = mem[64] + 352
            mem[_114] = uint256(stor359[mem[(32 * idx) + 128]].field_0)
            if uint8(stor1[_113].field_0) > 2:
                revert with 0, 33
            mem[_114 + 32] = uint8(stor1[_113].field_0)
            mem[_114 + 64] = stor1[_113].field_8
            mem[_114 + 96] = stor2[_113]
            mem[_114 + 128] = stor3[_113]
            mem[_114 + 160] = stor4[_113]
            _116 = mem[64]
            mem[64] = mem[64] + (32 * stor5[_113]) + 32
            mem[_116] = stor5[_113]
            if stor5[_113]:
                mem[0] = _113 + 5
                mem[_116 + 32] = stor[sha3(_113 + 5)]
                s = _116 + 32
                t = sha3(_113 + 5)
                while _116 + (32 * stor5[_113]) > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
            mem[_114 + 192] = _116
            mem[_114 + 224] = stor6[_113]
            if uint8(stor7[_113].field_0) > 3:
                revert with 0, 33
            mem[_114 + 256] = uint8(stor7[_113].field_0)
            mem[_114 + 288] = stor7[_113].field_8
            mem[_114 + 320] = stor8[_113]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _114
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _111 = mem[64]
        mem[mem[64]] = 32
        _115 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _115) + 64
        while idx < _115:
            mem[t] = u + -_111 - 64
            _160 = mem[s]
            mem[u] = mem[mem[s]]
            if mem[_160 + 32] >= 3:
                revert with 0, 33
            mem[u + 32] = mem[_160 + 32]
            mem[u + 64] = mem[_160 + 76 len 20]
            mem[u + 96] = mem[_160 + 96]
            mem[u + 128] = mem[_160 + 128]
            mem[u + 160] = mem[_160 + 172 len 20]
            _174 = mem[_160 + 192]
            mem[u + 192] = 352
            _176 = mem[_174]
            mem[u + 352] = mem[_174]
            v = 0
            w = _174 + 32
            x = u + 384
            while v < _176:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 224] = mem[_160 + 224]
            if mem[_160 + 256] >= 4:
                revert with 0, 33
            mem[u + 256] = mem[_160 + 256]
            mem[u + 288] = mem[_160 + 300 len 20]
            mem[u + 320] = mem[_160 + 332 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _176) + 384
            continue 
    else:
        mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 96
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
        mem[var25001] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
            mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
            s = s + 32
            idx = idx - 1
            continue 
        _200 = mem[96]
        idx = 0
        while idx < _200:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 359
            _208 = sha3(mem[(32 * idx) + 128], 359)
            _209 = mem[64]
            mem[64] = mem[64] + 352
            mem[_209] = uint256(stor359[mem[(32 * idx) + 128]].field_0)
            if uint8(stor1[_208].field_0) > 2:
                revert with 0, 33
            mem[_209 + 32] = uint8(stor1[_208].field_0)
            mem[_209 + 64] = stor1[_208].field_8
            mem[_209 + 96] = stor2[_208]
            mem[_209 + 128] = stor3[_208]
            mem[_209 + 160] = stor4[_208]
            _211 = mem[64]
            mem[64] = mem[64] + (32 * stor5[_208]) + 32
            mem[_211] = stor5[_208]
            if stor5[_208]:
                mem[0] = _208 + 5
                mem[_211 + 32] = stor[sha3(_208 + 5)]
                s = _211 + 32
                t = sha3(_208 + 5)
                while _211 + (32 * stor5[_208]) > s:
                    _200 = mem[96]
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
            mem[_209 + 192] = _211
            mem[_209 + 224] = stor6[_208]
            if uint8(stor7[_208].field_0) > 3:
                revert with 0, 33
            mem[_209 + 256] = uint8(stor7[_208].field_0)
            mem[_209 + 288] = stor7[_208].field_8
            mem[_209 + 320] = stor8[_208]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _209
            if idx == -1:
                revert with 0, 17
            _200 = mem[96]
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = 32
        _210 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _210) + 64
        while idx < _210:
            mem[t] = u + -_206 - 64
            _231 = mem[s]
            mem[u] = mem[mem[s]]
            if mem[_231 + 32] >= 3:
                revert with 0, 33
            mem[u + 32] = mem[_231 + 32]
            mem[u + 64] = mem[_231 + 76 len 20]
            mem[u + 96] = mem[_231 + 96]
            mem[u + 128] = mem[_231 + 128]
            mem[u + 160] = mem[_231 + 172 len 20]
            _239 = mem[_231 + 192]
            mem[u + 192] = 352
            _240 = mem[_239]
            mem[u + 352] = mem[_239]
            v = 0
            w = _239 + 32
            x = u + 384
            while v < _240:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 224] = mem[_231 + 224]
            if mem[_231 + 256] >= 4:
                revert with 0, 33
            mem[u + 256] = mem[_231 + 256]
            mem[u + 288] = mem[_231 + 300 len 20]
            mem[u + 320] = mem[_231 + 332 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _240) + 384
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
