contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor2;
mapping of address stor3;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
uint256 sub_463bba22;
address stor8;
uint256 stor9;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_463bba22:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_463bba22(?) payable {
    return sub_463bba22
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
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

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg1]:
        return stor3[arg1]
    return stor8
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.sender == owner
    if sub_463bba22:
        revert with 0, 'You can only mint once!'
    require arg1 > 0
    sub_463bba22 = arg1
    balanceOf[stor0] = arg1
    stor8 = msg.sender
    if arg1 < 1:
        revert with 'NH{q', 17
    emit ConsecutiveTransfer((arg1 - 1), 0, 0, owner);
    stor9 = sub_463bba22
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg2]:
        if arg1 == stor3[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
        if stor3[arg2] != msg.sender:
            if not stor6[stor3[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
    else:
        if arg1 == stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
        if stor8 != msg.sender:
            if not stor6[stor8][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if arg2 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg2]:
        emit Approval(stor3[arg2], arg1, arg2);
    else:
        emit Approval(stor8, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= sub_463bba22:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if stor3[arg3]:
        if stor3[arg3] != msg.sender:
            if arg3 >= sub_463bba22:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    else:
        if stor8 != msg.sender:
            if arg3 >= sub_463bba22:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor8][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if arg3 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3]:
        if stor3[arg3] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    else:
        if stor8 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if arg3 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3]:
        emit Approval(stor3[arg3], 0, arg3);
    else:
        emit Approval(stor8, 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= sub_463bba22:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if stor3[arg3]:
        if stor3[arg3] != msg.sender:
            if arg3 >= sub_463bba22:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    else:
        if stor8 != msg.sender:
            if arg3 >= sub_463bba22:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor8][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if arg3 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3]:
        if stor3[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
    else:
        if stor8 != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if arg3 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3]:
        emit Approval(stor3[arg3], 0, arg3);
    else:
        emit Approval(stor8, 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if arg3 >= sub_463bba22:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if stor3[arg3]:
        if stor3[arg3] != msg.sender:
            if arg3 >= sub_463bba22:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor3[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    else:
        if stor8 != msg.sender:
            if arg3 >= sub_463bba22:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor6[stor8][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if arg3 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3]:
        if stor3[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
    else:
        if stor8 != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if arg3 >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3]:
        emit Approval(stor3[arg3], 0, arg3);
    else:
        emit Approval(stor8, 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function sub_5629b240(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == uint16(arg3)
    if uint16(arg3) >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3 << 240]:
        require msg.sender == stor3[arg3 << 240]
    else:
        require msg.sender == stor8
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg3) >= sub_463bba22:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if stor3[arg3 << 240]:
        if stor3[arg3 << 240] != msg.sender:
            if uint16(arg3) >= sub_463bba22:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3 << 240] != msg.sender:
                if not stor6[stor3[arg3 << 240]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    else:
        if stor8 != msg.sender:
            if uint16(arg3) >= sub_463bba22:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3 << 240] != msg.sender:
                if not stor6[stor8][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if uint16(arg3) >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3 << 240]:
        if stor3[arg3 << 240] != address(arg1):
            revert with 0, 'ERC721: transfer of token that is not own'
    else:
        if stor8 != address(arg1):
            revert with 0, 'ERC721: transfer of token that is not own'
    if not address(arg2):
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3 << 240] = 0
    if uint16(arg3) >= sub_463bba22:
        revert with 0, 'Tokens haven't been minted yet'
    if stor3[arg3 << 240]:
        emit Approval(stor3[arg3 << 240], 0, uint16(arg3));
    else:
        emit Approval(stor8, 0, uint16(arg3));
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    stor3[arg3 << 240] = address(arg2)
    emit Transfer(address(arg1), address(arg2), uint16(arg3));
    if ext_code.size(address(arg2)) > 0:
        require ext_code.size(address(arg2))
        call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3 << 240, 128, 0
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

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint16(arg1) >= sub_463bba22:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = 41
    mem[128 len 41] = 0xfe68747470733a2f2f6d696e74737461746563727970746f2e636f6d2f6170692f6262622f63617264
    if not uint16(arg1):
        mem[288 len 64] = 0xfe68747470733a2f2f6d696e74737461746563727970746f2e636f6d2f6170692f6262622f63617264, mem[169 len 23]
        mem[329] = '0'
        mem[330] = 32
        mem[362] = mem[256]
        mem[394 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
        if ceil32(mem[256]) > mem[256]:
            mem[mem[256] + 394] = 0
        return Array(len=mem[256], data=mem[394 len ceil32(mem[256])])
    s = 0
    idx = uint16(arg1)
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s
        idx = uint16(arg1)
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[192]:
                revert with 'NH{q', 50
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _142 = mem[64]
        _146 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _236 = mem[192]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if ceil32(_236) <= _236:
                _304 = mem[64]
                mem[64] = _142 + _146 + _236 + 32
                mem[_142 + _146 + _236 + 32] = 32
                _320 = mem[_304]
                mem[_142 + _146 + _236 + 64] = mem[_304]
                mem[_142 + _146 + _236 + 96 len ceil32(_320)] = mem[_304 + 32 len ceil32(_320)]
                if ceil32(_320) > _320:
                    mem[_142 + _146 + _236 + _320 + 96] = 0
                return 32, mem[_142 + _146 + _236 + 64 len ceil32(_320) + 32]
            mem[_142 + _146 + _236 + 32] = 0
            _308 = mem[64]
            mem[64] = _142 + _146 + _236 + 32
            mem[_142 + _146 + _236 + 32] = 32
            _324 = mem[_308]
            mem[_142 + _146 + _236 + 64] = mem[_308]
            mem[_142 + _146 + _236 + 96 len ceil32(_324)] = mem[_308 + 32 len ceil32(_324)]
            if ceil32(_324) > _324:
                mem[_142 + _146 + _236 + _324 + 96] = 0
            return 32, mem[_142 + _146 + _236 + 64 len ceil32(_324) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _238 = mem[192]
        mem[_142 + _146 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if ceil32(_238) <= _238:
            _305 = mem[64]
            mem[64] = _142 + _146 + _238 + 32
            mem[_142 + _146 + _238 + 32] = 32
            _321 = mem[_305]
            mem[_142 + _146 + _238 + 64] = mem[_305]
            mem[_142 + _146 + _238 + 96 len ceil32(_321)] = mem[_305 + 32 len ceil32(_321)]
            if ceil32(_321) > _321:
                mem[_142 + _146 + _238 + _321 + 96] = 0
            return 32, mem[_142 + _146 + _238 + 64 len ceil32(_321) + 32]
        mem[_142 + _146 + _238 + 32] = 0
        _309 = mem[64]
        mem[64] = _142 + _146 + _238 + 32
        mem[_142 + _146 + _238 + 32] = 32
        _325 = mem[_309]
        mem[_142 + _146 + _238 + 64] = mem[_309]
        mem[_142 + _146 + _238 + 96 len ceil32(_325)] = mem[_309 + 32 len ceil32(_325)]
        if ceil32(_325) > _325:
            mem[_142 + _146 + _238 + _325 + 96] = 0
        return 32, mem[_142 + _146 + _238 + 64 len ceil32(_325) + 32]
    mem[224 len s] = call.data[calldata.size len s]
    t = s
    idx = uint16(arg1)
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[192]:
            revert with 'NH{q', 50
        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _143 = mem[64]
    _147 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _237 = mem[192]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if ceil32(_237) <= _237:
            _306 = mem[64]
            mem[64] = _143 + _147 + _237 + 32
            mem[_143 + _147 + _237 + 32] = 32
            _322 = mem[_306]
            mem[_143 + _147 + _237 + 64] = mem[_306]
            mem[_143 + _147 + _237 + 96 len ceil32(_322)] = mem[_306 + 32 len ceil32(_322)]
            if ceil32(_322) > _322:
                mem[_143 + _147 + _237 + _322 + 96] = 0
            return 32, mem[_143 + _147 + _237 + 64 len ceil32(_322) + 32]
        mem[_143 + _147 + _237 + 32] = 0
        _310 = mem[64]
        mem[64] = _143 + _147 + _237 + 32
        mem[_143 + _147 + _237 + 32] = 32
        _326 = mem[_310]
        mem[_143 + _147 + _237 + 64] = mem[_310]
        mem[_143 + _147 + _237 + 96 len ceil32(_326)] = mem[_310 + 32 len ceil32(_326)]
        if ceil32(_326) > _326:
            mem[_143 + _147 + _237 + _326 + 96] = 0
        return 32, mem[_143 + _147 + _237 + 64 len ceil32(_326) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _239 = mem[192]
    mem[_143 + _147 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
    if ceil32(_239) <= _239:
        _307 = mem[64]
        mem[64] = _143 + _147 + _239 + 32
        mem[_143 + _147 + _239 + 32] = 32
        _323 = mem[_307]
        mem[_143 + _147 + _239 + 64] = mem[_307]
        mem[_143 + _147 + _239 + 96 len ceil32(_323)] = mem[_307 + 32 len ceil32(_323)]
        if ceil32(_323) > _323:
            mem[_143 + _147 + _239 + _323 + 96] = 0
        return 32, mem[_143 + _147 + _239 + 64 len ceil32(_323) + 32]
    mem[_143 + _147 + _239 + 32] = 0
    _311 = mem[64]
    mem[64] = _143 + _147 + _239 + 32
    mem[_143 + _147 + _239 + 32] = 32
    _327 = mem[_311]
    mem[_143 + _147 + _239 + 64] = mem[_311]
    mem[_143 + _147 + _239 + 96 len ceil32(_327)] = mem[_311 + 32 len ceil32(_327)]
    if ceil32(_327) > _327:
        mem[_143 + _147 + _239 + _327 + 96] = 0
    return 32, mem[_143 + _147 + _239 + 64 len ceil32(_327) + 32]
}



}
