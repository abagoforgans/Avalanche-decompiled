contract main {




// =====================  Runtime code  =====================


#
#  - sub_2cca4ba7(?)
#  - sub_6197caa1(?)
#  - tokenURI(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 stor8;
uint256 stor9;
address whitelistAddress;
uint256 totalClaimed;
mapping of uint8 stor12;
mapping of struct stor13;
mapping of struct stor14;
mapping of struct stor15;
mapping of struct stor16;
uint8 sub_d83c877d;
mapping of struct stor99;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function whitelist() payable {
    return whitelistAddress
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function totalClaimed() payable {
    return totalClaimed
}

function sub_d83c877d(?) payable {
    return bool(sub_d83c877d)
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
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
        call arg2.0x150b7a02 with:
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
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
        call arg2.0x150b7a02 with:
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

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function sub_50361f60(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor13[arg1].field_0):
            if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor13[arg1].field_1):
                if 31 < uint255(stor13[arg1].field_1):
                    mem[128] = uint256(stor13[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor13[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        else:
            if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor13[arg1].field_1 % 128:
                if 31 < stor13[arg1].field_1 % 128:
                    mem[128] = uint256(stor13[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        mem[ceil32(uint255(stor13[arg1].field_1)) + 192 len ceil32(uint255(stor13[arg1].field_1))] = mem[128 len ceil32(uint255(stor13[arg1].field_1))]
        if ceil32(uint255(stor13[arg1].field_1)) > uint255(stor13[arg1].field_1):
            mem[ceil32(uint255(stor13[arg1].field_1)) + uint255(stor13[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1))], mem[(2 * ceil32(uint255(stor13[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor13[arg1].field_1))]), 
    if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor13[arg1].field_1):
            if 31 < uint255(stor13[arg1].field_1):
                mem[128] = uint256(stor13[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor13[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    else:
        if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor13[arg1].field_1 % 128:
            if 31 < stor13[arg1].field_1 % 128:
                mem[128] = uint256(stor13[arg1].field_0)
                idx = 128
                s = 0
                while stor13[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor13[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    mem[ceil32(stor13[arg1].field_1 % 128) + 192 len ceil32(stor13[arg1].field_1 % 128)] = mem[128 len ceil32(stor13[arg1].field_1 % 128)]
    if ceil32(stor13[arg1].field_1 % 128) > stor13[arg1].field_1 % 128:
        mem[ceil32(stor13[arg1].field_1 % 128) + stor13[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)], mem[(2 * ceil32(stor13[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor13[arg1].field_1 % 128)]), 
}

function sub_936a7ba8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if bool(stor14[arg1[all]].field_0):
        if bool(stor14[arg1[all]].field_0) == uint255(stor14[arg1[all]].field_1) < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(stor14[arg1[all]].field_1)) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = uint255(stor14[arg1[all]].field_1)
        if not bool(stor14[arg1[all]].field_0):
            if bool(stor14[arg1[all]].field_0) == stor14[arg1[all]].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor14[arg1[all]].field_1 % 128:
                if 31 < stor14[arg1[all]].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor14[arg1[all]].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor14[arg1[all]].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor14[arg1[all]][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor14[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor14[arg1[all]].field_8)
            mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor14[arg1[all]].field_1)) + 193 len ceil32(uint255(stor14[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))]
            if ceil32(uint255(stor14[arg1[all]].field_1)) > uint255(stor14[arg1[all]].field_1):
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor14[arg1[all]].field_1)) + uint255(stor14[arg1[all]].field_1) + 193] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor14[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor14[arg1[all]].field_1))) + 193 len 2 * ceil32(uint255(stor14[arg1[all]].field_1))]), 
        if bool(stor14[arg1[all]].field_0) == uint255(stor14[arg1[all]].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor14[arg1[all]].field_1):
            mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor14[arg1[all]].field_1)) + 193 len ceil32(uint255(stor14[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))]
            if ceil32(uint255(stor14[arg1[all]].field_1)) > uint255(stor14[arg1[all]].field_1):
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor14[arg1[all]].field_1)) + uint255(stor14[arg1[all]].field_1) + 193] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor14[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor14[arg1[all]].field_1))) + 193 len 2 * ceil32(uint255(stor14[arg1[all]].field_1))]), 
        if 31 >= uint255(stor14[arg1[all]].field_1):
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor14[arg1[all]].field_8)
            mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor14[arg1[all]].field_1)) + 193 len ceil32(uint255(stor14[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))]
            if ceil32(uint255(stor14[arg1[all]].field_1)) > uint255(stor14[arg1[all]].field_1):
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor14[arg1[all]].field_1)) + uint255(stor14[arg1[all]].field_1) + 193] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor14[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor14[arg1[all]].field_1))) + 193 len 2 * ceil32(uint255(stor14[arg1[all]].field_1))]), 
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor14[arg1[all]].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + uint255(stor14[arg1[all]].field_1) + 97 > idx:
            mem[idx + 32] = uint256(stor14[arg1[all]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor14[arg1[all]].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor14[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor14[arg1[all]].field_1))]
        if ceil32(uint255(stor14[arg1[all]].field_1)) > uint255(stor14[arg1[all]].field_1):
            mem[mem[64] + uint255(stor14[arg1[all]].field_1) + 64] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor14[arg1[all]].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor14[arg1[all]].field_1))]), 
    if bool(stor14[arg1[all]].field_0) == stor14[arg1[all]].field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor14[arg1[all]].field_1 % 128) + 129
    mem[ceil32(ceil32(arg1.length)) + 97] = stor14[arg1[all]].field_1 % 128
    if not bool(stor14[arg1[all]].field_0):
        if bool(stor14[arg1[all]].field_0) == stor14[arg1[all]].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor14[arg1[all]].field_1 % 128:
            if 31 < stor14[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor14[arg1[all]].field_0)
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor14[arg1[all]].field_1 % 128 + 97 > idx:
                    mem[idx + 32] = uint256(stor14[arg1[all]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor14[arg1[all]].field_8)
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor14[arg1[all]].field_1 % 128) + 193 len ceil32(stor14[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)]
        if ceil32(stor14[arg1[all]].field_1 % 128) > stor14[arg1[all]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor14[arg1[all]].field_1 % 128) + stor14[arg1[all]].field_1 % 128 + 193] = 0
        return Array(len=stor14[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor14[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor14[arg1[all]].field_1 % 128)]), 
    if bool(stor14[arg1[all]].field_0) == uint255(stor14[arg1[all]].field_1) < 32:
        revert with 'NH{q', 34
    if not uint255(stor14[arg1[all]].field_1):
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor14[arg1[all]].field_1 % 128) + 193 len ceil32(stor14[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)]
        if ceil32(stor14[arg1[all]].field_1 % 128) > stor14[arg1[all]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor14[arg1[all]].field_1 % 128) + stor14[arg1[all]].field_1 % 128 + 193] = 0
        return Array(len=stor14[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor14[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor14[arg1[all]].field_1 % 128)]), 
    if 31 >= uint255(stor14[arg1[all]].field_1):
        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor14[arg1[all]].field_8)
        mem[ceil32(ceil32(arg1.length)) + ceil32(stor14[arg1[all]].field_1 % 128) + 193 len ceil32(stor14[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)]
        if ceil32(stor14[arg1[all]].field_1 % 128) > stor14[arg1[all]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor14[arg1[all]].field_1 % 128) + stor14[arg1[all]].field_1 % 128 + 193] = 0
        return Array(len=stor14[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor14[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor14[arg1[all]].field_1 % 128)]), 
    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor14[arg1[all]].field_0)
    idx = ceil32(ceil32(arg1.length)) + 129
    s = 0
    while ceil32(ceil32(arg1.length)) + uint255(stor14[arg1[all]].field_1) + 97 > idx:
        mem[idx + 32] = uint256(stor14[arg1[all]][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _81 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor14[arg1[all]].field_1 % 128
    mem[mem[64] + 64 len ceil32(stor14[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor14[arg1[all]].field_1 % 128)]
    if ceil32(stor14[arg1[all]].field_1 % 128) <= stor14[arg1[all]].field_1 % 128:
        return Array(len=stor14[arg1[all]].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor14[arg1[all]].field_1 % 128)])
    mem[mem[64] + stor14[arg1[all]].field_1 % 128 + 64] = 0
    return memory
      from mem[64]
       len _81 + ceil32(stor14[arg1[all]].field_1 % 128) + -mem[64] + 64
}

