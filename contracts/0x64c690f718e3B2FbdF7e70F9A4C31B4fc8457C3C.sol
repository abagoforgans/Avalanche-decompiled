contract main {




// =====================  Runtime code  =====================


#
#  - sub_9e50581e(?)
#
address owner;
uint256 sub_e4a5e9b9;
uint256 sub_370bcb55;
address nftContractAddress;
mapping of struct stor13;
mapping of struct stor14;
uint256 sub_77e318e9;
uint256 sub_88829913;
uint256 sub_0b84b5a9;
uint256 totalInvestment;
address sub_fb4b915aAddress;
uint256 stor5;
array of uint256 stor6;
address stor7;
uint256 sub_9bc1988d;
uint256 sub_0e0b6f5a;

function sub_0b84b5a9(?) {
    return sub_0b84b5a9
}

function sub_0e0b6f5a(?) {
    return sub_0e0b6f5a
}

function sub_370bcb55(?) {
    return sub_370bcb55
}

function sub_77e318e9(?) {
    return sub_77e318e9
}

function sub_88829913(?) {
    return sub_88829913
}

function owner() {
    return owner
}

function sub_9bc1988d(?) {
    return sub_9bc1988d
}

function nftContract() {
    return nftContractAddress
}

function sub_e4a5e9b9(?) {
    return sub_e4a5e9b9
}

function getTotalInvestment() {
    return totalInvestment
}

function sub_fb4b915a(?) {
    return sub_fb4b915aAddress
}

function _fallback() payable {
    emit Fallback(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_418ed628(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0e0b6f5a = arg1
    emit 0x54d18e20: arg1
}

function sub_5aba339f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9bc1988d = arg1
    emit 0x8711ff3b: arg1
}

function sub_c61750c6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e4a5e9b9 = arg1
    emit 0x728d8e4e: arg1
}

function sub_e44943c6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_370bcb55 = arg1
    emit 0x881ab775: arg1
}

function sub_3efb55d9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalInvestment = arg1
    emit 0x37efa3ac: arg1
}

function sub_f8fcaf5b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fb4b915aAddress = address(arg1)
    emit 0x202a0398: address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawAll(msg.sender, eth.balance(this.address));
}

function sub_9167c44a(?) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if arg2 >= sub_88829913:
            revert with 0, 'This lotteryID does not exist.'
        if block.timestamp >= stor14[arg2].field_512:
            return 0
        if stor14[arg2].field_512 < block.timestamp:
            revert with 0, 17
        return (stor14[arg2].field_512 - block.timestamp)
    if arg2 >= sub_77e318e9:
        revert with 0, 'This lotteryID does not exist.'
    if block.timestamp >= stor13[arg2].field_512:
        return 0
    if stor13[arg2].field_512 < block.timestamp:
        revert with 0, 17
    return (stor13[arg2].field_512 - block.timestamp)
}

function sub_8795f8ae(?) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if arg2 >= sub_88829913:
            revert with 0, 'This lotteryID does not exist.'
        if stor14[arg2].field_1024 < 1:
            revert with 0, 17
        return stor14[arg2].field_512, 
               stor14[arg2].field_1280,
               stor14[arg2][7][stor14[arg2].field_1280].field_0,
               stor14[arg2].field_768,
               uint16(stor14[arg2].field_1024 - 1),
               stor14[arg2].field_1536
    if arg2 >= sub_77e318e9:
        revert with 0, 'This lotteryID does not exist.'
    if stor13[arg2].field_1024 < 1:
        revert with 0, 17
    return stor13[arg2].field_512, 
           stor13[arg2].field_1280,
           stor13[arg2][7][stor13[arg2].field_1280].field_0,
           stor13[arg2].field_768,
           uint16(stor13[arg2].field_1024 - 1),
           stor13[arg2].field_1536
}

