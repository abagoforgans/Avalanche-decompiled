contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address stor7;
array of uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 totalSupply;
array of uint256 tokenOfOwnerByIndex;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 50
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        if tokenOfOwnerByIndex[address(arg1)][idx] != arg3:
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 15
            idx = idx + 1
            continue 
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 0, 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        tokenOfOwnerByIndex[address(arg1)][idx] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 0, 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function buynft(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require block.timestamp >= stor11
    require block.timestamp < stor12
    if stor10 and arg1 > -1 / stor10:
        revert with 0, 17
    stor9 = stor10 * arg1
    mem[100] = msg.sender
    mem[132] = stor13
    mem[164] = stor10 * arg1
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor13, stor10 * arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 1
    while idx <= arg1:
        totalSupply++
        if totalSupply > !idx:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14 + idx]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = totalSupply + idx
        mem[32] = 2
        ownerOf[stor14 + idx] = msg.sender
        emit Transfer(0, msg.sender, totalSupply + idx);
        if totalSupply > !idx:
            revert with 0, 17
        if not bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                revert with 0, 34
            _352 = mem[64]
            mem[64] = mem[64] + ceil32(stor8.length.field_1 % 128) + 32
            mem[_352] = stor8.length.field_1 % 128
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor8.length):
                    if 31 >= uint255(stor8.length) * 0.5:
                        mem[_352 + 32] = 256 * Mask(248, 0, stor8.length.field_8)
                    else:
                        mem[_352 + 32] = uint256(stor8.field_0)
                        s = _352 + 32
                        t = sha3(8)
                        while _352 + (uint255(stor8.length) * 0.5) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
            else:
                if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                    revert with 0, 34
                if stor8.length.field_1 % 128:
                    if 31 >= stor8.length.field_1 % 128:
                        mem[_352 + 32] = 256 * Mask(248, 0, stor8.length.field_8)
                    else:
                        mem[_352 + 32] = uint256(stor8.field_0)
                        s = _352 + 32
                        t = sha3(8)
                        while _352 + stor8.length.field_1 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
            if not ownerOf[stor14 + idx]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[32] = 6
            if bool(stor6[stor14 + idx].field_0):
                if bool(stor6[stor14 + idx].field_0) == uint255(stor6[stor14 + idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(totalSupply + idx, 6)
                if not stor8.length.field_1 % 128:
                    stor6[stor14 + idx].field_0 = 0
                    s = sha3(sha3(totalSupply + idx, 6))
                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor6[stor14 + idx].field_0 = (2 * stor8.length.field_1 % 128) + 1
                    t = sha3(sha3(totalSupply + idx, 6))
                    s = _352 + 32
                    while _352 + stor8.length.field_1 % 128 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, stor8.length.field_1 % 128 + 31) >> 5)
                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor6[stor14 + idx].field_0) == stor6[stor14 + idx].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(totalSupply + idx, 6)
                if not stor8.length.field_1 % 128:
                    stor6[stor14 + idx].field_0 = 0
                    s = sha3(sha3(totalSupply + idx, 6))
                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor6[stor14 + idx].field_0 = (2 * stor8.length.field_1 % 128) + 1
                    t = sha3(sha3(totalSupply + idx, 6))
                    s = _352 + 32
                    while _352 + stor8.length.field_1 % 128 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, stor8.length.field_1 % 128 + 31) >> 5)
                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        else:
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor8.length) * 0.5) + 32
            mem[_351] = uint255(stor8.length) * 0.5
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor8.length):
                    if not ownerOf[stor14 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 6
                    if bool(stor6[stor14 + idx].field_0):
                        if bool(stor6[stor14 + idx].field_0) == uint255(stor6[stor14 + idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalSupply + idx, 6)
                        if not uint255(stor8.length) * 0.5:
                            stor6[stor14 + idx].field_0 = 0
                            s = sha3(sha3(totalSupply + idx, 6))
                            while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if 31 < uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                if not Mask(256, -1, stor8.length):
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(totalSupply + idx, 6))
                                    s = _351 + 32
                                    while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                bool(stor6[stor14 + idx].field_0) = 0
                                uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor6[stor14 + idx].field_0) == stor6[stor14 + idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalSupply + idx, 6)
                        if not uint255(stor8.length) * 0.5:
                            stor6[stor14 + idx].field_0 = 0
                            s = sha3(sha3(totalSupply + idx, 6))
                            while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if 31 < uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                if not Mask(256, -1, stor8.length):
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(totalSupply + idx, 6))
                                    s = _351 + 32
                                    while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                bool(stor6[stor14 + idx].field_0) = 0
                                uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if 31 >= uint255(stor8.length) * 0.5:
                        mem[_351 + 32] = 256 * Mask(248, 0, stor8.length.field_8)
                        if not ownerOf[stor14 + idx]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 6
                        if bool(stor6[stor14 + idx].field_0):
                            if bool(stor6[stor14 + idx].field_0) == uint255(stor6[stor14 + idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = Mask(248, 0, stor8.length.field_8)
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor6[stor14 + idx].field_0) == stor6[stor14 + idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = Mask(248, 0, stor8.length.field_8)
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        mem[_351 + 32] = uint256(stor8.field_0)
                        s = _351 + 32
                        t = sha3(8)
                        while _351 + (uint255(stor8.length) * 0.5) > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if not ownerOf[stor14 + idx]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 6
                        if bool(stor6[stor14 + idx].field_0):
                            if bool(stor6[stor14 + idx].field_0) == uint255(stor6[stor14 + idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor6[stor14 + idx].field_0) == stor6[stor14 + idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
            else:
                if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not stor8.length.field_1 % 128:
                    if not ownerOf[stor14 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 6
                    if bool(stor6[stor14 + idx].field_0):
                        if bool(stor6[stor14 + idx].field_0) == uint255(stor6[stor14 + idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalSupply + idx, 6)
                        if not uint255(stor8.length) * 0.5:
                            stor6[stor14 + idx].field_0 = 0
                            s = sha3(sha3(totalSupply + idx, 6))
                            while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if 31 < uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                if not Mask(256, -1, stor8.length):
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(totalSupply + idx, 6))
                                    s = _351 + 32
                                    while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                bool(stor6[stor14 + idx].field_0) = 0
                                uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor6[stor14 + idx].field_0) == stor6[stor14 + idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalSupply + idx, 6)
                        if not uint255(stor8.length) * 0.5:
                            stor6[stor14 + idx].field_0 = 0
                            s = sha3(sha3(totalSupply + idx, 6))
                            while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if 31 < uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                if not Mask(256, -1, stor8.length):
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(totalSupply + idx, 6))
                                    s = _351 + 32
                                    while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                bool(stor6[stor14 + idx].field_0) = 0
                                uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if 31 >= stor8.length.field_1 % 128:
                        mem[_351 + 32] = 256 * Mask(248, 0, stor8.length.field_8)
                        if not ownerOf[stor14 + idx]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 6
                        if bool(stor6[stor14 + idx].field_0):
                            if bool(stor6[stor14 + idx].field_0) == uint255(stor6[stor14 + idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = Mask(248, 0, stor8.length.field_8)
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor6[stor14 + idx].field_0) == stor6[stor14 + idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = Mask(248, 0, stor8.length.field_8)
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        mem[_351 + 32] = uint256(stor8.field_0)
                        s = _351 + 32
                        t = sha3(8)
                        while _351 + stor8.length.field_1 % 128 > s:
                            mem[s + 32] = stor1[t].field_0
                            s = s + 32
                            t = t + 1
                            continue 
                        if not ownerOf[stor14 + idx]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 6
                        if bool(stor6[stor14 + idx].field_0):
                            if bool(stor6[stor14 + idx].field_0) == uint255(stor6[stor14 + idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + ((uint255(stor6[stor14 + idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor6[stor14 + idx].field_0) == stor6[stor14 + idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalSupply + idx, 6)
                            if not uint255(stor8.length) * 0.5:
                                stor6[stor14 + idx].field_0 = 0
                                s = sha3(sha3(totalSupply + idx, 6))
                                while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 < uint255(stor8.length) * 0.5:
                                    stor6[stor14 + idx].field_0 = Mask(254, 1, stor8.length) + 1
                                    if not Mask(256, -1, stor8.length):
                                        s = sha3(sha3(totalSupply + idx, 6))
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(totalSupply + idx, 6))
                                        s = _351 + 32
                                        while _351 + (uint255(stor8.length) * 0.5) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(totalSupply + idx, 6)) + (Mask(251, 0, (uint255(stor8.length) * 0.5) + 31) >> 5)
                                        while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    bool(stor6[stor14 + idx].field_0) = 0
                                    uint255(stor6[stor14 + idx].field_1) = Mask(254, 0, stor8.length.field_1)
                                    Mask(248, 0, stor6[stor14 + idx].field_8) = mem[_351 + 32 len 31]
                                    s = sha3(sha3(totalSupply + idx, 6))
                                    while sha3(sha3(totalSupply + idx, 6)) + (stor6[stor14 + idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
        mem[32] = 15
        if totalSupply > !idx:
            revert with 0, 17
        tokenOfOwnerByIndex[msg.sender]++
        mem[0] = sha3(msg.sender, 15)
        tokenOfOwnerByIndex[msg.sender][tokenOfOwnerByIndex[msg.sender]] = totalSupply + idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