function sub_6fd4eaab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if bool(stor15[arg1[all]].field_0):
        if bool(stor15[arg1[all]].field_0) == uint255(stor15[arg1[all]].field_1) < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = uint255(stor15[arg1[all]].field_1)
        if bool(stor15[arg1[all]].field_0):
            if bool(stor15[arg1[all]].field_0) == uint255(stor15[arg1[all]].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor15[arg1[all]].field_1):
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + 193 len ceil32(uint255(stor15[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))]
                if ceil32(uint255(stor15[arg1[all]].field_1)) > uint255(stor15[arg1[all]].field_1):
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + uint255(stor15[arg1[all]].field_1) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor15[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor15[arg1[all]].field_1))) + 193 len 2 * ceil32(uint255(stor15[arg1[all]].field_1))]), 
            if 31 >= uint255(stor15[arg1[all]].field_1):
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor15[arg1[all]].field_8)
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + 193 len ceil32(uint255(stor15[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))]
                if ceil32(uint255(stor15[arg1[all]].field_1)) > uint255(stor15[arg1[all]].field_1):
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + uint255(stor15[arg1[all]].field_1) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor15[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor15[arg1[all]].field_1))) + 193 len 2 * ceil32(uint255(stor15[arg1[all]].field_1))]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor15[arg1[all]].field_0)
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + uint255(stor15[arg1[all]].field_1) + 97 > idx:
                mem[idx + 32] = uint256(stor15[arg1[all]][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor15[arg1[all]].field_0) == stor15[arg1[all]].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor15[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + 193 len ceil32(uint255(stor15[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))]
                if ceil32(uint255(stor15[arg1[all]].field_1)) > uint255(stor15[arg1[all]].field_1):
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + uint255(stor15[arg1[all]].field_1) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor15[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor15[arg1[all]].field_1))) + 193 len 2 * ceil32(uint255(stor15[arg1[all]].field_1))]), 
            if 31 >= stor15[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor15[arg1[all]].field_8)
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + 193 len ceil32(uint255(stor15[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))]
                if ceil32(uint255(stor15[arg1[all]].field_1)) > uint255(stor15[arg1[all]].field_1):
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor15[arg1[all]].field_1)) + uint255(stor15[arg1[all]].field_1) + 193] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor15[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor15[arg1[all]].field_1))) + 193 len 2 * ceil32(uint255(stor15[arg1[all]].field_1))]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor15[arg1[all]].field_0)
            idx = ceil32(ceil32(arg1.length)) + 129
            s = 0
            while ceil32(ceil32(arg1.length)) + stor15[arg1[all]].field_1 % 128 + 97 > idx:
                mem[idx + 32] = uint256(stor15[arg1[all]][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor15[arg1[all]].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor15[arg1[all]].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor15[arg1[all]].field_1))]
        if ceil32(uint255(stor15[arg1[all]].field_1)) > uint255(stor15[arg1[all]].field_1):
            mem[mem[64] + uint255(stor15[arg1[all]].field_1) + 64] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15[arg1[all]].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor15[arg1[all]].field_1))]), 
    if bool(stor15[arg1[all]].field_0) == stor15[arg1[all]].field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + 129
    mem[ceil32(ceil32(arg1.length)) + 97] = stor15[arg1[all]].field_1 % 128
    if bool(stor15[arg1[all]].field_0):
        if bool(stor15[arg1[all]].field_0) == uint255(stor15[arg1[all]].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor15[arg1[all]].field_1):
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + 193 len ceil32(stor15[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)]
            if ceil32(stor15[arg1[all]].field_1 % 128) > stor15[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + stor15[arg1[all]].field_1 % 128 + 193] = 0
            return Array(len=stor15[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor15[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor15[arg1[all]].field_1 % 128)]), 
        if 31 >= uint255(stor15[arg1[all]].field_1):
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor15[arg1[all]].field_8)
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + 193 len ceil32(stor15[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)]
            if ceil32(stor15[arg1[all]].field_1 % 128) > stor15[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + stor15[arg1[all]].field_1 % 128 + 193] = 0
            return Array(len=stor15[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor15[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor15[arg1[all]].field_1 % 128)]), 
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor15[arg1[all]].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + uint255(stor15[arg1[all]].field_1) + 97 > idx:
            mem[idx + 32] = uint256(stor15[arg1[all]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if bool(stor15[arg1[all]].field_0) == stor15[arg1[all]].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor15[arg1[all]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + 193 len ceil32(stor15[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)]
            if ceil32(stor15[arg1[all]].field_1 % 128) > stor15[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + stor15[arg1[all]].field_1 % 128 + 193] = 0
            return Array(len=stor15[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor15[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor15[arg1[all]].field_1 % 128)]), 
        if 31 >= stor15[arg1[all]].field_1 % 128:
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor15[arg1[all]].field_8)
            mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + 193 len ceil32(stor15[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)]
            if ceil32(stor15[arg1[all]].field_1 % 128) > stor15[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor15[arg1[all]].field_1 % 128) + stor15[arg1[all]].field_1 % 128 + 193] = 0
            return Array(len=stor15[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor15[arg1[all]].field_1 % 128)) + 193 len 2 * ceil32(stor15[arg1[all]].field_1 % 128)]), 
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor15[arg1[all]].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + stor15[arg1[all]].field_1 % 128 + 97 > idx:
            mem[idx + 32] = uint256(stor15[arg1[all]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor15[arg1[all]].field_1 % 128
    mem[mem[64] + 64 len ceil32(stor15[arg1[all]].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor15[arg1[all]].field_1 % 128)]
    if ceil32(stor15[arg1[all]].field_1 % 128) > stor15[arg1[all]].field_1 % 128:
        mem[mem[64] + stor15[arg1[all]].field_1 % 128 + 64] = 0
    return Array(len=stor15[arg1[all]].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor15[arg1[all]].field_1 % 128)])
}

