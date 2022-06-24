contract main {




// =====================  Runtime code  =====================


#
#  - claimRewards(uint256[] arg1, uint256[] arg2)
#  - sub_7e1ad99c(?)
#  - withdraw(uint256[] arg1, uint256[] arg2)
#  - deposit(uint256[] arg1, uint256[] arg2)
#
address owner;
address CAKEAddress;
address sub_ec04327aAddress;
address sub_6b9f69b4Address;
address sub_6b0f8d09Address;
address sub_0cc8e459Address;
uint256 EXPIRATION;
mapping of struct stor7;
mapping of struct stor8;
mapping of uint256 sub_eda4e5d3;
mapping of uint256 sub_7280190a;
mapping of uint256 sub_9ce82ee1;
mapping of uint256 sub_925603b5;
mapping of uint256 sub_6145cf2c;
mapping of uint256 sub_dba0afe4;
array of uint256 sub_4ab21246;
array of uint256 sub_1c5c366d;
uint8 started;
uint8 stopEmissions; offset 8
uint256 stor27;

function sub_0cc8e459(?) payable {
    return sub_0cc8e459Address
}

function sub_1c5c366d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6
    return sub_1c5c366d[arg1]
}

function started() payable {
    return bool(started)
}

function stopEmissions() payable {
    return bool(stopEmissions)
}

function sub_4ab21246(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6
    return sub_4ab21246[arg1]
}

function CAKE() payable {
    return CAKEAddress
}

function sub_6145cf2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6145cf2c[arg1]
}

function sub_6b0f8d09(?) payable {
    return sub_6b0f8d09Address
}

function sub_6b9f69b4(?) payable {
    return sub_6b9f69b4Address
}

function sub_7280190a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_7280190a[arg1][arg2]
}

function owner() payable {
    return owner
}

function sub_925603b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_925603b5[arg1]
}

function sub_9ce82ee1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9ce82ee1[arg1]
}

function EXPIRATION() payable {
    return EXPIRATION
}

function sub_dba0afe4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_dba0afe4[arg1]
}

function sub_ec04327a(?) payable {
    return sub_ec04327aAddress
}

function sub_eda4e5d3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_eda4e5d3[arg1][arg2]
}

function _fallback() payable {
    revert
}

function toggleStart() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27 = not bool(started) or Mask(248, 8, stor27)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setExpiration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    EXPIRATION = arg1
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6b9f69b4Address = arg1
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_80444885(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 3) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256) == sha3('ASS'):
        sub_925603b5[arg1] = arg2
    if sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 3) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256) == sha3('PUSSY'):
        sub_9ce82ee1[arg1] = arg2
}

function sub_d0a39a2e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 3) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256) == sha3('ASS'):
        if arg1 >= 6:
            revert with 'NH{q', 50
        sub_1c5c366d[arg1] = arg2
    if sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 3) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256) == sha3('PUSSY'):
        if arg1 >= 6:
            revert with 'NH{q', 50
        sub_4ab21246[arg1] = arg2
}

function compareStrings(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) == sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256))
}

