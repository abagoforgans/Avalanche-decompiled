contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct sub_2fe9e114;
address stor5;
address stor6;

function sub_2fe9e114(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2fe9e114[address(arg1)].field_0
}

function sub_3eaa2fce(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall stor6.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'This NFT is not yours.'
    return sub_2fe9e114[address(arg1)][3][arg2].field_0
}

function owner() payable {
    return owner
}

function sub_c49de120(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall stor6.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'This NFT is not yours.'
    return sub_2fe9e114[address(arg1)][3][arg2].field_0
}

function sub_feb29453(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall stor6.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'This NFT is not yours.'
    return sub_2fe9e114[address(arg1)][5][arg2].field_0
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
    require (32 * arg3.length) + arg3 + 36 <= calldata.size
    s = 128
    idx = arg3 + 36
    while idx < (32 * arg3.length) + arg3 + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require (32 * arg4.length) + arg4 + 36 <= calldata.size
    s = ceil32(32 * arg3.length) + 129
    idx = arg4 + 36
    while idx < (32 * arg4.length) + arg4 + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
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

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    mem[132] = arg1
    staticcall stor6.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'This NFT is not yours.'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = arg1
    staticcall stor6.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = arg1
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    require ext_code.size(stor6)
    call stor6.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1, ext_call.return_data[0], 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_2fe9e114[msg.sender].field_256 > !ext_call.return_data[0]:
        revert with 0, 17
    sub_2fe9e114[msg.sender].field_256 += ext_call.return_data[0]
    sub_2fe9e114[msg.sender][2][arg1].field_0 = ext_call.return_data[0]
    sub_2fe9e114[msg.sender][3][arg1].field_0 = block.timestamp
    sub_2fe9e114[msg.sender][4][arg1].field_0 = block.timestamp
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    while idx < 3:
        mem[0] = msg.sender
        mem[32] = 2
        _74 = mem[64]
        mem[64] = mem[64] + 96
        mem[_74] = 30
        mem[_74 + 32] = 510
        mem[_74 + 64] = 7800
        mem[0] = idx
        if not sub_2fe9e114[address(msg.sender)][2][idx].field_0:
            mem[32] = sha3(address(msg.sender), 2) + 5
            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 0
        else:
            mem[32] = sha3(address(msg.sender), 2) + 4
            if block.timestamp < sub_2fe9e114[address(msg.sender)][4][idx].field_0:
                revert with 0, 17
            if idx >= 3:
                revert with 0, 50
            _78 = mem[(32 * idx) + _74]
            if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 30:
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if mem[(32 * idx) + _74] and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / mem[(32 * idx) + _74]:
                                revert with 0, 17
                            if mem[(32 * idx) + _74] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / mem[(32 * idx) + _74] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if mem[(32 * idx) + _74] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * _78 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * _78 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _83 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _83 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _83 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _82 = mem[(32 * idx) + _74]
                        if mem[(32 * idx) + _74] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _82 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _82 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _91 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _91 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _91 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _80 = mem[(32 * idx) + _74]
                    if mem[(32 * idx) + _74] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _80 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _80 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _92 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _92 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _92 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _88 = mem[(32 * idx) + _74]
                        if mem[(32 * idx) + _74] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _88 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _88 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _102 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _102 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _102 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
            else:
                if idx >= 3:
                    revert with 0, 50
                _79 = mem[(32 * idx) + _74]
                if mem[(32 * idx) + _74] > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                    revert with 0, 17
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 150 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 150 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 150 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 150 * _79 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 150 * _79 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _93 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _93 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _93 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _90 = mem[(32 * idx) + _74]
                        if mem[(32 * idx) + _74] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _90 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _90 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _103 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _103 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _103 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _84 = mem[(32 * idx) + _74]
                    if mem[(32 * idx) + _74] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _84 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _84 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _104 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _104 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _104 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _101 = mem[(32 * idx) + _74]
                        if mem[(32 * idx) + _74] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _101 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _101 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _113 = mem[(32 * idx) + _74]
                            if mem[(32 * idx) + _74] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _74] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _74] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _113 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _113 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_2fe9e114[address(msg.sender)].field_0 = 0
    stor1 = 1
}

