contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;
array of struct sub_05ea2183;
mapping of uint256 stor4;
array of struct sub_592081f3;
array of struct stor6;
array of struct sub_7cbb6c5c;
mapping of address sub_4586223d;
uint256 sub_b93fbcbe;
uint256 sub_c39e5eb8;
uint256 totalParticipants;
uint8 paused;

function sub_05ea2183(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_05ea2183.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return sub_05ea2183[arg1].field_0
}

function sub_4586223d(?) payable {
    require calldata.size - 4 >= 32
    return sub_4586223d[address(arg1)]
}

function sub_592081f3(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= sub_592081f3[arg1 << 248].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return sub_592081f3[arg1 << 248][arg2].field_0
}

function paused() payable {
    return bool(paused)
}

function isPoolGenerated(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_7cbb6c5c(?) payable {
    require calldata.size - 4 >= 32
    return sub_7cbb6c5c[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function totalParticipants() payable {
    return totalParticipants
}

function sub_b93fbcbe(?) payable {
    return sub_b93fbcbe
}

function sub_c39e5eb8(?) payable {
    return sub_c39e5eb8
}

function sub_cfddfc4c(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= sub_7cbb6c5c[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return sub_7cbb6c5c[address(arg1)][arg2].field_0
}

function sub_f561f379(?) payable {
    return sub_05ea2183.length
}

function sub_ff307122(?) payable {
    require calldata.size - 4 >= 32
    return sub_592081f3[arg1 << 248].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    paused = uint8(arg1)
}

function removePoolForToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, 'sNot a whitelisted factory'
    sub_4586223d[address(arg1)] = 0
    emit PoolForTokenRemoved(arg2, arg1);
}

function sub_dc867b79(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
}

function decreaseTotalValueLocked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'sNot a whitelisted factory'
    if sub_b93fbcbe < arg1:
        sub_b93fbcbe = 0
    else:
        if arg1 > sub_b93fbcbe:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b93fbcbe -= arg1
    emit TvlChanged(sub_b93fbcbe, sub_c39e5eb8);
}

function increaseTotalValueLocked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'sNot a whitelisted factory'
    if arg1 + sub_b93fbcbe < sub_b93fbcbe:
        revert with 0, 'SafeMath: addition overflow'
    sub_b93fbcbe += arg1
    if arg1 + sub_c39e5eb8 < sub_c39e5eb8:
        revert with 0, 'SafeMath: addition overflow'
    sub_c39e5eb8 += arg1
    emit TvlChanged(sub_b93fbcbe, arg1 + sub_c39e5eb8);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_26e54479(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if stor2[address(arg1)]:
        require stor1.length - 1 < stor1.length
        require stor2[address(arg1)] - 1 < stor1.length
        stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        require stor1.length
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
}

function sub_27082f73(?) payable {
    require stor1.length <= test266151307()
    if stor1.length:
        mem[128 len 32 * stor1.length] = call.data[calldata.size len 32 * stor1.length]
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require idx < stor1.length
        mem[(32 * idx) + 128] = stor1[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function recordContribution(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, 'sNot a whitelisted factory'
    if totalParticipants + 1 < totalParticipants:
        revert with 0, 'SafeMath: addition overflow'
    totalParticipants++
    if not sub_7cbb6c5c[address(arg1)][1][address(arg2)].field_0:
        sub_7cbb6c5c[address(arg1)].field_0++
        sub_7cbb6c5c[address(arg1)][sub_7cbb6c5c[address(arg1)].field_0].field_0 = arg2
        sub_7cbb6c5c[address(arg1)][sub_7cbb6c5c[address(arg1)].field_0].field_160 = 0
        sub_7cbb6c5c[address(arg1)][1][address(arg2)].field_0 = sub_7cbb6c5c[address(arg1)].field_0
    emit ContributionUpdated(totalParticipants);
}

function getAllPools() payable {
    require sub_05ea2183.length <= test266151307()
    if sub_05ea2183.length:
        mem[128 len 32 * sub_05ea2183.length] = call.data[calldata.size len 32 * sub_05ea2183.length]
    idx = 0
    while idx < sub_05ea2183.length:
        mem[0] = 3
        require idx < sub_05ea2183.length
        mem[(32 * idx) + 128] = sub_05ea2183[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * sub_05ea2183.length) + 192 len floor32(sub_05ea2183.length)] = mem[128 len floor32(sub_05ea2183.length)]
    return Array(len=sub_05ea2183.length, data=mem[128 len floor32(sub_05ea2183.length)], mem[(32 * sub_05ea2183.length) + floor32(sub_05ea2183.length) + 192 len (32 * sub_05ea2183.length) - floor32(sub_05ea2183.length)]), 
}

function sub_4c8f6529(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owne'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + 140 len 20]]:
            stor1.length++
            stor1[stor1.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor1[stor1.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            stor2[address(mem[(32 * idx) + 128])] = stor1.length
        idx = idx + 1
        continue 
}

function sub_ad36b16b(?) payable {
    require calldata.size - 4 >= 128
    if not stor2[address(msg.sender)]:
        revert with 0, 'sNot a whitelisted factory'
    if paused:
        revert with 0, 'Cannot create pool at this time'
    if not stor4[address(arg1)]:
        sub_05ea2183.length++
        sub_05ea2183[sub_05ea2183.length].field_0 = arg1
        sub_05ea2183[sub_05ea2183.length].field_160 = 0
        stor4[address(arg1)] = sub_05ea2183.length
    if not sub_592081f3[arg4 << 248][1][address(arg1)].field_0:
        sub_592081f3[arg4 << 248].field_0++
        sub_592081f3[arg4 << 248][sub_592081f3[arg4 << 248].field_0].field_0 = arg1
        sub_592081f3[arg4 << 248][sub_592081f3[arg4 << 248].field_0].field_160 = 0
        sub_592081f3[arg4 << 248][1][address(arg1)].field_0 = sub_592081f3[arg4 << 248].field_0
    if not stor6[address(arg3)][1][address(arg1)].field_0:
        stor6[address(arg3)].field_0++
        stor6[address(arg3)][stor6[address(arg3)].field_0].field_0 = arg1
        stor6[address(arg3)][stor6[address(arg3)].field_0].field_160 = 0
        stor6[address(arg3)][1][address(arg1)].field_0 = stor6[address(arg3)].field_0
    sub_4586223d[address(arg2)] = arg1
}

function sub_2a33ca1e(?) payable {
    require calldata.size - 4 >= 32
    require stor6[address(arg1)].field_0 <= test266151307()
    if stor6[address(arg1)].field_0:
        mem[128 len 32 * stor6[address(arg1)].field_0] = call.data[calldata.size len 32 * stor6[address(arg1)].field_0]
    idx = 0
    while idx < stor6[address(arg1)].field_0:
        mem[32] = 6
        if idx >= stor6[address(arg1)].field_0:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor6[address(arg1)].field_0) + 230 len 30]
        mem[0] = sha3(address(arg1), 6)
        require idx < stor6[address(arg1)].field_0
        mem[(32 * idx) + 128] = stor6[address(arg1)][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor6[address(arg1)].field_0) + 192 len floor32(stor6[address(arg1)].field_0)] = mem[128 len floor32(stor6[address(arg1)].field_0)]
    return Array(len=stor6[address(arg1)].field_0, data=mem[128 len floor32(stor6[address(arg1)].field_0)], mem[(32 * stor6[address(arg1)].field_0) + floor32(stor6[address(arg1)].field_0) + 192 len (32 * stor6[address(arg1)].field_0) - floor32(stor6[address(arg1)].field_0)]), 
}

function sub_5bcab5d9(?) payable {
    require calldata.size - 4 >= 32
    require sub_7cbb6c5c[address(arg1)].field_0 <= test266151307()
    if sub_7cbb6c5c[address(arg1)].field_0:
        mem[128 len 32 * sub_7cbb6c5c[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_7cbb6c5c[address(arg1)].field_0]
    idx = 0
    while idx < sub_7cbb6c5c[address(arg1)].field_0:
        mem[32] = 7
        if idx >= sub_7cbb6c5c[address(arg1)].field_0:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * sub_7cbb6c5c[address(arg1)].field_0) + 230 len 30]
        mem[0] = sha3(address(arg1), 7)
        require idx < sub_7cbb6c5c[address(arg1)].field_0
        mem[(32 * idx) + 128] = sub_7cbb6c5c[address(arg1)][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * sub_7cbb6c5c[address(arg1)].field_0) + 192 len floor32(sub_7cbb6c5c[address(arg1)].field_0)] = mem[128 len floor32(sub_7cbb6c5c[address(arg1)].field_0)]
    return Array(len=sub_7cbb6c5c[address(arg1)].field_0, data=mem[128 len floor32(sub_7cbb6c5c[address(arg1)].field_0)], mem[(32 * sub_7cbb6c5c[address(arg1)].field_0) + floor32(sub_7cbb6c5c[address(arg1)].field_0) + 192 len (32 * sub_7cbb6c5c[address(arg1)].field_0) - floor32(sub_7cbb6c5c[address(arg1)].field_0)]), 
}



}