function sub_2ce1fe68(?) {
    require calldata.size - 4 >= 128
    require arg1 < 2
    require arg3 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if arg2 >= sub_88829913:
            revert with 0, 'This lotteryID does not exist.'
        if stor14[arg2].field_256 > 2:
            revert with 0, 33
        if stor14[arg2].field_256:
            revert with 0, 'admin can't change data'
        if arg3 > 2:
            revert with 0, 33
        stor14[arg2].field_256 = arg3 or Mask(248, 8, stor14[arg2].field_256)
        stor14[arg2].field_512 = arg4
    else:
        if arg2 >= sub_77e318e9:
            revert with 0, 'This lotteryID does not exist.'
        if stor13[arg2].field_256 > 2:
            revert with 0, 33
        if stor13[arg2].field_256:
            revert with 0, 'admin can't change data'
        if arg3 > 2:
            revert with 0, 33
        stor13[arg2].field_256 = arg3 or Mask(248, 8, stor13[arg2].field_256)
        stor13[arg2].field_512 = arg4
    if arg1 >= 2:
        revert with 0, 33
    if arg3 >= 3:
        revert with 0, 33
    emit 0xbfda942d: arg1, arg2, arg3, arg4
}

function sub_6ca9f3e4(?) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if arg2 >= sub_88829913:
            revert with 0, 'This lotteryID does not exist.'
        stor14[arg2].field_0 = 0
        stor14[arg2].field_256 = 0
        stor14[arg2].field_512 = 0
        stor14[arg2].field_768 = 0
        stor14[arg2].field_1024 = 0
        idx = 0
        while stor14[arg2].field_1024 + 15 / 16 > idx:
            stor14[arg2][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        stor14[arg2].field_1280 = 0
        stor14[arg2].field_1536 = 0
        if not sub_88829913:
            revert with 0, 17
        sub_88829913--
    else:
        if arg2 >= sub_77e318e9:
            revert with 0, 'This lotteryID does not exist.'
        stor13[arg2].field_0 = 0
        stor13[arg2].field_256 = 0
        stor13[arg2].field_512 = 0
        stor13[arg2].field_768 = 0
        stor13[arg2].field_1024 = 0
        idx = 0
        while stor13[arg2].field_1024 + 15 / 16 > idx:
            stor13[arg2][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        stor13[arg2].field_1280 = 0
        stor13[arg2].field_1536 = 0
        if not sub_77e318e9:
            revert with 0, 17
        sub_77e318e9--
    if arg1 >= 2:
        revert with 0, 33
    emit 0xb4fdda19: arg1, arg2
}

function sub_75d51cb3(?) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if arg2 >= sub_88829913:
            revert with 0, 'This lotteryID does not exist.'
        if stor14[arg2].field_256 > 2:
            revert with 0, 33
        if stor14[arg2].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This Lottery Status is not Start.'
        if 1 >= stor14[arg2].field_1024:
            revert with 0, 'User has to buy Ticket'
        if sub_88829913 < 1:
            revert with 0, 17
        if stor14[stor16 - 1].field_512 <= block.timestamp:
            stor14[arg2].field_256 = 1
            stor14[arg2].field_512 = block.timestamp
    else:
        if arg2 >= sub_77e318e9:
            revert with 0, 'This lotteryID does not exist.'
        if stor13[arg2].field_256 > 2:
            revert with 0, 33
        if stor13[arg2].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This Lottery Status is not Start.'
        if 1 >= stor13[arg2].field_1024:
            revert with 0, 'User has to buy Ticket'
        if sub_77e318e9 < 1:
            revert with 0, 17
        if stor13[stor15 - 1].field_512 <= block.timestamp:
            stor13[arg2].field_256 = 1
            stor13[arg2].field_512 = block.timestamp
    if arg1 >= 2:
        revert with 0, 33
    emit 0xc9a28593: arg1, arg2
    return 1
}

function sub_0b5c5dbf(?) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if arg2 >= sub_88829913:
            revert with 0, 'This lotteryID does not exist.'
        if stor14[arg2].field_256 > 2:
            revert with 0, 33
        if stor14[arg2].field_1024 < 1:
            revert with 0, 17
        if stor14[arg2].field_1024 - 1 >= stor14[arg2].field_1024:
            revert with 0, 50
        if stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] > -stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + 65535:
            revert with 0, 17
        if stor14[arg2].field_256 >= 3:
            revert with 0, 33
        return stor14[arg2].field_256, 
               stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240,
               stor14[arg2].field_768
    if arg2 >= sub_77e318e9:
        revert with 0, 'This lotteryID does not exist.'
    if stor13[arg2].field_256 > 2:
        revert with 0, 33
    if stor13[arg2].field_1024 < 1:
        revert with 0, 17
    if stor13[arg2].field_1024 - 1 >= stor13[arg2].field_1024:
        revert with 0, 50
    if stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] > -stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + 65535:
        revert with 0, 17
    if stor13[arg2].field_256 >= 3:
        revert with 0, 33
    return stor13[arg2].field_256, 
           stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240,
           stor13[arg2].field_768
}