function claim(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_2fe9e114[msg.sender][2][arg1].field_0 < 1:
        revert with 0, 'Not staked by you.'
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    while idx < 3:
        mem[0] = msg.sender
        mem[32] = 2
        _64 = mem[64]
        mem[64] = mem[64] + 96
        mem[_64] = 30
        mem[_64 + 32] = 510
        mem[_64 + 64] = 7800
        mem[0] = idx
        if not sub_2fe9e114[address(msg.sender)][2][idx].field_0:
            mem[32] = sha3(address(msg.sender), 2) + 5
            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 0
        else:
            mem[32] = sha3(address(msg.sender), 2) + 4
            if block.timestamp < sub_2fe9e114[address(msg.sender)][4][idx].field_0:
                revert with 0, 17
            if idx >= 3:
                revert with 0, 50
            _78 = mem[(32 * idx) + _64]
            if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 30:
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if mem[(32 * idx) + _64] and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / mem[(32 * idx) + _64]:
                                revert with 0, 17
                            if mem[(32 * idx) + _64] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / mem[(32 * idx) + _64] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if mem[(32 * idx) + _64] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * _78 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * _78 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _83 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _83 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _83 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _82 = mem[(32 * idx) + _64]
                        if mem[(32 * idx) + _64] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _82 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _82 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _93 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _93 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _93 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _80 = mem[(32 * idx) + _64]
                    if mem[(32 * idx) + _64] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _80 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _80 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _94 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _94 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _94 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _89 = mem[(32 * idx) + _64]
                        if mem[(32 * idx) + _64] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _89 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _89 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _108 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _108 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _108 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
            else:
                if idx >= 3:
                    revert with 0, 50
                _79 = mem[(32 * idx) + _64]
                if mem[(32 * idx) + _64] > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                    revert with 0, 17
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 150 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 150 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 150 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 150 * _79 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 150 * _79 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _95 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _95 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _95 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _91 = mem[(32 * idx) + _64]
                        if mem[(32 * idx) + _64] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _91 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _91 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _109 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _109 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _109 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _85 = mem[(32 * idx) + _64]
                    if mem[(32 * idx) + _64] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _85 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _85 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _110 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _110 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _110 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _107 = mem[(32 * idx) + _64]
                        if mem[(32 * idx) + _64] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _107 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _107 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _130 = mem[(32 * idx) + _64]
                            if mem[(32 * idx) + _64] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _64] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _64] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _130 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _130 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_2fe9e114[address(msg.sender)].field_0 = 0
    mem[0] = arg1
    mem[32] = sha3(msg.sender, 2) + 5
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = sub_2fe9e114[msg.sender][5][arg1].field_0
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_2fe9e114[msg.sender][5][arg1].field_0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_68] == bool(mem[_68])
    sub_2fe9e114[msg.sender][4][arg1].field_0 = block.timestamp
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    while idx < 3:
        mem[0] = msg.sender
        mem[32] = 2
        _175 = mem[64]
        mem[64] = mem[64] + 96
        mem[_175] = 30
        mem[_175 + 32] = 510
        mem[_175 + 64] = 7800
        mem[0] = idx
        if not sub_2fe9e114[address(msg.sender)][2][idx].field_0:
            mem[32] = sha3(address(msg.sender), 2) + 5
            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 0
        else:
            mem[32] = sha3(address(msg.sender), 2) + 4
            if block.timestamp < sub_2fe9e114[address(msg.sender)][4][idx].field_0:
                revert with 0, 17
            if idx >= 3:
                revert with 0, 50
            _179 = mem[(32 * idx) + _175]
            if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 30:
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if mem[(32 * idx) + _175] and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / mem[(32 * idx) + _175]:
                                revert with 0, 17
                            if mem[(32 * idx) + _175] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / mem[(32 * idx) + _175] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if mem[(32 * idx) + _175] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * _179 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * _179 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _184 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _184 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _184 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _183 = mem[(32 * idx) + _175]
                        if mem[(32 * idx) + _175] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _183 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _183 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _192 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _192 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _192 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _181 = mem[(32 * idx) + _175]
                    if mem[(32 * idx) + _175] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _181 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _181 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _193 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _193 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _193 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _189 = mem[(32 * idx) + _175]
                        if mem[(32 * idx) + _175] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _189 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _189 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _203 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _203 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _203 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
            else:
                if idx >= 3:
                    revert with 0, 50
                _180 = mem[(32 * idx) + _175]
                if mem[(32 * idx) + _175] > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                    revert with 0, 17
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 150 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 150 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 150 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 150 * _180 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 150 * _180 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _194 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _194 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _194 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _191 = mem[(32 * idx) + _175]
                        if mem[(32 * idx) + _175] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _191 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _191 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _204 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _204 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _204 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _185 = mem[(32 * idx) + _175]
                    if mem[(32 * idx) + _175] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _185 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _185 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _205 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _205 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _205 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _202 = mem[(32 * idx) + _175]
                        if mem[(32 * idx) + _175] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _202 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _202 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _214 = mem[(32 * idx) + _175]
                            if mem[(32 * idx) + _175] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _175] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _175] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _214 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _214 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_2fe9e114[address(msg.sender)].field_0 = 0
    stor1 = 1
}

