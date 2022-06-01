contract main {




// =====================  Runtime code  =====================


#
#  - nftHolderAttributes(uint256 arg1)
#  - tokenURI(uint256 arg1)
#  - mintCharacterNFT(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
array of struct stor8;
mapping of struct stor9;
mapping of uint256 nftHolders;
uint8 stor11;
uint256 sub_f88df53d;
uint256 stor13;
mapping of uint8 stor14;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function _isMintActive() payable {
    return bool(stor11)
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

function nftHolders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nftHolders[arg1]
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_f88df53d(?) payable {
    return sub_f88df53d
}

function sub_fd40b0f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[address(arg1)])
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

function setMaxMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
}

function sub_4039058c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = uint8(bool(arg1))
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

function sub_fc31f0bf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
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
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
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

function getAllDefaultCharacters() payable {
    mem[64] = (32 * stor8.length) + 128
    mem[96] = stor8.length
    s = 128
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        _101 = mem[64]
        mem[64] = mem[64] + 128
        mem[_101] = stor8[idx].field_0
        if stor8[idx].field_256:
            if stor8[idx].field_256 == stor8[idx].field_257 < 32:
                revert with 'NH{q', 34
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(stor8[idx].field_257) + 32
            mem[_104] = stor8[idx].field_257
            if stor8[idx].field_256:
                if stor8[idx].field_256 == stor8[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor8[idx].field_257:
                    mem[_101 + 32] = _104
                    if stor8[idx].field_512:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _113 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_113] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_113 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_113 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _113 + 32
                                    u = sha3(mem[0])
                                    while _113 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_113 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_113 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _113 + 32
                                    u = sha3(mem[0])
                                    while _113 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _113
                    else:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _114 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_114] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_114 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_114 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _114 + 32
                                    u = sha3(mem[0])
                                    while _114 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_114 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_114 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _114 + 32
                                    u = sha3(mem[0])
                                    while _114 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _114
                else:
                    if 31 >= stor8[idx].field_257:
                        mem[_104 + 32] = 256 * stor8[idx].field_264
                        mem[_101 + 32] = _104
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _117 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_117] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_117 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_117 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _117 + 32
                                        u = sha3(mem[0])
                                        while _117 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_117 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_117 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _117 + 32
                                        u = sha3(mem[0])
                                        while _117 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_101 + 64] = _117
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _121 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_121] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_121 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_121 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _121 + 32
                                        u = sha3(mem[0])
                                        while _121 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_121 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_121 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _121 + 32
                                        u = sha3(mem[0])
                                        while _121 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_101 + 64] = _121
                    else:
                        mem[0] = (4 * idx) + sha3(8) + 1
                        mem[_104 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 1)].field_0
                        t = _104 + 32
                        u = sha3(mem[0])
                        while _104 + stor8[idx].field_257 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_101 + 32] = _104
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _201 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_201] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if not stor8[idx].field_513:
                                    mem[_101 + 64] = _201
                                    mem[_101 + 96] = stor8[idx].field_768
                                    mem[s] = _101
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                if 31 >= stor8[idx].field_513:
                                    mem[_201 + 32] = 256 * stor8[idx].field_520
                                    mem[_101 + 64] = _201
                                    mem[_101 + 96] = stor8[idx].field_768
                                    mem[s] = _101
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[0] = (4 * idx) + sha3(8) + 2
                                mem[_201 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                t = _201 + 32
                                u = sha3(mem[0])
                                while _201 + stor8[u].field_513 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_101 + 64] = _201
                                mem[_101 + 96] = stor8[u].field_768
                                mem[t] = _101
                                t = t + 32
                                u = u + 1
                                continue 
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_201 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_201 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _201 + 32
                                    u = sha3(mem[0])
                                    while _201 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_101 + 64] = _201
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _206 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_206] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_206 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_206 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _206 + 32
                                        u = sha3(mem[0])
                                        while _206 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_206 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_206 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _206 + 32
                                        u = sha3(mem[0])
                                        while _206 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_101 + 64] = _206
            else:
                if stor8[idx].field_256 == stor8[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor8[idx].field_257:
                    mem[_101 + 32] = _104
                    if stor8[idx].field_512:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _115 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_115] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_115 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_115 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _115 + 32
                                    u = sha3(mem[0])
                                    while _115 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_115 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_115 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _115 + 32
                                    u = sha3(mem[0])
                                    while _115 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _115
                    else:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _118 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_118] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_118 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_118 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _118 + 32
                                    u = sha3(mem[0])
                                    while _118 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_118 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_118 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _118 + 32
                                    u = sha3(mem[0])
                                    while _118 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _118
                else:
                    if 31 >= stor8[idx].field_257:
                        mem[_104 + 32] = 256 * stor8[idx].field_264
                        mem[_101 + 32] = _104
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _122 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_122] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_122 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_122 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _122 + 32
                                        u = sha3(mem[0])
                                        while _122 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_122 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_122 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _122 + 32
                                        u = sha3(mem[0])
                                        while _122 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_101 + 64] = _122
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _127 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_127] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_127 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_127 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _127 + 32
                                    u = sha3(mem[0])
                                    while _127 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_101 + 64] = _127
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor8[idx].field_513:
                            mem[_101 + 64] = _127
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor8[idx].field_513:
                            mem[_127 + 32] = 256 * stor8[idx].field_520
                            mem[_101 + 64] = _127
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(8) + 2
                        mem[_127 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                        t = _127 + 32
                        u = sha3(mem[0])
                        while _127 + stor8[u].field_513 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_101 + 64] = _127
                        mem[_101 + 96] = stor8[u].field_768
                        mem[t] = _101
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(8) + 1
                    mem[_104 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 1)].field_0
                    t = _104 + 32
                    u = sha3(mem[0])
                    while _104 + stor8[idx].field_257 > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_101 + 32] = _104
                    if stor8[idx].field_512:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _202 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_202] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_202 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_202 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _202 + 32
                                    u = sha3(mem[0])
                                    while _202 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_202 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_202 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _202 + 32
                                    u = sha3(mem[0])
                                    while _202 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _202
                    else:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _207 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_207] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_207 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_207 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _207 + 32
                                    u = sha3(mem[0])
                                    while _207 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_207 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_207 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _207 + 32
                                    u = sha3(mem[0])
                                    while _207 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _207
        else:
            if stor8[idx].field_256 == stor8[idx].field_257 < 32:
                revert with 'NH{q', 34
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(stor8[idx].field_257) + 32
            mem[_105] = stor8[idx].field_257
            if stor8[idx].field_256:
                if stor8[idx].field_256 == stor8[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor8[idx].field_257:
                    mem[_101 + 32] = _105
                    if stor8[idx].field_512:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _116 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_116] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_116 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_116 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _116 + 32
                                    u = sha3(mem[0])
                                    while _116 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_116 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_116 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _116 + 32
                                    u = sha3(mem[0])
                                    while _116 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _116
                    else:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _119 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_119] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_119 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_119 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _119 + 32
                                    u = sha3(mem[0])
                                    while _119 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_119 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_119 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _119 + 32
                                    u = sha3(mem[0])
                                    while _119 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _119
                else:
                    if 31 >= stor8[idx].field_257:
                        mem[_105 + 32] = 256 * stor8[idx].field_264
                        mem[_101 + 32] = _105
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _123 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_123] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_123 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_123 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _123 + 32
                                        u = sha3(mem[0])
                                        while _123 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_123 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_123 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _123 + 32
                                        u = sha3(mem[0])
                                        while _123 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_101 + 64] = _123
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _128 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_128] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_128 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_128 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _128 + 32
                                    u = sha3(mem[0])
                                    while _128 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_101 + 64] = _128
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor8[idx].field_513:
                            mem[_101 + 64] = _128
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor8[idx].field_513:
                            mem[_128 + 32] = 256 * stor8[idx].field_520
                            mem[_101 + 64] = _128
                            mem[_101 + 96] = stor8[idx].field_768
                            mem[s] = _101
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(8) + 2
                        mem[_128 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                        t = _128 + 32
                        u = sha3(mem[0])
                        while _128 + stor8[u].field_513 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_101 + 64] = _128
                        mem[_101 + 96] = stor8[u].field_768
                        mem[t] = _101
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(8) + 1
                    mem[_105 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 1)].field_0
                    t = _105 + 32
                    u = sha3(mem[0])
                    while _105 + stor8[idx].field_257 > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_101 + 32] = _105
                    if stor8[idx].field_512:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _203 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_203] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_203 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_203 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _203 + 32
                                    u = sha3(mem[0])
                                    while _203 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_203 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_203 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _203 + 32
                                    u = sha3(mem[0])
                                    while _203 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _203
                    else:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _208 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_208] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_208 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_208 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _208 + 32
                                    u = sha3(mem[0])
                                    while _208 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_208 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_208 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _208 + 32
                                    u = sha3(mem[0])
                                    while _208 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _208
            else:
                if stor8[idx].field_256 == stor8[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor8[idx].field_257:
                    mem[_101 + 32] = _105
                    if stor8[idx].field_512:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _120 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_120] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_120 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_120 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _120 + 32
                                    u = sha3(mem[0])
                                    while _120 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_120 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_120 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _120 + 32
                                    u = sha3(mem[0])
                                    while _120 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _120
                    else:
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _124 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_124] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_124 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_124 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor8[idx].field_513:
                                if 31 >= stor8[idx].field_513:
                                    mem[_124 + 32] = 256 * stor8[idx].field_520
                                else:
                                    mem[0] = (4 * idx) + sha3(8) + 2
                                    mem[_124 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                    t = _124 + 32
                                    u = sha3(mem[0])
                                    while _124 + stor8[idx].field_513 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_101 + 64] = _124
                else:
                    if 31 >= stor8[idx].field_257:
                        mem[_105 + 32] = 256 * stor8[idx].field_264
                        mem[_101 + 32] = _105
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _129 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_129] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_129 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_129 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _129 + 32
                                        u = sha3(mem[0])
                                        while _129 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[_101 + 64] = _129
                                mem[_101 + 96] = stor8[idx].field_768
                                mem[s] = _101
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if not stor8[idx].field_513:
                                mem[_101 + 64] = _129
                                mem[_101 + 96] = stor8[idx].field_768
                                mem[s] = _101
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor8[idx].field_513:
                                mem[_129 + 32] = 256 * stor8[idx].field_520
                                mem[_101 + 64] = _129
                                mem[_101 + 96] = stor8[idx].field_768
                                mem[s] = _101
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (4 * idx) + sha3(8) + 2
                            mem[_129 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                            t = _129 + 32
                            u = sha3(mem[0])
                            while _129 + stor8[u].field_513 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_101 + 64] = _129
                            mem[_101 + 96] = stor8[u].field_768
                            mem[t] = _101
                            t = t + 32
                            u = u + 1
                            continue 
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        _133 = mem[64]
                        mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                        mem[_133] = stor8[idx].field_513
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            if not stor8[idx].field_513:
                                mem[_101 + 64] = _133
                                mem[_101 + 96] = stor8[idx].field_768
                                mem[s] = _101
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor8[idx].field_513:
                                mem[_133 + 32] = 256 * stor8[idx].field_520
                                mem[_101 + 64] = _133
                                mem[_101 + 96] = stor8[idx].field_768
                                mem[s] = _101
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (4 * idx) + sha3(8) + 2
                            mem[_133 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                            t = _133 + 32
                            u = sha3(mem[0])
                            while _133 + stor8[u].field_513 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_101 + 64] = _133
                            mem[_101 + 96] = stor8[u].field_768
                            mem[t] = _101
                            t = t + 32
                            u = u + 1
                            continue 
                        if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                            revert with 'NH{q', 34
                        if stor8[idx].field_513:
                            if 31 >= stor8[idx].field_513:
                                mem[_133 + 32] = 256 * stor8[idx].field_520
                            else:
                                mem[0] = (4 * idx) + sha3(8) + 2
                                mem[_133 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                t = _133 + 32
                                u = sha3(mem[0])
                                while _133 + stor8[idx].field_513 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_101 + 64] = _133
                    else:
                        mem[0] = (4 * idx) + sha3(8) + 1
                        mem[_105 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 1)].field_0
                        t = _105 + 32
                        u = sha3(mem[0])
                        while _105 + stor8[idx].field_257 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_101 + 32] = _105
                        if stor8[idx].field_512:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _204 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_204] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_204 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_204 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _204 + 32
                                        u = sha3(mem[0])
                                        while _204 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_204 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_204 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _204 + 32
                                        u = sha3(mem[0])
                                        while _204 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_101 + 64] = _204
                        else:
                            if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                revert with 'NH{q', 34
                            _209 = mem[64]
                            mem[64] = mem[64] + ceil32(stor8[idx].field_513) + 32
                            mem[_209] = stor8[idx].field_513
                            if stor8[idx].field_512:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_209 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_209 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _209 + 32
                                        u = sha3(mem[0])
                                        while _209 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor8[idx].field_512 == stor8[idx].field_513 < 32:
                                    revert with 'NH{q', 34
                                if stor8[idx].field_513:
                                    if 31 >= stor8[idx].field_513:
                                        mem[_209 + 32] = 256 * stor8[idx].field_520
                                    else:
                                        mem[0] = (4 * idx) + sha3(8) + 2
                                        mem[_209 + 32] = stor[sha3((4 * idx) + ('name', 'stor8', 8) + 2)].field_0
                                        t = _209 + 32
                                        u = sha3(mem[0])
                                        while _209 + stor8[idx].field_513 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_101 + 64] = _209
        mem[_101 + 96] = stor8[idx].field_768
        mem[s] = _101
        s = s + 32
        idx = idx + 1
        continue 
    _102 = mem[64]
    mem[mem[64]] = 32
    _103 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _103:
        mem[u] = t + -_102 - 64
        _198 = mem[s]
        mem[t] = mem[mem[s]]
        _205 = mem[_198 + 32]
        mem[t + 32] = 128
        _210 = mem[_205]
        mem[t + 128] = mem[_205]
        v = 0
        while v < _210:
            mem[t + v + 160] = mem[_205 + v + 32]
            v = v + 32
            continue 
        if ceil32(_210) <= _210:
            _239 = mem[_198 + 64]
            mem[t + 64] = ceil32(_210) + 160
            _241 = mem[_239]
            mem[t + ceil32(_210) + 160] = mem[_239]
            v = 0
            while v < _241:
                mem[t + ceil32(_210) + v + 192] = mem[_239 + v + 32]
                v = v + 32
                continue 
            if ceil32(_241) > _241:
                mem[t + ceil32(_210) + _241 + 192] = 0
            mem[t + 96] = mem[_198 + 96]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_210) + ceil32(_241) + 192
            u = u + 32
            continue 
        mem[t + _210 + 160] = 0
        _240 = mem[_198 + 64]
        mem[t + 64] = ceil32(_210) + 160
        _242 = mem[_240]
        mem[t + ceil32(_210) + 160] = mem[_240]
        v = 0
        while v < _242:
            mem[t + ceil32(_210) + v + 192] = mem[_240 + v + 32]
            v = v + 32
            continue 
        if ceil32(_242) > _242:
            mem[t + ceil32(_210) + _242 + 192] = 0
        mem[t + 96] = mem[_198 + 96]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_210) + ceil32(_242) + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function checkIfUserHasNFT() payable {
    if nftHolders[address(msg.sender)] <= 0:
        return '', 128, 160, 0, 0, 0, None
    if stor9[stor10[address(msg.sender)]].field_256:
        if stor9[stor10[address(msg.sender)]].field_256 == stor9[stor10[address(msg.sender)]].field_257 < 32:
            revert with 'NH{q', 34
        if stor9[stor10[address(msg.sender)]].field_256:
            if stor9[stor10[address(msg.sender)]].field_256 == stor9[stor10[address(msg.sender)]].field_257 < 32:
                revert with 'NH{q', 34
            if not stor9[stor10[address(msg.sender)]].field_257:
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor9[stor10[address(msg.sender)]].field_512:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if 31 >= stor9[stor10[address(msg.sender)]].field_257:
                mem[384] = 256 * stor9[stor10[address(msg.sender)]].field_264
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor9[stor10[address(msg.sender)]].field_512:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            mem[384] = stor9[stor10[address(msg.sender)]][1].field_0
            idx = 384
            s = 0
            while stor9[stor10[address(msg.sender)]].field_257 + 352 > idx:
                mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if stor9[stor10[address(msg.sender)]].field_256 == stor9[stor10[address(msg.sender)]].field_257 < 32:
                revert with 'NH{q', 34
            if not stor9[stor10[address(msg.sender)]].field_257:
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor9[stor10[address(msg.sender)]].field_512:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if 31 >= stor9[stor10[address(msg.sender)]].field_257:
                mem[384] = 256 * stor9[stor10[address(msg.sender)]].field_264
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor9[stor10[address(msg.sender)]].field_512:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor9[stor10[address(msg.sender)]].field_513:
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                                   128,
                                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                                   stor9[stor10[address(msg.sender)]].field_768,
                                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                                   stor9[stor10[address(msg.sender)]].field_513,
                                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                        s = 0
                        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            mem[384] = stor9[stor10[address(msg.sender)]][1].field_0
            idx = 384
            s = 0
            while stor9[stor10[address(msg.sender)]].field_257 + 352 > idx:
                mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if stor9[stor10[address(msg.sender)]].field_512:
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) <= stor9[stor10[address(msg.sender)]].field_257:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                   mem[384 len stor9[stor10[address(msg.sender)]].field_257],
                   0,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) - stor9[stor10[address(msg.sender)]].field_257]
        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
            revert with 'NH{q', 34
        if stor9[stor10[address(msg.sender)]].field_512:
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if not stor9[stor10[address(msg.sender)]].field_513:
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
            idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
            s = 0
            while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if not stor9[stor10[address(msg.sender)]].field_513:
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       stor9[stor10[address(msg.sender)]].field_512,
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
            idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
            s = 0
            while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if ceil32(stor9[stor10[address(msg.sender)]].field_257) <= stor9[stor10[address(msg.sender)]].field_257:
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
        return 32, stor9[stor10[address(msg.sender)]].field_0, 
               128,
               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
               stor9[stor10[address(msg.sender)]].field_768,
               2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_257),
               mem[384 len stor9[stor10[address(msg.sender)]].field_257],
               0,
               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) - stor9[stor10[address(msg.sender)]].field_257]
    if stor9[stor10[address(msg.sender)]].field_256 == stor9[stor10[address(msg.sender)]].field_257 < 32:
        revert with 'NH{q', 34
    if stor9[stor10[address(msg.sender)]].field_256:
        if stor9[stor10[address(msg.sender)]].field_256 == stor9[stor10[address(msg.sender)]].field_257 < 32:
            revert with 'NH{q', 34
        if not stor9[stor10[address(msg.sender)]].field_257:
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        if 31 >= stor9[stor10[address(msg.sender)]].field_257:
            mem[384] = 256 * stor9[stor10[address(msg.sender)]].field_264
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        mem[384] = stor9[stor10[address(msg.sender)]][1].field_0
        idx = 384
        s = 0
        while stor9[stor10[address(msg.sender)]].field_257 + 352 > idx:
            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if stor9[stor10[address(msg.sender)]].field_256 == stor9[stor10[address(msg.sender)]].field_257 < 32:
            revert with 'NH{q', 34
        if not stor9[stor10[address(msg.sender)]].field_257:
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        if 31 >= stor9[stor10[address(msg.sender)]].field_257:
            mem[384] = 256 * stor9[stor10[address(msg.sender)]].field_264
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if stor9[stor10[address(msg.sender)]].field_512:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor9[stor10[address(msg.sender)]].field_513:
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                        if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                        return 32, stor9[stor10[address(msg.sender)]].field_0, 
                               128,
                               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                               stor9[stor10[address(msg.sender)]].field_768,
                               stor9[stor10[address(msg.sender)]].field_256,
                               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                               stor9[stor10[address(msg.sender)]].field_513,
                               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                    idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                    s = 0
                    while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                        mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if stor9[stor10[address(msg.sender)]].field_512:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor10[address(msg.sender)]].field_513:
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                    if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                    return 32, stor9[stor10[address(msg.sender)]].field_0, 
                           128,
                           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                           stor9[stor10[address(msg.sender)]].field_768,
                           stor9[stor10[address(msg.sender)]].field_256,
                           mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                           stor9[stor10[address(msg.sender)]].field_513,
                           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
                idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
                s = 0
                while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                    mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        mem[384] = stor9[stor10[address(msg.sender)]][1].field_0
        idx = 384
        s = 0
        while stor9[stor10[address(msg.sender)]].field_257 + 352 > idx:
            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor9[stor10[address(msg.sender)]].field_512:
        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
            revert with 'NH{q', 34
        if stor9[stor10[address(msg.sender)]].field_512:
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if not stor9[stor10[address(msg.sender)]].field_513:
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
            idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
            s = 0
            while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
                revert with 'NH{q', 34
            if not stor9[stor10[address(msg.sender)]].field_513:
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if 31 >= stor9[stor10[address(msg.sender)]].field_513:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
                if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
                if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
                return 32, stor9[stor10[address(msg.sender)]].field_0, 
                       128,
                       ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                       stor9[stor10[address(msg.sender)]].field_768,
                       stor9[stor10[address(msg.sender)]].field_256,
                       mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                       2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                       mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
            idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
            s = 0
            while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
                mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if ceil32(stor9[stor10[address(msg.sender)]].field_257) <= stor9[stor10[address(msg.sender)]].field_257:
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   2 * Mask(256, -1, stor9[stor10[address(msg.sender)]].field_513),
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
        return 32, stor9[stor10[address(msg.sender)]].field_0, 
               128,
               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
               stor9[stor10[address(msg.sender)]].field_768,
               stor9[stor10[address(msg.sender)]].field_256,
               mem[384 len stor9[stor10[address(msg.sender)]].field_257],
               0,
               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) - stor9[stor10[address(msg.sender)]].field_257]
    if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
        revert with 'NH{q', 34
    if stor9[stor10[address(msg.sender)]].field_512:
        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
            revert with 'NH{q', 34
        if not stor9[stor10[address(msg.sender)]].field_513:
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
        s = 0
        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if stor9[stor10[address(msg.sender)]].field_512 == stor9[stor10[address(msg.sender)]].field_513 < 32:
            revert with 'NH{q', 34
        if not stor9[stor10[address(msg.sender)]].field_513:
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        if 31 >= stor9[stor10[address(msg.sender)]].field_513:
            mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = 256 * stor9[stor10[address(msg.sender)]].field_520
            if ceil32(stor9[stor10[address(msg.sender)]].field_257) > stor9[stor10[address(msg.sender)]].field_257:
                mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
            if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
                mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
            return 32, stor9[stor10[address(msg.sender)]].field_0, 
                   128,
                   ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
                   stor9[stor10[address(msg.sender)]].field_768,
                   stor9[stor10[address(msg.sender)]].field_256,
                   mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
                   stor9[stor10[address(msg.sender)]].field_512,
                   mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416] = stor9[stor10[address(msg.sender)]][2].field_0
        idx = ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416
        s = 0
        while ceil32(stor9[stor10[address(msg.sender)]].field_257) + stor9[stor10[address(msg.sender)]].field_513 + 384 > idx:
            mem[idx + 32] = stor9[stor10[address(msg.sender)]][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if ceil32(stor9[stor10[address(msg.sender)]].field_257) <= stor9[stor10[address(msg.sender)]].field_257:
        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
        if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
            mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
        return 32, stor9[stor10[address(msg.sender)]].field_0, 
               128,
               ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
               stor9[stor10[address(msg.sender)]].field_768,
               stor9[stor10[address(msg.sender)]].field_256,
               mem[384 len ceil32(stor9[stor10[address(msg.sender)]].field_257)],
               stor9[stor10[address(msg.sender)]].field_512,
               mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
    mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 608] = 0
    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 608] = stor9[stor10[address(msg.sender)]].field_513
    mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_513)] = mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + 416 len ceil32(stor9[stor10[address(msg.sender)]].field_513)]
    if ceil32(stor9[stor10[address(msg.sender)]].field_513) > stor9[stor10[address(msg.sender)]].field_513:
        mem[(2 * ceil32(stor9[stor10[address(msg.sender)]].field_257)) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_513 + 640] = 0
    return 32, stor9[stor10[address(msg.sender)]].field_0, 
           128,
           ceil32(stor9[stor10[address(msg.sender)]].field_257) + 160,
           stor9[stor10[address(msg.sender)]].field_768,
           stor9[stor10[address(msg.sender)]].field_256,
           mem[384 len stor9[stor10[address(msg.sender)]].field_257],
           0,
           mem[ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) + stor9[stor10[address(msg.sender)]].field_257 + 640 len ceil32(stor9[stor10[address(msg.sender)]].field_257) + ceil32(stor9[stor10[address(msg.sender)]].field_513) - stor9[stor10[address(msg.sender)]].field_257]
}



}