function sub_8d922a2d(?) {
    require calldata.size - 4 >= 32
    require arg1 < 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1:
        revert with 0, 33
    if block.timestamp > -18001:
        revert with 0, 17
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if not sub_88829913:
            stor14[stor16].field_0 = sub_88829913
            if sub_88829913 == -1:
                revert with 0, 17
            sub_88829913++
            stor14[stor16].field_256 = 0
            stor14[stor16].field_512 = block.timestamp + (5 * 3600)
            stor14[stor16].field_768 = 0
        else:
            if sub_88829913 < 1:
                revert with 0, 17
            if stor14[stor16 - 1].field_256 > 2:
                revert with 0, 33
            if stor14[stor16 - 1].field_256 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Previous lottery doesn't complete.'
            if sub_88829913 < 1:
                revert with 0, 17
            if stor14[stor16 - 1].field_512 > !sub_370bcb55:
                revert with 0, 17
            if sub_88829913 < 1:
                revert with 0, 17
            stor14[stor16 - 1].field_768 = 0
            stor14[stor16].field_0 = sub_88829913
            if sub_88829913 == -1:
                revert with 0, 17
            sub_88829913++
            stor14[stor16].field_256 = 0
            stor14[stor16].field_512 = stor14[stor16 - 1].field_512 + sub_370bcb55
            stor14[stor16].field_768 = stor14[stor16 - 1].field_768
        stor14[stor16].field_1024++
        stor[stor14[stor16].field_1028 + ('array', 4, ('map', ('stor', ('name', 'stor16', 16)), ('name', 'stor14', 14)))].field_0 = 256^(2 * stor14[stor16].field_1024) or stor[stor14[stor16].field_1028 + ('array', 4, ('map', ('stor', ('name', 'stor16', 16)), ('name', 'stor14', 14)))].field_0 and !(65535 * 256^(2 * stor14[stor16].field_1024))
        stor14[stor16][7][1].field_0 = msg.sender or Mask(96, 160, stor14[stor16][7][1].field_0)
        stor14[stor16][8][1].field_0 = 0
        if arg1 >= 2:
            revert with 0, 33
        emit 0x58e1d5e6: arg1, stor14[stor16].field_0, 0
    else:
        if not sub_77e318e9:
            stor13[stor15].field_0 = sub_77e318e9
            if sub_77e318e9 == -1:
                revert with 0, 17
            sub_77e318e9++
            stor13[stor15].field_256 = 0
            stor13[stor15].field_512 = block.timestamp + (5 * 3600)
            stor13[stor15].field_768 = 0
        else:
            if sub_77e318e9 < 1:
                revert with 0, 17
            if stor13[stor15 - 1].field_256 > 2:
                revert with 0, 33
            if stor13[stor15 - 1].field_256 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Previous lottery doesn't complete.'
            if sub_77e318e9 < 1:
                revert with 0, 17
            if stor13[stor15 - 1].field_512 > !sub_e4a5e9b9:
                revert with 0, 17
            if sub_77e318e9 < 1:
                revert with 0, 17
            stor13[stor15 - 1].field_768 = 0
            stor13[stor15].field_0 = sub_77e318e9
            if sub_77e318e9 == -1:
                revert with 0, 17
            sub_77e318e9++
            stor13[stor15].field_256 = 0
            stor13[stor15].field_512 = stor13[stor15 - 1].field_512 + sub_e4a5e9b9
            stor13[stor15].field_768 = stor13[stor15 - 1].field_768
        stor13[stor15].field_1024++
        stor[stor13[stor15].field_1028 + ('array', 4, ('map', ('stor', ('name', 'stor15', 15)), ('name', 'stor13', 13)))].field_0 = 256^(2 * stor13[stor15].field_1024) or stor[stor13[stor15].field_1028 + ('array', 4, ('map', ('stor', ('name', 'stor15', 15)), ('name', 'stor13', 13)))].field_0 and !(65535 * 256^(2 * stor13[stor15].field_1024))
        stor13[stor15][7][1].field_0 = msg.sender or Mask(96, 160, stor13[stor15][7][1].field_0)
        stor13[stor15][8][1].field_0 = 0
        if arg1 >= 2:
            revert with 0, 33
        emit 0x58e1d5e6: arg1, stor13[stor15].field_0, 0
}