function sub_123ec089(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 3) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) != sha3('ASS'):
        if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 3) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) != sha3('PUSSY'):
            return 0
    else:
        if sub_925603b5[arg1] >= 6:
            revert with 'NH{q', 50
        if sub_1c5c366d[stor12[arg1]] > -sub_dba0afe4[arg1] - 1:
            revert with 'NH{q', 17
        if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 3) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) != sha3('PUSSY'):
            if sub_1c5c366d[stor12[arg1]] + sub_dba0afe4[arg1] and 10^18 > -1 / sub_1c5c366d[stor12[arg1]] + sub_dba0afe4[arg1]:
                revert with 'NH{q', 17
            return ((10^18 * sub_1c5c366d[stor12[arg1]]) + (10^18 * sub_dba0afe4[arg1]) / 6000)
    ('eq', ('sha3', ('mask_shl', ('mask_shl', 253, 0, 3, ('cd', ('add', 4, ('param', 'arg2')))), ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('cd', ('add', 4, ('param', 'arg2')))))), ('add', -256, ('mask_shl', 253, 0, 3, ('cd', ('add', 4, ('param', 'arg2'))))), ('data', ('call.data', ('add', 36, ('param', 'arg2')), ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg2')))))), ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))))))), ('add', -256, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))))))))), 3)))), ('sha3', "'PUSSY'"))
    if sub_9ce82ee1[arg1] >= 6:
        revert with 'NH{q', 50
    if sub_4ab21246[stor11[arg1]] > -sub_6145cf2c[arg1] - 1:
        revert with 'NH{q', 17
    if sub_4ab21246[stor11[arg1]] + sub_6145cf2c[arg1] and 10^18 > -1 / sub_4ab21246[stor11[arg1]] + sub_6145cf2c[arg1]:
        revert with 'NH{q', 17
    return ((10^18 * sub_4ab21246[stor11[arg1]]) + (10^18 * sub_6145cf2c[arg1]) / 6000)
}

function sub_21c63347(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 98 > test266151307() or ceil32(ceil32(('cd', 68).length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[floor32(('cd', 4).length) + 129 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 98] = 3
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 130] = 'ASS'
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 194] = 'ASS'
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 162] = 3
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 229 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], Mask(8 * ceil32(('cd', 68).length) - ('cd', 68).length, -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256, 3) >> -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256
    if ceil32(('cd', 68).length) > ('cd', 68).length:
        mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + ('cd', 68).length + 229] = 0
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 197] = ('cd', 68).length
    if sha3(Mask(8 * ('cd', 68).length, -(8 * ('cd', 68).length) + 256, call.data[cd[68] + 36 len ('cd', 68).length], Mask(8 * ceil32(('cd', 68).length) - ('cd', 68).length, -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256, 3) >> -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256) << (8 * ('cd', 68).length) - 256) == sha3('ASS'):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 12
            sub_925603b5[mem[(32 * idx) + 128]] = cd[36]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + ('cd', 68).length + 229] = 5
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + ('cd', 68).length + 261] = 'PUSSY'
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + ('cd', 68).length + 325] = 'PUSSY'
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + ('cd', 68).length + 293] = 5
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + ('cd', 68).length + 362 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], Mask(8 * ceil32(('cd', 68).length) - ('cd', 68).length, -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256, 3) >> -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256
    if ceil32(('cd', 68).length) > ('cd', 68).length:
        mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + (2 * ('cd', 68).length) + 362] = 0
    mem[floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + ('cd', 68).length + 330] = ('cd', 68).length
    if sha3(Mask(8 * ('cd', 68).length, -(8 * ('cd', 68).length) + 256, call.data[cd[68] + 36 len ('cd', 68).length], Mask(8 * ceil32(('cd', 68).length) - ('cd', 68).length, -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256, 3) >> -(8 * ceil32(('cd', 68).length) + -ceil32(ceil32(('cd', 68).length)) + 31) + 256) << (8 * ('cd', 68).length) - 256) == sha3('PUSSY'):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            sub_9ce82ee1[mem[(32 * idx) + 128]] = cd[36]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_0716ad0f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 13
        if 1 > -sub_6145cf2c[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if s > -sub_6145cf2c[mem[(32 * idx) + 128]] - 2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_6145cf2c[mem[(32 * idx) + 128]] + 1
        continue 
    if ('cd', 4).length and 100000 * 10^18 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    mem[floor32(('cd', 4).length) + 133] = msg.sender
    mem[floor32(('cd', 4).length) + 165] = this.address
    mem[floor32(('cd', 4).length) + 197] = 100000 * 10^18 * ('cd', 4).length
    mem[floor32(('cd', 4).length) + 97] = 100
    mem[floor32(('cd', 4).length) + 129 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[floor32(('cd', 4).length) + 229] = 32
    mem[floor32(('cd', 4).length) + 261] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_ec04327aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[floor32(('cd', 4).length) + 293 len 128] = 0, msg.sender, address(this.address), 100000 * 10^18 * ('cd', 4).length, 0
    mem[floor32(('cd', 4).length) + 393] = 0
    call sub_ec04327aAddress with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), 100000 * 10^18 * ('cd', 4).length, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), 100000 * 10^18 * ('cd', 4).length, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 4).length > 0:
                revert with memory
                  from 128
                   len ('cd', 4).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 4).length > 0:
            require ('cd', 4).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ('cd', 4).length and 10^18 > -1 / ('cd', 4).length:
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + 329] = msg.sender
        mem[floor32(('cd', 4).length) + 361] = this.address
        mem[floor32(('cd', 4).length) + 393] = 10^18 * ('cd', 4).length
        mem[floor32(('cd', 4).length) + 293] = 100
        mem[floor32(('cd', 4).length) + 325 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[floor32(('cd', 4).length) + 425] = 32
        mem[floor32(('cd', 4).length) + 457] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(CAKEAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[floor32(('cd', 4).length) + 489 len 128] = 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0
        mem[floor32(('cd', 4).length) + 589] = 0
        call CAKEAddress with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 4).length > 0:
                    revert with memory
                      from 128
                       len ('cd', 4).length
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 4).length > 0:
                require ('cd', 4).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[floor32(('cd', 4).length) + 489] = return_data.size
            mem[floor32(('cd', 4).length) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[floor32(('cd', 4).length) + 521] == bool(mem[floor32(('cd', 4).length) + 521])
                if not mem[floor32(('cd', 4).length) + 521]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[floor32(('cd', 4).length) + 293] = return_data.size
        mem[floor32(('cd', 4).length) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[floor32(('cd', 4).length) + 325] == bool(mem[floor32(('cd', 4).length) + 325])
            if not mem[floor32(('cd', 4).length) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ('cd', 4).length and 10^18 > -1 / ('cd', 4).length:
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 330] = msg.sender
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 362] = this.address
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 394] = 10^18 * ('cd', 4).length
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 294] = 100
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 326 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 426] = 32
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 458] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(CAKEAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 490 len 128] = 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 590] = 0
        call CAKEAddress with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 4).length > 0:
                    revert with memory
                      from 128
                       len ('cd', 4).length
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 4).length > 0:
                require ('cd', 4).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 490] = return_data.size
            mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522] == bool(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522])
                if not mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 623 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if sub_6145cf2c[mem[(32 * idx) + 128]] > -2:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 13
        sub_6145cf2c[mem[(32 * idx) + 128]]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_8e299567(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 14
        if 1 > -sub_dba0afe4[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if s > -sub_dba0afe4[mem[(32 * idx) + 128]] - 2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_dba0afe4[mem[(32 * idx) + 128]] + 1
        continue 
    if ('cd', 4).length and 100000 * 10^18 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    mem[floor32(('cd', 4).length) + 133] = msg.sender
    mem[floor32(('cd', 4).length) + 165] = this.address
    mem[floor32(('cd', 4).length) + 197] = 100000 * 10^18 * ('cd', 4).length
    mem[floor32(('cd', 4).length) + 97] = 100
    mem[floor32(('cd', 4).length) + 129 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[floor32(('cd', 4).length) + 229] = 32
    mem[floor32(('cd', 4).length) + 261] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_ec04327aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[floor32(('cd', 4).length) + 293 len 128] = 0, msg.sender, address(this.address), 100000 * 10^18 * ('cd', 4).length, 0
    mem[floor32(('cd', 4).length) + 393] = 0
    call sub_ec04327aAddress with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), 100000 * 10^18 * ('cd', 4).length, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), 100000 * 10^18 * ('cd', 4).length, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 4).length > 0:
                revert with memory
                  from 128
                   len ('cd', 4).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 4).length > 0:
            require ('cd', 4).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ('cd', 4).length and 10^18 > -1 / ('cd', 4).length:
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + 329] = msg.sender
        mem[floor32(('cd', 4).length) + 361] = this.address
        mem[floor32(('cd', 4).length) + 393] = 10^18 * ('cd', 4).length
        mem[floor32(('cd', 4).length) + 293] = 100
        mem[floor32(('cd', 4).length) + 325 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[floor32(('cd', 4).length) + 425] = 32
        mem[floor32(('cd', 4).length) + 457] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(CAKEAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[floor32(('cd', 4).length) + 489 len 128] = 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0
        mem[floor32(('cd', 4).length) + 589] = 0
        call CAKEAddress with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 4).length > 0:
                    revert with memory
                      from 128
                       len ('cd', 4).length
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 4).length > 0:
                require ('cd', 4).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[floor32(('cd', 4).length) + 489] = return_data.size
            mem[floor32(('cd', 4).length) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[floor32(('cd', 4).length) + 521] == bool(mem[floor32(('cd', 4).length) + 521])
                if not mem[floor32(('cd', 4).length) + 521]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[floor32(('cd', 4).length) + 293] = return_data.size
        mem[floor32(('cd', 4).length) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[floor32(('cd', 4).length) + 325] == bool(mem[floor32(('cd', 4).length) + 325])
            if not mem[floor32(('cd', 4).length) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ('cd', 4).length and 10^18 > -1 / ('cd', 4).length:
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 330] = msg.sender
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 362] = this.address
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 394] = 10^18 * ('cd', 4).length
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 294] = 100
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 326 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 426] = 32
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 458] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(CAKEAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 490 len 128] = 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 590] = 0
        call CAKEAddress with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), 10^18 * ('cd', 4).length, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 4).length > 0:
                    revert with memory
                      from 128
                       len ('cd', 4).length
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 4).length > 0:
                require ('cd', 4).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 490] = return_data.size
            mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522] == bool(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522])
                if not mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 522]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 623 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if sub_dba0afe4[mem[(32 * idx) + 128]] > -2:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 14
        sub_dba0afe4[mem[(32 * idx) + 128]]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_70e7381b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg2.length)) + 97] = 3
    mem[ceil32(ceil32(arg2.length)) + 129] = 'ASS'
    mem[ceil32(ceil32(arg2.length)) + 193] = 'ASS'
    mem[ceil32(ceil32(arg2.length)) + 161] = 3
    mem[ceil32(ceil32(arg2.length)) + 228 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 3) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    mem[ceil32(ceil32(arg2.length)) + 196] = arg2.length
    if ceil32(arg2.length) <= arg2.length:
        if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 3) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) != sha3('ASS'):
            mem[32] = 8
            if stor8[address(arg1)].field_0 > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 228] = stor8[address(arg1)].field_0
            mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
            if not stor8[address(arg1)].field_0:
                if var102002 >= stor8[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324 len 32 * stor8[address(arg1)].field_0] = mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor8[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                       len (96 * stor8[address(arg1)].field_0) + 64
                if var108001 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 8)
                if var114002 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var114002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var114001
                s = var114002
                t = var114001
                idx = var114002
                while idx != -1:
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324
                        while idx < stor8[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                           len (96 * stor8[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 8)
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor8[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor8[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor8[address(arg1)].field_0] = call.data[calldata.size len 32 * stor8[address(arg1)].field_0]
                if var103002 >= stor8[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324 len 32 * stor8[address(arg1)].field_0] = call.data[calldata.size len 32 * stor8[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                       len (96 * stor8[address(arg1)].field_0) + 64
                if var109001 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 8)
                if var115002 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var115002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var115001
                s = var115002
                t = var115001
                idx = var115002
                while idx != -1:
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324
                        while idx < stor8[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                           len (96 * stor8[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 8)
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor8[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor8[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
        else:
            mem[32] = 7
            if stor7[address(arg1)].field_0 > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 228] = stor7[address(arg1)].field_0
            mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
            if not stor7[address(arg1)].field_0:
                if var102002 >= stor7[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324 len 32 * stor7[address(arg1)].field_0] = mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor7[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                       len (96 * stor7[address(arg1)].field_0) + 64
                if var108001 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                if var114002 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var114002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var114001
                s = var114002
                t = var114001
                idx = var114002
                while idx != -1:
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324
                        while idx < stor7[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                           len (96 * stor7[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 7)
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor7[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor7[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor7[address(arg1)].field_0] = call.data[calldata.size len 32 * stor7[address(arg1)].field_0]
                if var103002 >= stor7[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324 len 32 * stor7[address(arg1)].field_0] = call.data[calldata.size len 32 * stor7[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                       len (96 * stor7[address(arg1)].field_0) + 64
                if var109001 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                if var115002 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var115002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var115001
                s = var115002
                t = var115001
                idx = var115002
                while idx != -1:
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324
                        while idx < stor7[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                           len (96 * stor7[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 7)
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor7[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor7[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
    else:
        if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 3) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) != sha3('ASS'):
            mem[32] = 8
            if stor8[address(arg1)].field_0 > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 228] = stor8[address(arg1)].field_0
            mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
            if not stor8[address(arg1)].field_0:
                if var103002 >= stor8[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324 len 32 * stor8[address(arg1)].field_0] = mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor8[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                       len (96 * stor8[address(arg1)].field_0) + 64
                if var109001 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 8)
                if var115002 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var115002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var115001
                s = var115002
                t = var115001
                idx = var115002
                while idx != -1:
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324
                        while idx < stor8[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                           len (96 * stor8[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 8)
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor8[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor8[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor8[address(arg1)].field_0] = call.data[calldata.size len 32 * stor8[address(arg1)].field_0]
                if var104002 >= stor8[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324 len 32 * stor8[address(arg1)].field_0] = call.data[calldata.size len 32 * stor8[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                       len (96 * stor8[address(arg1)].field_0) + 64
                if var110001 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 8)
                if var116002 >= stor8[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var116002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var116001
                s = var116002
                t = var116001
                idx = var116002
                while idx != -1:
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 292] = stor8[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 324
                        while idx < stor8[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor8[address(arg1)].field_0) + 260
                           len (96 * stor8[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 8)
                    if idx + 1 >= stor8[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor8[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor8[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
        else:
            mem[32] = 7
            if stor7[address(arg1)].field_0 > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 228] = stor7[address(arg1)].field_0
            mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
            if not stor7[address(arg1)].field_0:
                if var103002 >= stor7[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324 len 32 * stor7[address(arg1)].field_0] = mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor7[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                       len (96 * stor7[address(arg1)].field_0) + 64
                if var109001 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                if var115002 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var115002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var115001
                s = var115002
                t = var115001
                idx = var115002
                while idx != -1:
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324
                        while idx < stor7[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                           len (96 * stor7[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 7)
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor7[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor7[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(ceil32(arg2.length)) + arg2.length + 260 len 32 * stor7[address(arg1)].field_0] = call.data[calldata.size len 32 * stor7[address(arg1)].field_0]
                if var104002 >= stor7[address(arg1)].field_0:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324 len 32 * stor7[address(arg1)].field_0] = call.data[calldata.size len 32 * stor7[address(arg1)].field_0]
                    return memory
                      from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                       len (96 * stor7[address(arg1)].field_0) + 64
                if var110001 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 7)
                if var116002 >= stor7[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[(32 * var116002) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = var116001
                s = var116002
                t = var116001
                idx = var116002
                while idx != -1:
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260] = 32
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 292] = stor7[address(arg1)].field_0
                        idx = 0
                        u = ceil32(ceil32(arg2.length)) + arg2.length + 260
                        v = ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 324
                        while idx < stor7[address(arg1)].field_0:
                            mem[v] = mem[u]
                            mem[(32 * s) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = t
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        return memory
                          from ceil32(ceil32(arg2.length)) + arg2.length + (32 * stor7[address(arg1)].field_0) + 260
                           len (96 * stor7[address(arg1)].field_0) + 64
                    mem[0] = sha3(address(arg1), 7)
                    if idx + 1 >= stor7[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 2) + ceil32(ceil32(arg2.length)) + arg2.length + 260] = stor7[address(arg1)][idx].field_512
                    s = idx + 1
                    t = stor7[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
    revert with 'NH{q', 17
}



}