function unstake(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_2fe9e114[msg.sender][2][arg1].field_0 < 1:
        revert with 0, 'Not staked by you.'
    mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = msg.sender
    mem[164] = arg1
    mem[196] = sub_2fe9e114[msg.sender][2][arg1].field_0
    mem[228] = 160
    mem[260] = 0
    require ext_code.size(stor6)
    call stor6.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, arg1, sub_2fe9e114[msg.sender][2][arg1].field_0, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    while idx < 3:
        mem[0] = msg.sender
        mem[32] = 2
        _66 = mem[64]
        mem[64] = mem[64] + 96
        mem[_66] = 30
        mem[_66 + 32] = 510
        mem[_66 + 64] = 7800
        mem[0] = idx
        if not sub_2fe9e114[address(msg.sender)][2][idx].field_0:
            mem[32] = sha3(address(msg.sender), 2) + 5
            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 0
        else:
            mem[32] = sha3(address(msg.sender), 2) + 4
            if block.timestamp < sub_2fe9e114[address(msg.sender)][4][idx].field_0:
                revert with 0, 17
            if idx >= 3:
                revert with 0, 50
            _81 = mem[(32 * idx) + _66]
            if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 30:
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if mem[(32 * idx) + _66] and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / mem[(32 * idx) + _66]:
                                revert with 0, 17
                            if mem[(32 * idx) + _66] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / mem[(32 * idx) + _66] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if mem[(32 * idx) + _66] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * _81 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * _81 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _88 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _88 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _88 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _87 = mem[(32 * idx) + _66]
                        if mem[(32 * idx) + _66] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _87 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _87 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _96 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _96 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _96 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _85 = mem[(32 * idx) + _66]
                    if mem[(32 * idx) + _66] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _85 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _85 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _97 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _97 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _97 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _93 = mem[(32 * idx) + _66]
                        if mem[(32 * idx) + _66] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _93 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _93 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _113 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _113 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _113 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
            else:
                if idx >= 3:
                    revert with 0, 50
                _83 = mem[(32 * idx) + _66]
                if mem[(32 * idx) + _66] > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                    revert with 0, 17
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 150 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 150 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 150 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 150 * _83 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 150 * _83 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _98 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _98 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _98 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _95 = mem[(32 * idx) + _66]
                        if mem[(32 * idx) + _66] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _95 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _95 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _114 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _114 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _114 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _89 = mem[(32 * idx) + _66]
                    if mem[(32 * idx) + _66] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _89 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _89 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _115 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _115 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _115 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _112 = mem[(32 * idx) + _66]
                        if mem[(32 * idx) + _66] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _112 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _112 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _135 = mem[(32 * idx) + _66]
                            if mem[(32 * idx) + _66] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _66] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _66] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _135 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _135 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_2fe9e114[address(msg.sender)].field_0 = 0
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = sub_2fe9e114[msg.sender].field_0
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_2fe9e114[msg.sender].field_0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_70] == bool(mem[_70])
    if sub_2fe9e114[msg.sender].field_256 < sub_2fe9e114[msg.sender][2][arg1].field_0:
        revert with 0, 17
    sub_2fe9e114[msg.sender].field_256 -= sub_2fe9e114[msg.sender][2][arg1].field_0
    sub_2fe9e114[msg.sender][3][arg1].field_0 = 0
    sub_2fe9e114[msg.sender][4][arg1].field_0 = 0
    sub_2fe9e114[msg.sender][2][arg1].field_0 = 0
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    while idx < 3:
        mem[0] = msg.sender
        mem[32] = 2
        _180 = mem[64]
        mem[64] = mem[64] + 96
        mem[_180] = 30
        mem[_180 + 32] = 510
        mem[_180 + 64] = 7800
        mem[0] = idx
        if not sub_2fe9e114[address(msg.sender)][2][idx].field_0:
            mem[32] = sha3(address(msg.sender), 2) + 5
            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 0
        else:
            mem[32] = sha3(address(msg.sender), 2) + 4
            if block.timestamp < sub_2fe9e114[address(msg.sender)][4][idx].field_0:
                revert with 0, 17
            if idx >= 3:
                revert with 0, 50
            _184 = mem[(32 * idx) + _180]
            if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 30:
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if mem[(32 * idx) + _180] and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / mem[(32 * idx) + _180]:
                                revert with 0, 17
                            if mem[(32 * idx) + _180] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / mem[(32 * idx) + _180] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if mem[(32 * idx) + _180] * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * _184 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * _184 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _189 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _189 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _189 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _188 = mem[(32 * idx) + _180]
                        if mem[(32 * idx) + _180] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _188 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _188 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _197 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _197 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _197 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _186 = mem[(32 * idx) + _180]
                    if mem[(32 * idx) + _180] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _186 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _186 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _198 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _198 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _198 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _194 = mem[(32 * idx) + _180]
                        if mem[(32 * idx) + _180] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _194 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _194 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _208 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _208 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _208 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
            else:
                if idx >= 3:
                    revert with 0, 50
                _185 = mem[(32 * idx) + _180]
                if mem[(32 * idx) + _180] > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                    revert with 0, 17
                if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 20:
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 150 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 150 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 150 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 150 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 150 * _185 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 150 * _185 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _199 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _199 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _199 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _196 = mem[(32 * idx) + _180]
                        if mem[(32 * idx) + _180] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _196 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _196 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _209 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _209 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _209 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                else:
                    if idx >= 3:
                        revert with 0, 50
                    _190 = mem[(32 * idx) + _180]
                    if mem[(32 * idx) + _180] > 0x1f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f81f8:
                        revert with 0, 17
                    if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 10:
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 130 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 130 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 130 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 130 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 130 * _190 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 130 * _190 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _210 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _210 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _210 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                    else:
                        if idx >= 3:
                            revert with 0, 50
                        _207 = mem[(32 * idx) + _180]
                        if mem[(32 * idx) + _180] > 0x239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b450239e0d5b:
                            revert with 0, 17
                        if block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 <= 5:
                            if 115 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 115 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 115 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 115 * _207 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 115 * _207 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
                        else:
                            if idx >= 3:
                                revert with 0, 50
                            _219 = mem[(32 * idx) + _180]
                            if mem[(32 * idx) + _180] > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 and block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 > -1 / 105 * mem[(32 * idx) + _180] / 100:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 and sub_2fe9e114[address(msg.sender)][2][idx].field_0 > -1 / 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24:
                                revert with 0, 17
                            if 105 * mem[(32 * idx) + _180] / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 2) + 5
                            sub_2fe9e114[address(msg.sender)][5][idx].field_0 = 10^9 * 105 * _219 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0
                            if 0 > !(10^9 * 105 * _219 / 100 * block.timestamp - sub_2fe9e114[address(msg.sender)][4][idx].field_0 / 60 / 60 / 24 * sub_2fe9e114[address(msg.sender)][2][idx].field_0):
                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_2fe9e114[address(msg.sender)].field_0 = 0
    stor1 = 1
}



}