function sub_3fa5c74c(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'The seed value can't be 0 value and can't be the same as the previous one.'
    if arg1 == stor5:
        revert with 0, 'The seed value can't be 0 value and can't be the same as the previous one.'
    if not address(arg3):
        revert with 0, 'The seed Address can't be 0 Address and can't be the same as the previous one.'
    if stor7 == address(arg3):
        revert with 0, 'The seed Address can't be 0 Address and can't be the same as the previous one.'
    if not sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256):
        revert with 0, 'The seed String can't be 0 String and can't be the same as the previous one.'
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor6.length):
            mem[arg2.length + ceil32(ceil32(arg2.length)) + 161] = Mask(248, 8, stor6.length)
            if ceil32(arg2.length) > arg2.length:
                mem[(2 * arg2.length) + ceil32(ceil32(arg2.length)) + (uint255(stor6.length) * 0.5) + 193] = 0
            if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) == sha3(mem[arg2.length + ceil32(ceil32(arg2.length)) + 161 len uint255(stor6.length) * 0.5]):
                revert with 0, 'The seed String can't be 0 String and can't be the same as the previous one.'
        else:
            if bool(stor6.length) != 1:
                if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) == sha3(mem[arg2.length + ceil32(ceil32(arg2.length)) + 161 len -arg2.length + -ceil32(ceil32(arg2.length)) - 161]):
                    revert with 0, 'The seed String can't be 0 String and can't be the same as the previous one.'
            else:
                idx = 0
                s = 0
                while idx < uint255(stor6.length) * 0.5:
                    mem[idx + arg2.length + ceil32(ceil32(arg2.length)) + 161] = stor6[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if ceil32(arg2.length) > arg2.length:
                    mem[(2 * arg2.length) + ceil32(ceil32(arg2.length)) + (uint255(stor6.length) * 0.5) + 193] = 0
                if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) == sha3(mem[arg2.length + ceil32(ceil32(arg2.length)) + 161 len uint255(stor6.length) * 0.5]):
                    revert with 0, 'The seed String can't be 0 String and can't be the same as the previous one.'
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor6.length):
            mem[arg2.length + ceil32(ceil32(arg2.length)) + 161] = Mask(248, 8, stor6.length)
            if ceil32(arg2.length) > arg2.length:
                mem[(2 * arg2.length) + ceil32(ceil32(arg2.length)) + stor6.length.field_1 + 193] = 0
            if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) == sha3(mem[arg2.length + ceil32(ceil32(arg2.length)) + 161 len stor6.length.field_1]):
                revert with 0, 'The seed String can't be 0 String and can't be the same as the previous one.'
        else:
            if bool(stor6.length) != 1:
                if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) == sha3(mem[arg2.length + ceil32(ceil32(arg2.length)) + 161 len -arg2.length + -ceil32(ceil32(arg2.length)) - 161]):
                    revert with 0, 'The seed String can't be 0 String and can't be the same as the previous one.'
            else:
                idx = 0
                s = 0
                while idx < stor6.length.field_1:
                    mem[idx + arg2.length + ceil32(ceil32(arg2.length)) + 161] = stor6[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if ceil32(arg2.length) > arg2.length:
                    mem[(2 * arg2.length) + ceil32(ceil32(arg2.length)) + stor6.length.field_1 + 193] = 0
                if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) == sha3(mem[arg2.length + ceil32(ceil32(arg2.length)) + 161 len stor6.length.field_1]):
                    revert with 0, 'The seed String can't be 0 String and can't be the same as the previous one.'
    emit 0xe3368aa4: msg.sender, block.timestamp, arg1, Array(len=arg2.length, data=arg2[all]), address(arg3)
    stor5 = arg1
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor6[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor6.length = 0
            idx = 0
            while (uint255(stor6.length) * 0.5) + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor6[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
    stor7 = address(arg3)
    return 1
}

function sub_400cf192(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 < 2
    require arg3 == uint16(arg3)
    if uint16(arg3) <= 0:
        revert with 0, 'User has to input ticket number.'
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        if arg2 >= sub_88829913:
            revert with 0, 'This lotteryID does not exist.'
        if sub_0e0b6f5a and uint16(arg3) > -1 / sub_0e0b6f5a:
            revert with 0, 17
        if stor14[arg2].field_512 < block.timestamp:
            revert with 0, 'Time is up'
        if stor14[arg2].field_256 > 2:
            revert with 0, 33
        if stor14[arg2].field_256:
            revert with 0, 'Lottery doesn't start.'
        if sub_0e0b6f5a * uint16(arg3) != msg.value:
            revert with 0, 'no enough balance'
        if sub_0e0b6f5a * uint16(arg3) and 1 > -1 / sub_0e0b6f5a * uint16(arg3):
            revert with 0, 17
        call sub_fb4b915aAddress with:
           value sub_0e0b6f5a * uint16(arg3) / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_0e0b6f5a * uint16(arg3) and 9 > -1 / sub_0e0b6f5a * uint16(arg3):
            revert with 0, 17
        call this.address with:
           value 9 * sub_0e0b6f5a * uint16(arg3) / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_0e0b6f5a * uint16(arg3) and 9 > -1 / sub_0e0b6f5a * uint16(arg3):
            revert with 0, 17
        if stor14[arg2].field_768 > !(9 * sub_0e0b6f5a * uint16(arg3) / 10):
            revert with 0, 17
        stor14[arg2].field_768 += 9 * sub_0e0b6f5a * uint16(arg3) / 10
        idx = 0
        while idx < uint16(arg3):
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(nftContractAddress)
            call nftContractAddress.mintNFT(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor14[arg2].field_1024 < 1:
            revert with 0, 17
        if stor14[arg2].field_1024 - 1 >= stor14[arg2].field_1024:
            revert with 0, 50
        if stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] > -stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + 65535:
            revert with 0, 17
        if arg1 > 1:
            revert with 0, 33
        if arg1:
            stor14[arg2].field_1024++
            stor[stor14[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_0 = stor[stor14[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_0 and !(65535 * 256^(2 * stor14[arg2].field_1024)) or 256^(2 * stor14[arg2].field_1024) * uint16(stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)])
            stor14[arg2][7][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0 = msg.sender or Mask(96, 160, stor14[arg2][7][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0)
            if uint16(arg3) > 32767:
                revert with 0, 17
            stor14[arg2][8][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0 = 0
            stor14[arg2][8][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_1 = arg3 % 32768
            if arg1 >= 2:
                revert with 0, 33
            emit 0x8d45f6a3: msg.sender, arg1, arg2, block.timestamp, stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240, uint16(arg3)
        else:
            if 10 < stor14[arg2].field_1024:
                stor14[arg2].field_1024++
                stor[stor14[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_0 = stor[stor14[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_0 and !(65535 * 256^(2 * stor14[arg2].field_1024)) or 256^(2 * stor14[arg2].field_1024) * uint16(stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)])
                stor14[arg2][7][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0 = msg.sender or Mask(96, 160, stor14[arg2][7][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0)
                if uint16(arg3) > 32767:
                    revert with 0, 17
                stor14[arg2][8][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0 = 0
                stor14[arg2][8][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_1 = arg3 % 32768
                if arg1 >= 2:
                    revert with 0, 33
                emit 0x8d45f6a3: msg.sender, arg1, arg2, block.timestamp, stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240, uint16(arg3)
            else:
                if uint16(arg3) > 32767:
                    revert with 0, 17
                stor14[arg2].field_1024++
                stor[stor14[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_0 = stor[stor14[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_0 and !(65535 * 256^(2 * stor14[arg2].field_1024)) or 256^(2 * stor14[arg2].field_1024) * uint16(stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)])
                stor14[arg2][7][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0 = msg.sender or Mask(96, 160, stor14[arg2][7][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0)
                if 2 * arg3 % 32768 > 32767:
                    revert with 0, 17
                stor14[arg2][8][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_0 = 0
                stor14[arg2][8][stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240].field_2 = arg3 % 16384
                if arg1 >= 2:
                    revert with 0, 33
                emit 0x8d45f6a3: msg.sender, arg1, arg2, block.timestamp, stor14[arg2][8][stor[(0.0625 / stor14[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14)))].field_(16 * stor14[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor14', 14))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor14', 14))))[uint8(stor14[arg2].field_1024 - 1)] << 240, 2 * arg3 % 32768
    else:
        if arg2 >= sub_77e318e9:
            revert with 0, 'This lotteryID does not exist.'
        if sub_9bc1988d and uint16(arg3) > -1 / sub_9bc1988d:
            revert with 0, 17
        if stor13[arg2].field_512 < block.timestamp:
            revert with 0, 'Time is up'
        if stor13[arg2].field_256 > 2:
            revert with 0, 33
        if stor13[arg2].field_256:
            revert with 0, 'Lottery doesn't start.'
        if sub_9bc1988d * uint16(arg3) != msg.value:
            revert with 0, 'no enough balance'
        if sub_9bc1988d * uint16(arg3) and 1 > -1 / sub_9bc1988d * uint16(arg3):
            revert with 0, 17
        call sub_fb4b915aAddress with:
           value sub_9bc1988d * uint16(arg3) / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_9bc1988d * uint16(arg3) and 9 > -1 / sub_9bc1988d * uint16(arg3):
            revert with 0, 17
        call this.address with:
           value 9 * sub_9bc1988d * uint16(arg3) / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_9bc1988d * uint16(arg3) and 9 > -1 / sub_9bc1988d * uint16(arg3):
            revert with 0, 17
        if stor13[arg2].field_768 > !(9 * sub_9bc1988d * uint16(arg3) / 10):
            revert with 0, 17
        stor13[arg2].field_768 += 9 * sub_9bc1988d * uint16(arg3) / 10
        idx = 0
        while idx < uint16(arg3):
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(nftContractAddress)
            call nftContractAddress.mintNFT(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor13[arg2].field_1024 < 1:
            revert with 0, 17
        if stor13[arg2].field_1024 - 1 >= stor13[arg2].field_1024:
            revert with 0, 50
        if stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] > -stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + 65535:
            revert with 0, 17
        if arg1 > 1:
            revert with 0, 33
        if arg1:
            stor13[arg2].field_1024++
            stor[stor13[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_0 = stor[stor13[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_0 and !(65535 * 256^(2 * stor13[arg2].field_1024)) or 256^(2 * stor13[arg2].field_1024) * uint16(stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)])
            stor13[arg2][7][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0 = msg.sender or Mask(96, 160, stor13[arg2][7][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0)
            if uint16(arg3) > 32767:
                revert with 0, 17
            stor13[arg2][8][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0 = 0
            stor13[arg2][8][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_1 = arg3 % 32768
            if arg1 >= 2:
                revert with 0, 33
            emit 0x8d45f6a3: msg.sender, arg1, arg2, block.timestamp, stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240, uint16(arg3)
        else:
            if 10 < stor13[arg2].field_1024:
                stor13[arg2].field_1024++
                stor[stor13[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_0 = stor[stor13[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_0 and !(65535 * 256^(2 * stor13[arg2].field_1024)) or 256^(2 * stor13[arg2].field_1024) * uint16(stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)])
                stor13[arg2][7][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0 = msg.sender or Mask(96, 160, stor13[arg2][7][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0)
                if uint16(arg3) > 32767:
                    revert with 0, 17
                stor13[arg2][8][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0 = 0
                stor13[arg2][8][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_1 = arg3 % 32768
                if arg1 >= 2:
                    revert with 0, 33
                emit 0x8d45f6a3: msg.sender, arg1, arg2, block.timestamp, stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240, uint16(arg3)
            else:
                if uint16(arg3) > 32767:
                    revert with 0, 17
                stor13[arg2].field_1024++
                stor[stor13[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_0 = stor[stor13[arg2].field_1028 + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_0 and !(65535 * 256^(2 * stor13[arg2].field_1024)) or 256^(2 * stor13[arg2].field_1024) * uint16(stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)])
                stor13[arg2][7][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0 = msg.sender or Mask(96, 160, stor13[arg2][7][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0)
                if 2 * arg3 % 32768 > 32767:
                    revert with 0, 17
                stor13[arg2][8][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_0 = 0
                stor13[arg2][8][stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240].field_2 = arg3 % 16384
                if arg1 >= 2:
                    revert with 0, 33
                emit 0x8d45f6a3: msg.sender, arg1, arg2, block.timestamp, stor13[arg2][8][stor[(0.0625 / stor13[arg2].field_1024 - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13)))].field_(16 * stor13[arg2].field_1024 - 1 % 16) - 240].field_0 + stor((0.0625 / Mask(256, 1024, stor[('map', ('param', 'arg2'), ('name', 'stor13', 13))]) - 1) + ('array', 4, ('map', ('param', 'arg2'), ('name', 'stor13', 13))))[uint8(stor13[arg2].field_1024 - 1)] << 240, 2 * arg3 % 32768
}



}