function sub_24d83d03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    mem[100] = msg.sender
    staticcall whitelistAddress.0x9cce37c6 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'User not whitelisted'
    if bool(sub_d83c877d) != 1:
        revert with 0, 'Gifs hasn't been added'
    if stor12[address(msg.sender)]:
        revert with 0, 'User has already claimed the NFT'
    stor9++
    mem[ceil32(return_data.size) + 96] = 0
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
        stor12[address(msg.sender)] = 1
        if sha3(stor9, block.timestamp) % 10 >= 5:
            if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[ceil32(return_data.size) + 256 len uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[ceil32(return_data.size) + 256 len uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[ceil32(return_data.size) + 256 len stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[ceil32(return_data.size) + 256 len stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
        else:
            if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[ceil32(return_data.size) + 256 len uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[ceil32(return_data.size) + 256 len uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[ceil32(return_data.size) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[ceil32(return_data.size) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[ceil32(return_data.size) + 256 len stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[ceil32(return_data.size) + 256 len stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
    else:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = stor9
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        call address(arg1).0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, 0, stor9, 128, 0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        stor12[address(msg.sender)] = 1
        if sha3(stor9, block.timestamp) % 10 >= 5:
            if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[(2 * ceil32(return_data.size)) + 256 len uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[(2 * ceil32(return_data.size)) + 256 len uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + uint255(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[(2 * ceil32(return_data.size)) + 256 len stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[(2 * ceil32(return_data.size)) + 256 len stor13[0.5 / ('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
        else:
            if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[(2 * ceil32(return_data.size)) + 256 len uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        uint256(stor16[stor9][].field_0) = Array(len=uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1), data=mem[(2 * ceil32(return_data.size)) + 256 len uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1)])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0):
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                        if 31 >= uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1):
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + uint255(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1) + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0) == stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        if 31 >= stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * Mask(248, 0, stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_8)
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_0)
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128 + 224 > idx:
                                mem[idx + 32] = uint256(stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if bool(stor16[stor9].field_0):
                    if bool(stor16[stor9].field_0) == uint255(stor16[stor9].field_1) < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[(2 * ceil32(return_data.size)) + 256 len stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while uint255(stor16[stor9].field_1) + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor16[stor9].field_0) == stor16[stor9].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128:
                        uint256(stor16[stor9][].field_0) = Array(len=stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128, data=mem[(2 * ceil32(return_data.size)) + 256 len stor13[('map', ('stor', ('name', 'stor9', 9)), 'timestamp') % 10].field_1 % 128])
                    else:
                        uint256(stor16[stor9].field_0) = 0
                        idx = 0
                        while stor16[stor9].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor16[stor9][idx].field_0) = 0
                            idx = idx + 1
                            continue 
    if totalClaimed > -2:
        revert with 'NH{q', 17
    totalClaimed++
    emit Claimed(block.timestamp, address(arg1), stor9);
    stor8 = 1
    return stor9
}

function getName(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 16
    if bool(stor16[arg1].field_0):
        if bool(stor16[arg1].field_0) == uint255(stor16[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor16[arg1].field_0):
            mem[96] = Mask(248, 8, uint256(stor16[arg1].field_0))
            mem[uint255(stor16[arg1].field_1) + 96] = 14
            _5 = sha3(Mask(248, 8, uint256(stor16[arg1].field_0)), mem[128 len uint255(stor16[arg1].field_1)])
            if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0):
                if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1) < 32:
                    revert with 'NH{q', 34
                mem[64] = ceil32(uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128
                mem[96] = uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)
                if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0):
                    if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1) < 32:
                        revert with 'NH{q', 34
                    if not uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                        _26 = ceil32(uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128
                        mem[ceil32(uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128] = 32
                        mem[mem[64] + 32] = uint255(stor[_5].field_1)
                        mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))] = mem[128 len ceil32(uint255(stor[_5].field_1))]
                        if ceil32(uint255(stor[_5].field_1)) > uint255(stor[_5].field_1):
                            mem[_26 + uint255(stor[_5].field_1) + 64] = 0
                        return memory
                          from mem[64]
                           len _26 + ceil32(uint255(stor[_5].field_1)) + -mem[64] + 64
                    if 31 >= uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                        mem[128] = 256 * Mask(248, 0, stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
                        _39 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = uint255(stor[_5].field_1)
                        mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))] = mem[128 len ceil32(uint255(stor[_5].field_1))]
                        if ceil32(uint255(stor[_5].field_1)) <= uint255(stor[_5].field_1):
                            return Array(len=2 * Mask(256, -1, uint255(stor[_5].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))])
                        mem[mem[64] + uint255(stor[_5].field_1) + 64] = 0
                        return memory
                          from mem[64]
                           len _39 + ceil32(uint255(stor[_5].field_1)) + -mem[64] + 64
                    mem[128] = uint256(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor[_5].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_5) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _445 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_5].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))] = mem[128 len ceil32(uint255(stor[_5].field_1))]
                    if ceil32(uint255(stor[_5].field_1)) <= uint255(stor[_5].field_1):
                        return Array(len=2 * Mask(256, -1, uint255(stor[_5].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))])
                    mem[mem[64] + uint255(stor[_5].field_1) + 64] = 0
                    return memory
                      from mem[64]
                       len _445 + ceil32(uint255(stor[_5].field_1)) + -mem[64] + 64
                if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                    _30 = ceil32(uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128
                    mem[ceil32(uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128] = 32
                    mem[mem[64] + 32] = uint255(stor[_5].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))] = mem[128 len ceil32(uint255(stor[_5].field_1))]
                    if ceil32(uint255(stor[_5].field_1)) > uint255(stor[_5].field_1):
                        mem[_30 + uint255(stor[_5].field_1) + 64] = 0
                    return memory
                      from mem[64]
                       len _30 + ceil32(uint255(stor[_5].field_1)) + -mem[64] + 64
                if 31 >= stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
                    _53 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_5].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))] = mem[128 len ceil32(uint255(stor[_5].field_1))]
                    if ceil32(uint255(stor[_5].field_1)) <= uint255(stor[_5].field_1):
                        return Array(len=2 * Mask(256, -1, uint255(stor[_5].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))])
                    mem[mem[64] + uint255(stor[_5].field_1) + 64] = 0
                    return memory
                      from mem[64]
                       len _53 + ceil32(uint255(stor[_5].field_1)) + -mem[64] + 64
                mem[128] = uint256(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
                idx = 128
                s = 0
                while stor[_5].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_5) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                _446 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor[_5].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))] = mem[128 len ceil32(uint255(stor[_5].field_1))]
                if ceil32(uint255(stor[_5].field_1)) <= uint255(stor[_5].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor[_5].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_5].field_1))])
                mem[mem[64] + uint255(stor[_5].field_1) + 64] = 0
                return memory
                  from mem[64]
                   len _446 + ceil32(uint255(stor[_5].field_1)) + -mem[64] + 64
            if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128
            mem[96] = stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128
            if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0):
                if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                    _32 = ceil32(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128
                    mem[ceil32(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128] = 32
                    mem[mem[64] + 32] = stor[_5].field_1 % 128
                    mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)] = mem[128 len ceil32(stor[_5].field_1 % 128)]
                    if ceil32(stor[_5].field_1 % 128) > stor[_5].field_1 % 128:
                        mem[_32 + stor[_5].field_1 % 128 + 64] = 0
                    return memory
                      from mem[64]
                       len _32 + ceil32(stor[_5].field_1 % 128) + -mem[64] + 64
                if 31 >= uint255(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                    mem[128] = 256 * Mask(248, 0, stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
                    _54 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor[_5].field_1 % 128
                    mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)] = mem[128 len ceil32(stor[_5].field_1 % 128)]
                    if ceil32(stor[_5].field_1 % 128) <= stor[_5].field_1 % 128:
                        return Array(len=stor[_5].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)])
                    mem[mem[64] + stor[_5].field_1 % 128 + 64] = 0
                    return memory
                      from mem[64]
                       len _54 + ceil32(stor[_5].field_1 % 128) + -mem[64] + 64
                mem[128] = uint256(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
                idx = 128
                s = 0
                while uint255(stor[_5].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_5) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                _447 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_5].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)] = mem[128 len ceil32(stor[_5].field_1 % 128)]
                if ceil32(stor[_5].field_1 % 128) <= stor[_5].field_1 % 128:
                    return Array(len=stor[_5].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)])
                mem[mem[64] + stor[_5].field_1 % 128 + 64] = 0
                return memory
                  from mem[64]
                   len _447 + ceil32(stor[_5].field_1 % 128) + -mem[64] + 64
            if bool(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                _40 = ceil32(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128
                mem[ceil32(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128] = 32
                mem[mem[64] + 32] = stor[_5].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)] = mem[128 len ceil32(stor[_5].field_1 % 128)]
                if ceil32(stor[_5].field_1 % 128) > stor[_5].field_1 % 128:
                    mem[_40 + stor[_5].field_1 % 128 + 64] = 0
                return memory
                  from mem[64]
                   len _40 + ceil32(stor[_5].field_1 % 128) + -mem[64] + 64
            if 31 >= stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
                _68 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_5].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)] = mem[128 len ceil32(stor[_5].field_1 % 128)]
                if ceil32(stor[_5].field_1 % 128) <= stor[_5].field_1 % 128:
                    return Array(len=stor[_5].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)])
                mem[mem[64] + stor[_5].field_1 % 128 + 64] = 0
                return memory
                  from mem[64]
                   len _68 + ceil32(stor[_5].field_1 % 128) + -mem[64] + 64
            mem[128] = uint256(stor[mem[128 len uint255(stor16[arg1].field_1)]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
            idx = 128
            s = 0
            while stor[_5].field_1 % 128 + 96 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(_5) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            _448 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_5].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)] = mem[128 len ceil32(stor[_5].field_1 % 128)]
            if ceil32(stor[_5].field_1 % 128) <= stor[_5].field_1 % 128:
                return Array(len=stor[_5].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_5].field_1 % 128)])
            mem[mem[64] + stor[_5].field_1 % 128 + 64] = 0
            return memory
              from mem[64]
               len _448 + ceil32(stor[_5].field_1 % 128) + -mem[64] + 64
        if bool(stor16[arg1].field_0) != 1:
            if bool(stor[sha3(mem[96 len -64])].field_0):
                if bool(stor[sha3(mem[96 len -64])].field_0) == uint255(stor[sha3(mem[96 len -64])].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor[sha3(mem[96 len -64])].field_0):
                    if bool(stor[sha3(mem[96 len -64])].field_0) == uint255(stor[sha3(mem[96 len -64])].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor[sha3(mem[96 len -64])].field_1):
                        if 31 >= uint255(stor[sha3(mem[96 len -64])].field_1):
                            mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                        else:
                            mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                            idx = 128
                            s = 0
                            while uint255(stor[sha3(mem[96 len -64])].field_1) + 96 > idx:
                                mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor[sha3(mem[96 len -64])].field_0) == stor[sha3(mem[96 len -64])].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor[sha3(mem[96 len -64])].field_1 % 128:
                        if 31 >= stor[sha3(mem[96 len -64])].field_1 % 128:
                            mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                        else:
                            mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                            idx = 128
                            s = 0
                            while stor[sha3(mem[96 len -64])].field_1 % 128 + 96 > idx:
                                mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, uint255(stor[sha3(mem[96 len -64])].field_1)), data=mem[128 len ceil32(uint255(stor[sha3(mem[96 len -64])].field_1))]), 
            if bool(stor[sha3(mem[96 len -64])].field_0) == stor[sha3(mem[96 len -64])].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if bool(stor[sha3(mem[96 len -64])].field_0):
                if bool(stor[sha3(mem[96 len -64])].field_0) == uint255(stor[sha3(mem[96 len -64])].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor[sha3(mem[96 len -64])].field_1):
                    if 31 >= uint255(stor[sha3(mem[96 len -64])].field_1):
                        mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                    else:
                        mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                        idx = 128
                        s = 0
                        while uint255(stor[sha3(mem[96 len -64])].field_1) + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor[sha3(mem[96 len -64])].field_0) == stor[sha3(mem[96 len -64])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor[sha3(mem[96 len -64])].field_1 % 128:
                    if 31 >= stor[sha3(mem[96 len -64])].field_1 % 128:
                        mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                    else:
                        mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                        idx = 128
                        s = 0
                        while stor[sha3(mem[96 len -64])].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor[sha3(mem[96 len -64])].field_0 % 128, data=mem[128 len ceil32(stor[sha3(mem[96 len -64])].field_1 % 128)]), 
        mem[0] = sha3(arg1, 16)
        idx = 0
        s = 0
        while idx < uint255(stor16[arg1].field_1):
            mem[idx + 96] = uint256(stor16[arg1][s].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        mem[uint255(stor16[arg1].field_1) + 96] = 14
        _462 = sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])
        if not bool(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_0):
            if bool(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_0) == stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1 % 128) + 128
            if bool(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_0):
                if bool(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_0) == uint255(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1):
                    mem[ceil32(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1 % 128) + 128] = 32
                    mem[mem[64] + 32] = stor[_462].field_1 % 128
                    mem[mem[64] + 64 len ceil32(stor[_462].field_1 % 128)] = mem[128 len ceil32(stor[_462].field_1 % 128)]
                    if ceil32(stor[_462].field_1 % 128) > stor[_462].field_1 % 128:
                        mem[mem[64] + stor[_462].field_1 % 128 + 64] = 0
                else:
                    if 31 >= uint255(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1):
                        mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_8)
                    else:
                        mem[128] = uint256(stor[sha3(sha3(mem[96 len uint255(stor16[arg1].field_1) + 32]))].field_0)
                        idx = 128
                        s = 0
                        while uint255(stor[_462].field_1) + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_462) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor[_462].field_1 % 128
                    mem[mem[64] + 64 len ceil32(stor[_462].field_1 % 128)] = mem[128 len ceil32(stor[_462].field_1 % 128)]
                    if ceil32(stor[_462].field_1 % 128) > stor[_462].field_1 % 128:
                        mem[mem[64] + stor[_462].field_1 % 128 + 64] = 0
            else:
                if bool(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_0) == stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1 % 128:
                    mem[ceil32(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1 % 128) + 128] = 32
                    mem[mem[64] + 32] = stor[_462].field_1 % 128
                    mem[mem[64] + 64 len ceil32(stor[_462].field_1 % 128)] = mem[128 len ceil32(stor[_462].field_1 % 128)]
                    if ceil32(stor[_462].field_1 % 128) > stor[_462].field_1 % 128:
                        mem[mem[64] + stor[_462].field_1 % 128 + 64] = 0
                else:
                    if 31 >= stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1 % 128:
                        mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_8)
                    else:
                        mem[128] = uint256(stor[sha3(sha3(mem[96 len uint255(stor16[arg1].field_1) + 32]))].field_0)
                        idx = 128
                        s = 0
                        while stor[_462].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_462) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor[_462].field_1 % 128
                    mem[mem[64] + 64 len ceil32(stor[_462].field_1 % 128)] = mem[128 len ceil32(stor[_462].field_1 % 128)]
                    if ceil32(stor[_462].field_1 % 128) > stor[_462].field_1 % 128:
                        mem[mem[64] + stor[_462].field_1 % 128 + 64] = 0
            return Array(len=stor[_462].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_462].field_1 % 128)])
        if bool(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_0) == uint255(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1) < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(uint255(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1)) + 128
        mem[96] = uint255(stor[sha3(mem[96 len uint255(stor16[arg1].field_1) + 32])].field_1)
        if bool(stor[_462].field_0):
            if bool(stor[_462].field_0) == uint255(stor[_462].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor[_462].field_1):
                _565 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor[_462].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))] = mem[128 len ceil32(uint255(stor[_462].field_1))]
                if ceil32(uint255(stor[_462].field_1)) <= uint255(stor[_462].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor[_462].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))]), 
                mem[mem[64] + uint255(stor[_462].field_1) + 64] = 0
                return memory
                  from mem[64]
                   len _565 + ceil32(uint255(stor[_462].field_1)) + -mem[64] + 64
            if 31 >= uint255(stor[_462].field_1):
                mem[128] = 256 * Mask(248, 0, stor[_462].field_8)
                _577 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor[_462].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))] = mem[128 len ceil32(uint255(stor[_462].field_1))]
                if ceil32(uint255(stor[_462].field_1)) <= uint255(stor[_462].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor[_462].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))]), 
                mem[mem[64] + uint255(stor[_462].field_1) + 64] = 0
                return memory
                  from mem[64]
                   len _577 + ceil32(uint255(stor[_462].field_1)) + -mem[64] + 64
            mem[128] = uint256(stor[sha3(_462)].field_0)
            idx = 128
            s = 0
            while uint255(stor[_462].field_1) + 96 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(_462) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            _757 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_462].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))] = mem[128 len ceil32(uint255(stor[_462].field_1))]
            if ceil32(uint255(stor[_462].field_1)) <= uint255(stor[_462].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor[_462].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))]), 
            mem[mem[64] + uint255(stor[_462].field_1) + 64] = 0
            return memory
              from mem[64]
               len _757 + ceil32(uint255(stor[_462].field_1)) + -mem[64] + 64
        if bool(stor[_462].field_0) == stor[_462].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor[_462].field_1 % 128:
            _569 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_462].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))] = mem[128 len ceil32(uint255(stor[_462].field_1))]
            if ceil32(uint255(stor[_462].field_1)) <= uint255(stor[_462].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor[_462].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))]), 
            mem[mem[64] + uint255(stor[_462].field_1) + 64] = 0
            return memory
              from mem[64]
               len _569 + ceil32(uint255(stor[_462].field_1)) + -mem[64] + 64
        if 31 >= stor[_462].field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor[_462].field_8)
            _584 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_462].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))] = mem[128 len ceil32(uint255(stor[_462].field_1))]
            if ceil32(uint255(stor[_462].field_1)) <= uint255(stor[_462].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor[_462].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))]), 
            mem[mem[64] + uint255(stor[_462].field_1) + 64] = 0
            return memory
              from mem[64]
               len _584 + ceil32(uint255(stor[_462].field_1)) + -mem[64] + 64
        mem[128] = uint256(stor[sha3(_462)].field_0)
        idx = 128
        s = 0
        while stor[_462].field_1 % 128 + 96 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(_462) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        _758 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor[_462].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))] = mem[128 len ceil32(uint255(stor[_462].field_1))]
        if ceil32(uint255(stor[_462].field_1)) <= uint255(stor[_462].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor[_462].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_462].field_1))]), 
        mem[mem[64] + uint255(stor[_462].field_1) + 64] = 0
        return memory
          from mem[64]
           len _758 + ceil32(uint255(stor[_462].field_1)) + -mem[64] + 64
    if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor16[arg1].field_0):
        mem[96] = Mask(248, 8, uint256(stor16[arg1].field_0))
        mem[stor16[arg1].field_1 % 128 + 96] = 14
        _10 = sha3(Mask(248, 8, uint256(stor16[arg1].field_0)), mem[128 len stor16[arg1].field_1 % 128])
        if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0):
            if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1) < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128
            mem[96] = uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)
            if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0):
                if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                    _36 = ceil32(uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128
                    mem[ceil32(uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128] = 32
                    mem[mem[64] + 32] = uint255(stor[_10].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_10].field_1))] = mem[128 len ceil32(uint255(stor[_10].field_1))]
                    if ceil32(uint255(stor[_10].field_1)) > uint255(stor[_10].field_1):
                        mem[_36 + uint255(stor[_10].field_1) + 64] = 0
                    return memory
                      from mem[64]
                       len _36 + ceil32(uint255(stor[_10].field_1)) + -mem[64] + 64
                if 31 >= uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                    mem[128] = 256 * Mask(248, 0, stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
                else:
                    mem[128] = uint256(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor[_10].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_10) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                    _46 = ceil32(uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128
                    mem[ceil32(uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1)) + 128] = 32
                    mem[mem[64] + 32] = uint255(stor[_10].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_10].field_1))] = mem[128 len ceil32(uint255(stor[_10].field_1))]
                    if ceil32(uint255(stor[_10].field_1)) > uint255(stor[_10].field_1):
                        mem[_46 + uint255(stor[_10].field_1) + 64] = 0
                    return memory
                      from mem[64]
                       len _46 + ceil32(uint255(stor[_10].field_1)) + -mem[64] + 64
                if 31 >= stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
                else:
                    mem[128] = uint256(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
                    idx = 128
                    s = 0
                    while stor[_10].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_10) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_10].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_10].field_1))] = mem[128 len ceil32(uint255(stor[_10].field_1))]
            if ceil32(uint255(stor[_10].field_1)) > uint255(stor[_10].field_1):
                mem[mem[64] + uint255(stor[_10].field_1) + 64] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor[_10].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_10].field_1))])
        if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128
        mem[96] = stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128
        if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0):
            if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                _48 = ceil32(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128
                mem[ceil32(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128] = 32
                mem[mem[64] + 32] = stor[_10].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_10].field_1 % 128)] = mem[128 len ceil32(stor[_10].field_1 % 128)]
                if ceil32(stor[_10].field_1 % 128) > stor[_10].field_1 % 128:
                    mem[_48 + stor[_10].field_1 % 128 + 64] = 0
                return memory
                  from mem[64]
                   len _48 + ceil32(stor[_10].field_1 % 128) + -mem[64] + 64
            if 31 >= uint255(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1):
                mem[128] = 256 * Mask(248, 0, stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
            else:
                mem[128] = uint256(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
                idx = 128
                s = 0
                while uint255(stor[_10].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_10) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0) == stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                _59 = ceil32(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128
                mem[ceil32(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128) + 128] = 32
                mem[mem[64] + 32] = stor[_10].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_10].field_1 % 128)] = mem[128 len ceil32(stor[_10].field_1 % 128)]
                if ceil32(stor[_10].field_1 % 128) > stor[_10].field_1 % 128:
                    mem[_59 + stor[_10].field_1 % 128 + 64] = 0
                return memory
                  from mem[64]
                   len _59 + ceil32(stor[_10].field_1 % 128) + -mem[64] + 64
            if 31 >= stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_8)
            else:
                mem[128] = uint256(stor[mem[128 len stor16[arg1].field_1 % 128]][Mask(248, 8, uint256(stor16[arg1].field_0))].field_0)
                idx = 128
                s = 0
                while stor[_10].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_10) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_10].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor[_10].field_1 % 128)] = mem[128 len ceil32(stor[_10].field_1 % 128)]
        if ceil32(stor[_10].field_1 % 128) > stor[_10].field_1 % 128:
            mem[mem[64] + stor[_10].field_1 % 128 + 64] = 0
        return Array(len=stor[_10].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_10].field_1 % 128)])
    if bool(stor16[arg1].field_0) != 1:
        if bool(stor[sha3(mem[96 len -64])].field_0):
            if bool(stor[sha3(mem[96 len -64])].field_0) == uint255(stor[sha3(mem[96 len -64])].field_1) < 32:
                revert with 'NH{q', 34
            if bool(stor[sha3(mem[96 len -64])].field_0):
                if bool(stor[sha3(mem[96 len -64])].field_0) == uint255(stor[sha3(mem[96 len -64])].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor[sha3(mem[96 len -64])].field_1):
                    if 31 >= uint255(stor[sha3(mem[96 len -64])].field_1):
                        mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                    else:
                        mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                        idx = 128
                        s = 0
                        while uint255(stor[sha3(mem[96 len -64])].field_1) + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor[sha3(mem[96 len -64])].field_0) == stor[sha3(mem[96 len -64])].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor[sha3(mem[96 len -64])].field_1 % 128:
                    if 31 >= stor[sha3(mem[96 len -64])].field_1 % 128:
                        mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                    else:
                        mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                        idx = 128
                        s = 0
                        while stor[sha3(mem[96 len -64])].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=2 * Mask(256, -1, uint255(stor[sha3(mem[96 len -64])].field_1)), data=mem[128 len ceil32(uint255(stor[sha3(mem[96 len -64])].field_1))]), 
        if bool(stor[sha3(mem[96 len -64])].field_0) == stor[sha3(mem[96 len -64])].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor[sha3(mem[96 len -64])].field_0):
            if bool(stor[sha3(mem[96 len -64])].field_0) == uint255(stor[sha3(mem[96 len -64])].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor[sha3(mem[96 len -64])].field_1):
                if 31 >= uint255(stor[sha3(mem[96 len -64])].field_1):
                    mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                else:
                    mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor[sha3(mem[96 len -64])].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor[sha3(mem[96 len -64])].field_0) == stor[sha3(mem[96 len -64])].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor[sha3(mem[96 len -64])].field_1 % 128:
                if 31 >= stor[sha3(mem[96 len -64])].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len -64])].field_8)
                else:
                    mem[128] = uint256(stor[sha3(sha3(mem[96 len -64]))].field_0)
                    idx = 128
                    s = 0
                    while stor[sha3(mem[96 len -64])].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(sha3(mem[96 len -64])) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=stor[sha3(mem[96 len -64])].field_0 % 128, data=mem[128 len ceil32(stor[sha3(mem[96 len -64])].field_1 % 128)]), 
    mem[0] = sha3(arg1, 16)
    idx = 0
    s = 0
    while idx < stor16[arg1].field_1 % 128:
        mem[idx + 96] = uint256(stor16[arg1][s].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor16[arg1].field_1 % 128 + 96] = 14
    _464 = sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])
    if not bool(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_0):
        if bool(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_0) == stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1 % 128) + 128
        if bool(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_0):
            if bool(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_0) == uint255(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1):
                mem[ceil32(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1 % 128) + 128] = 32
                mem[mem[64] + 32] = stor[_464].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_464].field_1 % 128)] = mem[128 len ceil32(stor[_464].field_1 % 128)]
                if ceil32(stor[_464].field_1 % 128) > stor[_464].field_1 % 128:
                    mem[mem[64] + stor[_464].field_1 % 128 + 64] = 0
            else:
                if 31 >= uint255(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1):
                    mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_8)
                else:
                    mem[128] = uint256(stor[sha3(sha3(mem[96 len stor16[arg1].field_1 % 128 + 32]))].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor[_464].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_464) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_464].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_464].field_1 % 128)] = mem[128 len ceil32(stor[_464].field_1 % 128)]
                if ceil32(stor[_464].field_1 % 128) > stor[_464].field_1 % 128:
                    mem[mem[64] + stor[_464].field_1 % 128 + 64] = 0
        else:
            if bool(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_0) == stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1 % 128:
                mem[ceil32(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1 % 128) + 128] = 32
                mem[mem[64] + 32] = stor[_464].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_464].field_1 % 128)] = mem[128 len ceil32(stor[_464].field_1 % 128)]
                if ceil32(stor[_464].field_1 % 128) > stor[_464].field_1 % 128:
                    mem[mem[64] + stor[_464].field_1 % 128 + 64] = 0
            else:
                if 31 >= stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_8)
                else:
                    mem[128] = uint256(stor[sha3(sha3(mem[96 len stor16[arg1].field_1 % 128 + 32]))].field_0)
                    idx = 128
                    s = 0
                    while stor[_464].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_464) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_464].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_464].field_1 % 128)] = mem[128 len ceil32(stor[_464].field_1 % 128)]
                if ceil32(stor[_464].field_1 % 128) > stor[_464].field_1 % 128:
                    mem[mem[64] + stor[_464].field_1 % 128 + 64] = 0
        return Array(len=stor[_464].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_464].field_1 % 128)])
    if bool(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_0) == uint255(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1) < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(uint255(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1)) + 128
    mem[96] = uint255(stor[sha3(mem[96 len stor16[arg1].field_1 % 128 + 32])].field_1)
    if bool(stor[_464].field_0):
        if bool(stor[_464].field_0) == uint255(stor[_464].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor[_464].field_1):
            _567 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_464].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))] = mem[128 len ceil32(uint255(stor[_464].field_1))]
            if ceil32(uint255(stor[_464].field_1)) <= uint255(stor[_464].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor[_464].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))]), 
            mem[mem[64] + uint255(stor[_464].field_1) + 64] = 0
            return memory
              from mem[64]
               len _567 + ceil32(uint255(stor[_464].field_1)) + -mem[64] + 64
        if 31 >= uint255(stor[_464].field_1):
            mem[128] = 256 * Mask(248, 0, stor[_464].field_8)
            _580 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_464].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))] = mem[128 len ceil32(uint255(stor[_464].field_1))]
            if ceil32(uint255(stor[_464].field_1)) <= uint255(stor[_464].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor[_464].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))]), 
            mem[mem[64] + uint255(stor[_464].field_1) + 64] = 0
            return memory
              from mem[64]
               len _580 + ceil32(uint255(stor[_464].field_1)) + -mem[64] + 64
        mem[128] = uint256(stor[sha3(_464)].field_0)
        idx = 128
        s = 0
        while uint255(stor[_464].field_1) + 96 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(_464) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        _761 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor[_464].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))] = mem[128 len ceil32(uint255(stor[_464].field_1))]
        if ceil32(uint255(stor[_464].field_1)) <= uint255(stor[_464].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor[_464].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))]), 
        mem[mem[64] + uint255(stor[_464].field_1) + 64] = 0
        return memory
          from mem[64]
           len _761 + ceil32(uint255(stor[_464].field_1)) + -mem[64] + 64
    if bool(stor[_464].field_0) == stor[_464].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor[_464].field_1 % 128:
        _573 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor[_464].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))] = mem[128 len ceil32(uint255(stor[_464].field_1))]
        if ceil32(uint255(stor[_464].field_1)) <= uint255(stor[_464].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor[_464].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))]), 
        mem[mem[64] + uint255(stor[_464].field_1) + 64] = 0
        return memory
          from mem[64]
           len _573 + ceil32(uint255(stor[_464].field_1)) + -mem[64] + 64
    if 31 >= stor[_464].field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor[_464].field_8)
        _587 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor[_464].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))] = mem[128 len ceil32(uint255(stor[_464].field_1))]
        if ceil32(uint255(stor[_464].field_1)) <= uint255(stor[_464].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor[_464].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))]), 
        mem[mem[64] + uint255(stor[_464].field_1) + 64] = 0
        return memory
          from mem[64]
           len _587 + ceil32(uint255(stor[_464].field_1)) + -mem[64] + 64
    mem[128] = uint256(stor[sha3(_464)].field_0)
    idx = 128
    s = 0
    while stor[_464].field_1 % 128 + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_464) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    _762 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint255(stor[_464].field_1)
    mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))] = mem[128 len ceil32(uint255(stor[_464].field_1))]
    if ceil32(uint255(stor[_464].field_1)) <= uint255(stor[_464].field_1):
        return Array(len=2 * Mask(256, -1, uint255(stor[_464].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_464].field_1))]), 
    mem[mem[64] + uint255(stor[_464].field_1) + 64] = 0
    return memory
      from mem[64]
       len _762 + ceil32(uint255(stor[_464].field_1)) + -mem[64] + 64
}



}
