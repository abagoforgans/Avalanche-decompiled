contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#  - sub_c99c4448(?)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of struct stor7;
array of struct stor8;
uint256 stor9;
address sub_5e39986fAddress;
mapping of struct claim;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function getClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if claim[arg1].field_512 > 4:
        revert with 'NH{q', 33
    if claim[arg1].field_512 >= 5:
        revert with 'NH{q', 33
    return claim[arg1].field_0, 
           claim[arg1].field_256,
           claim[arg1].field_512,
           claim[arg1].field_768,
           claim[arg1].field_1024,
           claim[arg1].field_1280,
           claim[arg1].field_1536,
           claim[arg1].field_1792,
           claim[arg1].field_1792
}

function sub_5e39986f(?) payable {
    return sub_5e39986fAddress
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function nextClaimId() payable {
    if stor9 > -2:
        revert with 'NH{q', 17
    return (stor9 + 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_af9486bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5e39986fAddress = address(arg1)
    emit 0x68756449: block.timestamp, sub_5e39986fAddress, sub_5e39986fAddress
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

function rejectClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if claim[arg1].field_1024 != msg.sender:
        revert with 0, msg.sender
    if claim[arg1].field_512 > 4:
        revert with 'NH{q', 33
    if claim[arg1].field_512:
        revert with 1224266673
    claim[arg1].field_512 = 3
    emit 0x6dac2c2c: block.timestamp, sub_5e39986fAddress, arg1
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

function sub_e8042ce5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, msg.sender
    if claim[arg1].field_512 > 4:
        revert with 'NH{q', 33
    if claim[arg1].field_512:
        revert with 1224266673
    claim[arg1].field_512 = 4
    emit 0xe9b9c96d: block.timestamp, sub_5e39986fAddress, arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, msg.sender
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor3[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1].field_1:
            if stor7[arg1].field_0:
                if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1:
                    idx = 0
                    while stor7[arg1].field_1 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1:
                    idx = 0
                    while stor7[arg1].field_1 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[arg1].field_1:
            if stor7[arg1].field_0:
                if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1:
                    idx = 0
                    while stor7[arg1].field_1 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1:
                    idx = 0
                    while stor7[arg1].field_1 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function sub_987b22be(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == address(arg6)
    require calldata.size - 196 >= 96
    if not address(arg1):
        revert with 3643679549
    if not address(arg2):
        revert with 3643679549
    if not arg4:
        revert with 2238053630
    if arg5 < block.timestamp:
        revert with 3556170202
    if ext_code.size(address(arg6)) <= 0:
        revert with 3029443544
    stor9++
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor9] = address(arg1)
    emit Transfer(0, address(arg1), stor9);
    if ext_code.size(address(arg1)) <= 0:
        require calldata.size - 196 >= 96
        if not bool(ceil32(ceil32(arg3.length)) + 545 <= test266151307()):
            revert with 'NH{q', 65
    else:
        require ext_code.size(address(arg1))
        call address(arg1).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor9, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg3.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg3[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        require calldata.size - 196 >= 96
        if not bool(ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545 <= test266151307()):
            revert with 'NH{q', 65
    require arg7 == arg7
    require arg8 == uint8(arg8)
    require arg9 == uint8(arg9)
    claim[stor9].field_0 = arg4
    claim[stor9].field_256 = 0
    claim[stor9].field_512 = 0
    claim[stor9].field_768 = 0
    claim[stor9].field_768 = arg5
    claim[stor9].field_1024 = address(arg2)
    claim[stor9].field_1280 = address(arg6)
    claim[stor9].field_1536 = arg7
    claim[stor9].field_1792 = uint8(arg8)
    claim[stor9].field_1800 = uint8(arg9)
    emit 0x2c26753f: sub_5e39986fAddress, msg.sender, tx.origin, 448, arg4, 0, 0, arg5, arg2 << 192, arg6 << 192, arg7, arg8 << 248, uint8(arg9), block.timestamp, arg3.length, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, stor9, address(arg1), address(arg2)
    return stor9
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

function baseURI() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function sub_c92aeec1(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == address(arg6)
    require calldata.size - 196 >= 96
    require arg10 <= test266151307()
    require arg10 + 35 < calldata.size
    require arg10.length <= test266151307()
    require arg10 + arg10.length + 36 <= calldata.size
    if not address(arg1):
        revert with 3643679549
    if not address(arg2):
        revert with 3643679549
    if not arg4:
        revert with 2238053630
    if arg5 < block.timestamp:
        revert with 3556170202
    if ext_code.size(address(arg6)) <= 0:
        revert with 3029443544
    stor9++
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor9] = address(arg1)
    emit Transfer(0, address(arg1), stor9);
    if ext_code.size(address(arg1)) <= 0:
        require calldata.size - 196 >= 96
        if not bool(ceil32(ceil32(arg3.length)) + 545 <= test266151307()):
            revert with 'NH{q', 65
        require arg7 == arg7
        require arg8 == uint8(arg8)
        require arg9 == uint8(arg9)
        claim[stor9].field_0 = arg4
        claim[stor9].field_256 = 0
        claim[stor9].field_512 = 0
        claim[stor9].field_768 = 0
        claim[stor9].field_768 = arg5
        claim[stor9].field_1024 = address(arg2)
        claim[stor9].field_1280 = address(arg6)
        claim[stor9].field_1536 = arg7
        claim[stor9].field_1792 = uint8(arg8)
        claim[stor9].field_1800 = uint8(arg9)
        mem[ceil32(ceil32(arg3.length)) + 609] = tx.origin
        mem[ceil32(ceil32(arg3.length)) + 641] = 448
        mem[ceil32(ceil32(arg3.length)) + 993] = arg3.length
        mem[ceil32(ceil32(arg3.length)) + 1025 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) > arg3.length:
            mem[ceil32(ceil32(arg3.length)) + arg3.length + 1025] = 0
        mem[ceil32(ceil32(arg3.length)) + 673] = arg4
        mem[ceil32(ceil32(arg3.length)) + 705] = 0
        mem[ceil32(ceil32(arg3.length)) + 737] = 0
        mem[ceil32(ceil32(arg3.length)) + 769] = arg5
        mem[ceil32(ceil32(arg3.length)) + 801] = uint64(arg2) << 96
        mem[ceil32(ceil32(arg3.length)) + 833] = uint64(arg6) << 96
        mem[ceil32(ceil32(arg3.length)) + 865] = arg7
        mem[ceil32(ceil32(arg3.length)) + 897] = uint8(arg8)
        mem[ceil32(ceil32(arg3.length)) + 929] = uint8(arg9)
        mem[ceil32(ceil32(arg3.length)) + 961] = block.timestamp
        emit 0x2c26753f: sub_5e39986fAddress, msg.sender, tx.origin, 448, arg4, 0, 0, arg5, arg2 << 192, arg6 << 192, arg7, arg8 << 248, uint8(arg9), block.timestamp, arg3.length, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, stor9, address(arg1), address(arg2)
        if not ownerOf[stor9]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor7[stor9].field_0:
            if stor7[stor9].field_0 == stor7[stor9].field_1 < 32:
                revert with 'NH{q', 34
            if arg10.length:
                stor7[stor9][].field_0 = Array(len=arg10.length, data=arg10[all])
            else:
                stor7[stor9].field_0 = 0
                idx = 0
                while stor7[stor9].field_1 + 31 / 32 > idx:
                    stor7[stor9][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor7[stor9].field_0 == stor7[stor9].field_1 < 32:
                revert with 'NH{q', 34
            if arg10.length:
                stor7[stor9][].field_0 = Array(len=arg10.length, data=arg10[all])
            else:
                stor7[stor9].field_0 = 0
                idx = 0
                while stor7[stor9].field_1 + 31 / 32 > idx:
                    stor7[stor9][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(arg10.length) + 577] = stor9
        return Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), 
               mem[ceil32(ceil32(arg3.length)) + arg10.length + 609 len -arg10.length + ceil32(arg10.length)]
    require ext_code.size(address(arg1))
    call address(arg1).onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args msg.sender, 0, stor9, 128, 0
    if not ext_call.success:
        if not return_data.size:
            if not arg3.length:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with arg3[all]
        if not return_data.size:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    require calldata.size - 196 >= 96
    if not bool(ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 545 <= test266151307()):
        revert with 'NH{q', 65
    require arg7 == arg7
    require arg8 == uint8(arg8)
    require arg9 == uint8(arg9)
    claim[stor9].field_0 = arg4
    claim[stor9].field_256 = 0
    claim[stor9].field_512 = 0
    claim[stor9].field_768 = 0
    claim[stor9].field_768 = arg5
    claim[stor9].field_1024 = address(arg2)
    claim[stor9].field_1280 = address(arg6)
    claim[stor9].field_1536 = arg7
    claim[stor9].field_1792 = uint8(arg8)
    claim[stor9].field_1800 = uint8(arg9)
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 609] = tx.origin
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 641] = 448
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 993] = arg3.length
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1025 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 1025] = 0
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 673] = arg4
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 705] = 0
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 737] = 0
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 769] = arg5
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 801] = uint64(arg2) << 96
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 833] = uint64(arg6) << 96
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 865] = arg7
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 897] = uint8(arg8)
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 929] = uint8(arg9)
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 961] = block.timestamp
    emit 0x2c26753f: sub_5e39986fAddress, msg.sender, tx.origin, 448, arg4, 0, 0, arg5, arg2 << 192, arg6 << 192, arg7, arg8 << 248, uint8(arg9), block.timestamp, arg3.length, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, stor9, address(arg1), address(arg2)
    if not ownerOf[stor9]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor7[stor9].field_0:
        if stor7[stor9].field_0 == stor7[stor9].field_1 < 32:
            revert with 'NH{q', 34
        if arg10.length:
            stor7[stor9][].field_0 = Array(len=arg10.length, data=arg10[all])
        else:
            stor7[stor9].field_0 = 0
            idx = 0
            while stor7[stor9].field_1 + 31 / 32 > idx:
                stor7[stor9][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[stor9].field_0 == stor7[stor9].field_1 < 32:
            revert with 'NH{q', 34
        if arg10.length:
            stor7[stor9][].field_0 = Array(len=arg10.length, data=arg10[all])
        else:
            stor7[stor9].field_0 = 0
            idx = 0
            while stor7[stor9].field_1 + 31 / 32 > idx:
                stor7[stor9][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + ceil32(arg10.length) + 577] = stor9
    return Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), 
           mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg10.length + 609 len -arg10.length + ceil32(arg10.length)]
}



}
