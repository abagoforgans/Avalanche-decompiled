contract main {




// =====================  Runtime code  =====================


const random = sha3(block.coinbase << 96, block.timestamp, block.difficulty)


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
array of struct stor7;
uint256 stor8;

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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
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

function mintTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8 > -2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8 + 1]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor8 + 1] = arg1
    emit Transfer(0, arg1, stor8 + 1);
    if stor8 == -1:
        revert with 'NH{q', 17
    stor8++
}

function multipleMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 20:
        revert with 0, 'Max 20 Nfts Allowed'
    idx = 0
    while idx < arg1:
        if stor8 > -2:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8 + 1]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor8 + 1
        mem[32] = 2
        ownerOf[stor8 + 1] = msg.sender
        emit Transfer(0, msg.sender, stor8 + 1);
        if stor8 == -1:
            revert with 'NH{q', 17
        stor8++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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

function setBaseUri(string arg1) payable {
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
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
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

function baseTokenURI() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor7.length):
                mem[192] = Mask(248, 8, stor7.length)
            else:
                if bool(stor7.length) != 1:
                    mem[64] = 1
                    _119 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_119) > _119:
                        mem[_119 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_119) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor7.length.field_1:
                    mem[idx + 192] = stor7[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor7.length.field_1 + 192] = '0'
            mem[stor7.length.field_1 + 193] = 32
            mem[stor7.length.field_1 + 225] = mem[160]
            mem[stor7.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor7.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor7.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor7.length):
            mem[192] = Mask(248, 8, stor7.length)
        else:
            if bool(stor7.length) != 1:
                mem[64] = 1
                _121 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_121) > _121:
                    mem[_121 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_121) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor7.length.field_1:
                mem[idx + 192] = stor7[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor7.length.field_1 + 192] = '0'
        mem[stor7.length.field_1 + 193] = 32
        mem[stor7.length.field_1 + 225] = mem[160]
        mem[stor7.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor7.length.field_1 + mem[160] + 257] = 0
        return Array(len=mem[160], data=mem[stor7.length.field_1 + 257 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _356 = mem[64]
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor7.length):
                mem[mem[64] + 32] = Mask(248, 8, stor7.length)
                _392 = mem[96]
                mem[mem[64] + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _584 = mem[64]
                    mem[64] = mem[64] + stor7.length.field_1 + mem[96] + 32
                    mem[_356 + stor7.length.field_1 + mem[96] + 32] = 32
                    _628 = mem[_584]
                    mem[_356 + stor7.length.field_1 + _392 + 64] = mem[_584]
                    mem[_356 + stor7.length.field_1 + _392 + 96 len ceil32(_628)] = mem[_584 + 32 len ceil32(_628)]
                    if ceil32(_628) > _628:
                        mem[_356 + stor7.length.field_1 + _392 + _628 + 96] = 0
                    return memory
                      from mem[64]
                       len _356 + stor7.length.field_1 + _392 + ceil32(_628) + -mem[64] + 96
                mem[mem[64] + stor7.length.field_1 + mem[96] + 32] = 0
                _597 = mem[64]
                mem[64] = _356 + stor7.length.field_1 + _392 + 32
                mem[_356 + stor7.length.field_1 + _392 + 32] = 32
                _636 = mem[_597]
                mem[_356 + stor7.length.field_1 + _392 + 64] = mem[_597]
                mem[_356 + stor7.length.field_1 + _392 + 96 len ceil32(_636)] = mem[_597 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_356 + stor7.length.field_1 + _392 + _636 + 96] = 0
                return 32, mem[_356 + stor7.length.field_1 + _392 + 64 len ceil32(_636) + 32]
            if bool(stor7.length) != 1:
                _396 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_396) <= _396:
                    _586 = mem[64]
                    mem[64] = _396
                    mem[_396] = 32
                    _629 = mem[_586]
                    mem[_396 + 32] = mem[_586]
                    mem[_396 + 64 len ceil32(_629)] = mem[_586 + 32 len ceil32(_629)]
                    if ceil32(_629) > _629:
                        mem[_396 + _629 + 64] = 0
                    return 32, mem[_396 + 32 len ceil32(_629) + 32]
                mem[_396] = 0
                _599 = mem[64]
                mem[64] = _396
                mem[_396] = 32
                _637 = mem[_599]
                mem[_396 + 32] = mem[_599]
                mem[_396 + 64 len ceil32(_637)] = mem[_599 + 32 len ceil32(_637)]
                if ceil32(_637) > _637:
                    mem[_396 + _637 + 64] = 0
                return 32, mem[_396 + 32 len ceil32(_637) + 32]
            mem[0] = 7
            idx = 0
            s = 0
            while idx < stor7.length.field_1:
                mem[_356 + idx + 32] = stor7[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _585 = mem[96]
            mem[_356 + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_585) <= _585:
                _764 = mem[64]
                mem[64] = _356 + stor7.length.field_1 + _585 + 32
                mem[_356 + stor7.length.field_1 + _585 + 32] = 32
                _812 = mem[_764]
                mem[_356 + stor7.length.field_1 + _585 + 64] = mem[_764]
                mem[_356 + stor7.length.field_1 + _585 + 96 len ceil32(_812)] = mem[_764 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_356 + stor7.length.field_1 + _585 + _812 + 96] = 0
                return 32, mem[_356 + stor7.length.field_1 + _585 + 64 len ceil32(_812) + 32]
            mem[_356 + stor7.length.field_1 + _585 + 32] = 0
            _769 = mem[64]
            mem[64] = _356 + stor7.length.field_1 + _585 + 32
            mem[_356 + stor7.length.field_1 + _585 + 32] = 32
            _816 = mem[_769]
            mem[_356 + stor7.length.field_1 + _585 + 64] = mem[_769]
            mem[_356 + stor7.length.field_1 + _585 + 96 len ceil32(_816)] = mem[_769 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_356 + stor7.length.field_1 + _585 + _816 + 96] = 0
            return 32, mem[_356 + stor7.length.field_1 + _585 + 64 len ceil32(_816) + 32]
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor7.length):
            mem[mem[64] + 32] = Mask(248, 8, stor7.length)
            _397 = mem[96]
            mem[mem[64] + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _587 = mem[64]
                mem[64] = mem[64] + stor7.length.field_1 + mem[96] + 32
                mem[_356 + stor7.length.field_1 + mem[96] + 32] = 32
                _630 = mem[_587]
                mem[_356 + stor7.length.field_1 + _397 + 64] = mem[_587]
                mem[_356 + stor7.length.field_1 + _397 + 96 len ceil32(_630)] = mem[_587 + 32 len ceil32(_630)]
                if ceil32(_630) > _630:
                    mem[_356 + stor7.length.field_1 + _397 + _630 + 96] = 0
                return memory
                  from mem[64]
                   len _356 + stor7.length.field_1 + _397 + ceil32(_630) + -mem[64] + 96
            mem[mem[64] + stor7.length.field_1 + mem[96] + 32] = 0
            _601 = mem[64]
            mem[64] = _356 + stor7.length.field_1 + _397 + 32
            mem[_356 + stor7.length.field_1 + _397 + 32] = 32
            _638 = mem[_601]
            mem[_356 + stor7.length.field_1 + _397 + 64] = mem[_601]
            mem[_356 + stor7.length.field_1 + _397 + 96 len ceil32(_638)] = mem[_601 + 32 len ceil32(_638)]
            if ceil32(_638) > _638:
                mem[_356 + stor7.length.field_1 + _397 + _638 + 96] = 0
            return 32, mem[_356 + stor7.length.field_1 + _397 + 64 len ceil32(_638) + 32]
        if bool(stor7.length) != 1:
            _400 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_400) <= _400:
                _589 = mem[64]
                mem[64] = _400
                mem[_400] = 32
                _631 = mem[_589]
                mem[_400 + 32] = mem[_589]
                mem[_400 + 64 len ceil32(_631)] = mem[_589 + 32 len ceil32(_631)]
                if ceil32(_631) > _631:
                    mem[_400 + _631 + 64] = 0
                return 32, mem[_400 + 32 len ceil32(_631) + 32]
            mem[_400] = 0
            _603 = mem[64]
            mem[64] = _400
            mem[_400] = 32
            _639 = mem[_603]
            mem[_400 + 32] = mem[_603]
            mem[_400 + 64 len ceil32(_639)] = mem[_603 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_400 + _639 + 64] = 0
            return 32, mem[_400 + 32 len ceil32(_639) + 32]
        mem[0] = 7
        idx = 0
        s = 0
        while idx < stor7.length.field_1:
            mem[_356 + idx + 32] = stor7[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _588 = mem[96]
        mem[_356 + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_588) <= _588:
            _765 = mem[64]
            mem[64] = _356 + stor7.length.field_1 + _588 + 32
            mem[_356 + stor7.length.field_1 + _588 + 32] = 32
            _813 = mem[_765]
            mem[_356 + stor7.length.field_1 + _588 + 64] = mem[_765]
            mem[_356 + stor7.length.field_1 + _588 + 96 len ceil32(_813)] = mem[_765 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_356 + stor7.length.field_1 + _588 + _813 + 96] = 0
            return 32, mem[_356 + stor7.length.field_1 + _588 + 64 len ceil32(_813) + 32]
        mem[_356 + stor7.length.field_1 + _588 + 32] = 0
        _771 = mem[64]
        mem[64] = _356 + stor7.length.field_1 + _588 + 32
        mem[_356 + stor7.length.field_1 + _588 + 32] = 32
        _817 = mem[_771]
        mem[_356 + stor7.length.field_1 + _588 + 64] = mem[_771]
        mem[_356 + stor7.length.field_1 + _588 + 96 len ceil32(_817)] = mem[_771 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_356 + stor7.length.field_1 + _588 + _817 + 96] = 0
        return 32, mem[_356 + stor7.length.field_1 + _588 + 64 len ceil32(_817) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _357 = mem[64]
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor7.length):
            mem[mem[64] + 32] = Mask(248, 8, stor7.length)
            _393 = mem[96]
            mem[mem[64] + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _590 = mem[64]
                mem[64] = mem[64] + stor7.length.field_1 + mem[96] + 32
                mem[_357 + stor7.length.field_1 + mem[96] + 32] = 32
                _632 = mem[_590]
                mem[_357 + stor7.length.field_1 + _393 + 64] = mem[_590]
                mem[_357 + stor7.length.field_1 + _393 + 96 len ceil32(_632)] = mem[_590 + 32 len ceil32(_632)]
                if ceil32(_632) > _632:
                    mem[_357 + stor7.length.field_1 + _393 + _632 + 96] = 0
                return memory
                  from mem[64]
                   len _357 + stor7.length.field_1 + _393 + ceil32(_632) + -mem[64] + 96
            mem[mem[64] + stor7.length.field_1 + mem[96] + 32] = 0
            _605 = mem[64]
            mem[64] = _357 + stor7.length.field_1 + _393 + 32
            mem[_357 + stor7.length.field_1 + _393 + 32] = 32
            _640 = mem[_605]
            mem[_357 + stor7.length.field_1 + _393 + 64] = mem[_605]
            mem[_357 + stor7.length.field_1 + _393 + 96 len ceil32(_640)] = mem[_605 + 32 len ceil32(_640)]
            if ceil32(_640) > _640:
                mem[_357 + stor7.length.field_1 + _393 + _640 + 96] = 0
            return 32, mem[_357 + stor7.length.field_1 + _393 + 64 len ceil32(_640) + 32]
        if bool(stor7.length) != 1:
            _398 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_398) <= _398:
                _592 = mem[64]
                mem[64] = _398
                mem[_398] = 32
                _633 = mem[_592]
                mem[_398 + 32] = mem[_592]
                mem[_398 + 64 len ceil32(_633)] = mem[_592 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_398 + _633 + 64] = 0
                return 32, mem[_398 + 32 len ceil32(_633) + 32]
            mem[_398] = 0
            _607 = mem[64]
            mem[64] = _398
            mem[_398] = 32
            _641 = mem[_607]
            mem[_398 + 32] = mem[_607]
            mem[_398 + 64 len ceil32(_641)] = mem[_607 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_398 + _641 + 64] = 0
            return 32, mem[_398 + 32 len ceil32(_641) + 32]
        mem[0] = 7
        idx = 0
        s = 0
        while idx < stor7.length.field_1:
            mem[_357 + idx + 32] = stor7[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _591 = mem[96]
        mem[_357 + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_591) <= _591:
            _766 = mem[64]
            mem[64] = _357 + stor7.length.field_1 + _591 + 32
            mem[_357 + stor7.length.field_1 + _591 + 32] = 32
            _814 = mem[_766]
            mem[_357 + stor7.length.field_1 + _591 + 64] = mem[_766]
            mem[_357 + stor7.length.field_1 + _591 + 96 len ceil32(_814)] = mem[_766 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_357 + stor7.length.field_1 + _591 + _814 + 96] = 0
            return 32, mem[_357 + stor7.length.field_1 + _591 + 64 len ceil32(_814) + 32]
        mem[_357 + stor7.length.field_1 + _591 + 32] = 0
        _773 = mem[64]
        mem[64] = _357 + stor7.length.field_1 + _591 + 32
        mem[_357 + stor7.length.field_1 + _591 + 32] = 32
        _818 = mem[_773]
        mem[_357 + stor7.length.field_1 + _591 + 64] = mem[_773]
        mem[_357 + stor7.length.field_1 + _591 + 96 len ceil32(_818)] = mem[_773 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_357 + stor7.length.field_1 + _591 + _818 + 96] = 0
        return 32, mem[_357 + stor7.length.field_1 + _591 + 64 len ceil32(_818) + 32]
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor7.length):
        mem[mem[64] + 32] = Mask(248, 8, stor7.length)
        _399 = mem[96]
        mem[mem[64] + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _593 = mem[64]
            mem[64] = mem[64] + stor7.length.field_1 + mem[96] + 32
            mem[_357 + stor7.length.field_1 + mem[96] + 32] = 32
            _634 = mem[_593]
            mem[_357 + stor7.length.field_1 + _399 + 64] = mem[_593]
            mem[_357 + stor7.length.field_1 + _399 + 96 len ceil32(_634)] = mem[_593 + 32 len ceil32(_634)]
            if ceil32(_634) > _634:
                mem[_357 + stor7.length.field_1 + _399 + _634 + 96] = 0
            return memory
              from mem[64]
               len _357 + stor7.length.field_1 + _399 + ceil32(_634) + -mem[64] + 96
        mem[mem[64] + stor7.length.field_1 + mem[96] + 32] = 0
        _609 = mem[64]
        mem[64] = _357 + stor7.length.field_1 + _399 + 32
        mem[_357 + stor7.length.field_1 + _399 + 32] = 32
        _642 = mem[_609]
        mem[_357 + stor7.length.field_1 + _399 + 64] = mem[_609]
        mem[_357 + stor7.length.field_1 + _399 + 96 len ceil32(_642)] = mem[_609 + 32 len ceil32(_642)]
        if ceil32(_642) > _642:
            mem[_357 + stor7.length.field_1 + _399 + _642 + 96] = 0
        return 32, mem[_357 + stor7.length.field_1 + _399 + 64 len ceil32(_642) + 32]
    if bool(stor7.length) != 1:
        _401 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_401) <= _401:
            _595 = mem[64]
            mem[64] = _401
            mem[_401] = 32
            _635 = mem[_595]
            mem[_401 + 32] = mem[_595]
            mem[_401 + 64 len ceil32(_635)] = mem[_595 + 32 len ceil32(_635)]
            if ceil32(_635) > _635:
                mem[_401 + _635 + 64] = 0
            return 32, mem[_401 + 32 len ceil32(_635) + 32]
        mem[_401] = 0
        _611 = mem[64]
        mem[64] = _401
        mem[_401] = 32
        _643 = mem[_611]
        mem[_401 + 32] = mem[_611]
        mem[_401 + 64 len ceil32(_643)] = mem[_611 + 32 len ceil32(_643)]
        if ceil32(_643) > _643:
            mem[_401 + _643 + 64] = 0
        return 32, mem[_401 + 32 len ceil32(_643) + 32]
    mem[0] = 7
    idx = 0
    s = 0
    while idx < stor7.length.field_1:
        mem[_357 + idx + 32] = stor7[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _594 = mem[96]
    mem[_357 + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_594) <= _594:
        _767 = mem[64]
        mem[64] = _357 + stor7.length.field_1 + _594 + 32
        mem[_357 + stor7.length.field_1 + _594 + 32] = 32
        _815 = mem[_767]
        mem[_357 + stor7.length.field_1 + _594 + 64] = mem[_767]
        mem[_357 + stor7.length.field_1 + _594 + 96 len ceil32(_815)] = mem[_767 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_357 + stor7.length.field_1 + _594 + _815 + 96] = 0
        return 32, mem[_357 + stor7.length.field_1 + _594 + 64 len ceil32(_815) + 32]
    mem[_357 + stor7.length.field_1 + _594 + 32] = 0
    _775 = mem[64]
    mem[64] = _357 + stor7.length.field_1 + _594 + 32
    mem[_357 + stor7.length.field_1 + _594 + 32] = 32
    _819 = mem[_775]
    mem[_357 + stor7.length.field_1 + _594 + 64] = mem[_775]
    mem[_357 + stor7.length.field_1 + _594 + 96 len ceil32(_819)] = mem[_775 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_357 + stor7.length.field_1 + _594 + _819 + 96] = 0
    return 32, mem[_357 + stor7.length.field_1 + _594 + 64 len ceil32(_819) + 32]
}



}
