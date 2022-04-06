contract main {




// =====================  Runtime code  =====================


#
#  - purchaseNft(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
mapping of uint256 tokenNftID;
address stor10;
address stor11;
array of address purchaseTokens;
array of struct stor14;

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

function purchaseTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < purchaseTokens.length
    return purchaseTokens[arg1]
}

function owner() payable {
    return owner
}

function tokenNftID(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokenNftID:: Token has not been minted yet'
    return tokenNftID[arg1]
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

function getTokenBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= purchaseTokens.length:
        revert with 'NH{q', 50
    require ext_code.size(purchaseTokens[arg1])
    staticcall purchaseTokens[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function addPurchaseToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < purchaseTokens.length:
        mem[0] = 13
        if purchaseTokens[idx] == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addPurchaseToken:: Purchasing token already exists'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    purchaseTokens.length++
    purchaseTokens[purchaseTokens.length] = arg1
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

function distribute() payable {
    if 0 >= purchaseTokens.length:
        revert with 'NH{q', 50
    require ext_code.size(purchaseTokens)
    staticcall purchaseTokens.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 70 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(purchaseTokens)
    call purchaseTokens.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor10, 70 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(purchaseTokens)
    call purchaseTokens.0xa9059cbb with:
         gas gas_remaining wei
        args stor10, 70 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and 30 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(purchaseTokens)
    call purchaseTokens.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor11, 30 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(purchaseTokens)
    call purchaseTokens.0xa9059cbb with:
         gas gas_remaining wei
        args stor11, 30 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
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
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
        if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
            mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
}

function sub_2f060dc0(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == bool(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == address(arg6)
    if arg1 >= stor14.length:
        revert with 'NH{q', 50
    if stor14[arg1].field_1792 == msg.sender:
        if stor14[arg1].field_256:
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor14[arg1].field_256 = 0
                idx = 0
                while stor14[arg1].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if arg2.length:
                stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor14[arg1].field_256 = 0
                idx = 0
                while stor14[arg1].field_257 + 31 / 32 > idx:
                    stor[idx + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        stor14[arg1].field_512 = uint8(bool(arg3))
        if purchaseTokens.length < 1:
            revert with 'NH{q', 17
        if arg4 > purchaseTokens.length - 1:
            revert with 0, 'updateNft:: Purchase Token does not exist'
        stor14[arg1].field_768 = arg4
        stor14[arg1].field_1024 = arg5
        stor14[arg1].field_1792 = address(arg6)
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] == Mask(8 * -ceil32(arg2.length) + arg2.length + 20, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if Mask(8 * -ceil32(arg2.length) + arg2.length + 20, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] != msg.sender:
        revert with 0, 'updateNft:: Must be owner or admin to modify NFT'
    if stor14[arg1].field_256:
        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[arg1].field_256 = 0
            idx = 0
            while stor14[arg1].field_257 + 31 / 32 > idx:
                stor[idx + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[arg1].field_256 = 0
            idx = 0
            while stor14[arg1].field_257 + 31 / 32 > idx:
                stor[idx + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor14[arg1].field_512 = uint8(bool(arg3))
    if purchaseTokens.length < 1:
        revert with 'NH{q', 17
    if arg4 > purchaseTokens.length - 1:
        revert with 0, 'updateNft:: Purchase Token does not exist'
    stor14[arg1].field_768 = arg4
    stor14[arg1].field_1024 = arg5
    stor14[arg1].field_1792 = address(arg6)
    return 0
}

function sub_60ab502a(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307() or ceil32(arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 == bool(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = bool(arg3)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = address(arg7)
    stor14.length++
    if stor14[stor14.length].field_0:
        if stor14[stor14.length].field_0 == stor14[stor14.length].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[stor14.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14[stor14.length].field_0 = 0
            idx = 0
            while stor14[stor14.length].field_1 + 31 / 32 > idx:
                stor14[(8 * stor14.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor14[stor14.length].field_0 == stor14[stor14.length].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[stor14.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14[stor14.length].field_0 = 0
            idx = 0
            while stor14[stor14.length].field_1 + 31 / 32 > idx:
                stor14[(8 * stor14.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor14[stor14.length].field_256:
        if stor14[stor14.length].field_256 == stor14[stor14.length].field_257 < 32:
            revert with 'NH{q', 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            stor[sha3((8 * stor14.length) + ('name', 'stor14', 14) + 1)][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor14[stor14.length].field_256 = 0
            idx = 0
            while stor14[stor14.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((8 * stor14.length) + ('name', 'stor14', 14) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor14[stor14.length].field_256 == stor14[stor14.length].field_257 < 32:
            revert with 'NH{q', 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            stor[sha3((8 * stor14.length) + ('name', 'stor14', 14) + 1)][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor14[stor14.length].field_256 = 0
            idx = 0
            while stor14[stor14.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((8 * stor14.length) + ('name', 'stor14', 14) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor14[stor14.length].field_512 = uint8(bool(arg3))
    stor14[stor14.length].field_768 = arg4
    stor14[stor14.length].field_1024 = arg5
    stor14[stor14.length].field_1280 = arg6
    stor14[stor14.length].field_1536 = 0
    stor14[stor14.length].field_1792 = address(arg7)
}

function nfts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor14.length
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor14[arg1].field_0:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor14[arg1].field_1:
                if 31 >= stor14[arg1].field_1:
                    mem[128] = 256 * stor14[arg1].field_8
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor14[arg1].field_1:
                if 31 >= stor14[arg1].field_1:
                    mem[128] = 256 * stor14[arg1].field_8
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor14[arg1].field_256:
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor14[arg1].field_256:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor14[arg1].field_257:
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
                else:
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
                    else:
                        mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
            else:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor14[arg1].field_257:
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
                else:
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
                    else:
                        mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
            return Array(len=2 * Mask(256, -1, stor14[arg1].field_1), data=mem[128 len ceil32(stor14[arg1].field_1)], 2 * Mask(256, -1, stor14[arg1].field_257), mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]), 
                   ceil32(stor14[arg1].field_1) + 288,
                   bool(stor14[arg1].field_512),
                   stor14[arg1].field_768,
                   stor14[arg1].field_1024,
                   stor14[arg1].field_1280,
                   stor14[arg1].field_1536,
                   stor14[arg1].field_1792
        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor14[arg1].field_256:
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor14[arg1].field_257:
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
            else:
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
                else:
                    mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
        else:
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor14[arg1].field_257:
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
            else:
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
                else:
                    mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_1), data=mem[128 len ceil32(stor14[arg1].field_1)], stor14[arg1].field_256, mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]), 
               ceil32(stor14[arg1].field_1) + 288,
               bool(stor14[arg1].field_512),
               stor14[arg1].field_768,
               stor14[arg1].field_1024,
               stor14[arg1].field_1280,
               stor14[arg1].field_1536,
               stor14[arg1].field_1792
    if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor14[arg1].field_1:
            if 31 >= stor14[arg1].field_1:
                mem[128] = 256 * stor14[arg1].field_8
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor14[arg1].field_1:
            if 31 >= stor14[arg1].field_1:
                mem[128] = 256 * stor14[arg1].field_8
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor14[arg1].field_256:
        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor14[arg1].field_256:
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor14[arg1].field_257:
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
            else:
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
                else:
                    mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
        else:
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor14[arg1].field_257:
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
            else:
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
                else:
                    mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 160
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
        return Array(len=stor14[arg1].field_0, data=mem[128 len ceil32(stor14[arg1].field_1)], 2 * Mask(256, -1, stor14[arg1].field_257), mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]), 
               ceil32(stor14[arg1].field_1) + 288,
               bool(stor14[arg1].field_512),
               stor14[arg1].field_768,
               stor14[arg1].field_1024,
               stor14[arg1].field_1280,
               stor14[arg1].field_1536,
               stor14[arg1].field_1792
    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor14[arg1].field_256:
        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor14[arg1].field_257:
            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
        else:
            if 31 >= stor14[arg1].field_257:
                mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
            else:
                mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                idx = ceil32(stor14[arg1].field_1) + 160
                s = 0
                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
    else:
        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor14[arg1].field_257:
            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
        else:
            if 31 >= stor14[arg1].field_257:
                mem[ceil32(stor14[arg1].field_1) + 160] = 256 * stor14[arg1].field_264
            else:
                mem[ceil32(stor14[arg1].field_1) + 160] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                idx = ceil32(stor14[arg1].field_1) + 160
                s = 0
                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 448] = 0
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 448] = stor14[arg1].field_257
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 480 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]
            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 480] = 0
    return Array(len=stor14[arg1].field_0, data=mem[128 len ceil32(stor14[arg1].field_1)], stor14[arg1].field_256, mem[ceil32(stor14[arg1].field_1) + 160 len ceil32(stor14[arg1].field_257)]), 
           ceil32(stor14[arg1].field_1) + 288,
           bool(stor14[arg1].field_512),
           stor14[arg1].field_768,
           stor14[arg1].field_1024,
           stor14[arg1].field_1280,
           stor14[arg1].field_1536,
           stor14[arg1].field_1792
}

function getNftData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor14.length < 1:
        revert with 'NH{q', 17
    if arg1 > stor14.length - 1:
        revert with 0, 'getNftData:: NFT does not exist'
    if arg1 >= stor14.length:
        revert with 'NH{q', 50
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor14[arg1].field_0:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor14[arg1].field_1:
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           2 * Mask(256, -1, stor14[arg1].field_1),
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           2 * Mask(256, -1, stor14[arg1].field_257),
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
            else:
                if 31 >= stor14[arg1].field_1:
                    mem[640] = 256 * stor14[arg1].field_8
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if stor14[arg1].field_256:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        else:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               2 * Mask(256, -1, stor14[arg1].field_257),
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                else:
                    mem[640] = stor14[arg1].field_0
                    idx = 640
                    s = 0
                    while stor14[arg1].field_1 + 608 > idx:
                        mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if stor14[arg1].field_256:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            else:
                                if 31 >= stor14[arg1].field_257:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                else:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                    idx = ceil32(stor14[arg1].field_1) + 672
                                    s = 0
                                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            else:
                                if 31 >= stor14[arg1].field_257:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                else:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                    idx = ceil32(stor14[arg1].field_1) + 672
                                    s = 0
                                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               2 * Mask(256, -1, stor14[arg1].field_257),
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
        else:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if not stor14[arg1].field_1:
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           2 * Mask(256, -1, stor14[arg1].field_1),
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           2 * Mask(256, -1, stor14[arg1].field_257),
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
            else:
                if 31 >= stor14[arg1].field_1:
                    mem[640] = 256 * stor14[arg1].field_8
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if stor14[arg1].field_256:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        else:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                                return 32, 256, 
                                       ceil32(stor14[arg1].field_1) + 288,
                                       bool(stor14[arg1].field_512),
                                       stor14[arg1].field_768,
                                       stor14[arg1].field_1024,
                                       stor14[arg1].field_1280,
                                       stor14[arg1].field_1536,
                                       stor14[arg1].field_1792,
                                       2 * Mask(256, -1, stor14[arg1].field_1),
                                       mem[640 len ceil32(stor14[arg1].field_1)],
                                       stor14[arg1].field_257,
                                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               2 * Mask(256, -1, stor14[arg1].field_257),
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   2 * Mask(256, -1, stor14[arg1].field_1),
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                else:
                    mem[640] = stor14[arg1].field_0
                    idx = 640
                    s = 0
                    while stor14[arg1].field_1 + 608 > idx:
                        mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if stor14[arg1].field_256:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            else:
                                if 31 >= stor14[arg1].field_257:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                else:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                    idx = ceil32(stor14[arg1].field_1) + 672
                                    s = 0
                                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                                revert with 'NH{q', 34
                            if not stor14[arg1].field_257:
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            else:
                                if 31 >= stor14[arg1].field_257:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                                else:
                                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                    idx = ceil32(stor14[arg1].field_1) + 672
                                    s = 0
                                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               2 * Mask(256, -1, stor14[arg1].field_1),
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               2 * Mask(256, -1, stor14[arg1].field_257),
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
        return 32, 256, 
               ceil32(stor14[arg1].field_1) + 288,
               bool(stor14[arg1].field_512),
               stor14[arg1].field_768,
               stor14[arg1].field_1024,
               stor14[arg1].field_1280,
               stor14[arg1].field_1536,
               stor14[arg1].field_1792,
               2 * Mask(256, -1, stor14[arg1].field_1),
               mem[640 len ceil32(stor14[arg1].field_1)],
               stor14[arg1].field_256,
               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
    if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor14[arg1].field_1:
            if stor14[arg1].field_256:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                return 32, 256, 
                       ceil32(stor14[arg1].field_1) + 288,
                       bool(stor14[arg1].field_512),
                       stor14[arg1].field_768,
                       stor14[arg1].field_1024,
                       stor14[arg1].field_1280,
                       stor14[arg1].field_1536,
                       stor14[arg1].field_1792,
                       stor14[arg1].field_0,
                       mem[640 len ceil32(stor14[arg1].field_1)],
                       2 * Mask(256, -1, stor14[arg1].field_257),
                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor14[arg1].field_256:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor14[arg1].field_257:
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                idx = ceil32(stor14[arg1].field_1) + 672
                s = 0
                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor14[arg1].field_257:
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                idx = ceil32(stor14[arg1].field_1) + 672
                s = 0
                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
        else:
            if 31 >= stor14[arg1].field_1:
                mem[640] = 256 * stor14[arg1].field_8
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           2 * Mask(256, -1, stor14[arg1].field_257),
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
            else:
                mem[640] = stor14[arg1].field_0
                idx = 640
                s = 0
                while stor14[arg1].field_1 + 608 > idx:
                    mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           2 * Mask(256, -1, stor14[arg1].field_257),
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        else:
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        else:
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
    else:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not stor14[arg1].field_1:
            if stor14[arg1].field_256:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                return 32, 256, 
                       ceil32(stor14[arg1].field_1) + 288,
                       bool(stor14[arg1].field_512),
                       stor14[arg1].field_768,
                       stor14[arg1].field_1024,
                       stor14[arg1].field_1280,
                       stor14[arg1].field_1536,
                       stor14[arg1].field_1792,
                       stor14[arg1].field_0,
                       mem[640 len ceil32(stor14[arg1].field_1)],
                       2 * Mask(256, -1, stor14[arg1].field_257),
                       mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
            if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor14[arg1].field_256:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor14[arg1].field_257:
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                idx = ceil32(stor14[arg1].field_1) + 672
                s = 0
                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor14[arg1].field_257:
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if 31 >= stor14[arg1].field_257:
                    mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           stor14[arg1].field_257,
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                idx = ceil32(stor14[arg1].field_1) + 672
                s = 0
                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
        else:
            if 31 >= stor14[arg1].field_1:
                mem[640] = 256 * stor14[arg1].field_8
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                            return 32, 256, 
                                   ceil32(stor14[arg1].field_1) + 288,
                                   bool(stor14[arg1].field_512),
                                   stor14[arg1].field_768,
                                   stor14[arg1].field_1024,
                                   stor14[arg1].field_1280,
                                   stor14[arg1].field_1536,
                                   stor14[arg1].field_1792,
                                   stor14[arg1].field_0,
                                   mem[640 len ceil32(stor14[arg1].field_1)],
                                   stor14[arg1].field_257,
                                   mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                        idx = ceil32(stor14[arg1].field_1) + 672
                        s = 0
                        while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                            mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                        mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           2 * Mask(256, -1, stor14[arg1].field_257),
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    if 31 >= stor14[arg1].field_257:
                        mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        return 32, 256, 
                               ceil32(stor14[arg1].field_1) + 288,
                               bool(stor14[arg1].field_512),
                               stor14[arg1].field_768,
                               stor14[arg1].field_1024,
                               stor14[arg1].field_1280,
                               stor14[arg1].field_1536,
                               stor14[arg1].field_1792,
                               stor14[arg1].field_0,
                               mem[640 len ceil32(stor14[arg1].field_1)],
                               stor14[arg1].field_257,
                               mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                    mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                    idx = ceil32(stor14[arg1].field_1) + 672
                    s = 0
                    while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                    mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                    mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
            else:
                mem[640] = stor14[arg1].field_0
                idx = 640
                s = 0
                while stor14[arg1].field_1 + 608 > idx:
                    mem[idx + 32] = stor14[(8 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor14[arg1].field_256:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                            revert with 'NH{q', 34
                        if not stor14[arg1].field_257:
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                        else:
                            if 31 >= stor14[arg1].field_257:
                                mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                            else:
                                mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                                idx = ceil32(stor14[arg1].field_1) + 672
                                s = 0
                                while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                                mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                            if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                                mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    return 32, 256, 
                           ceil32(stor14[arg1].field_1) + 288,
                           bool(stor14[arg1].field_512),
                           stor14[arg1].field_768,
                           stor14[arg1].field_1024,
                           stor14[arg1].field_1280,
                           stor14[arg1].field_1536,
                           stor14[arg1].field_1792,
                           stor14[arg1].field_0,
                           mem[640 len ceil32(stor14[arg1].field_1)],
                           2 * Mask(256, -1, stor14[arg1].field_257),
                           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                    revert with 'NH{q', 34
                if stor14[arg1].field_256:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        else:
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                else:
                    if stor14[arg1].field_256 == stor14[arg1].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor14[arg1].field_257:
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
                    else:
                        if 31 >= stor14[arg1].field_257:
                            mem[ceil32(stor14[arg1].field_1) + 672] = 256 * stor14[arg1].field_264
                        else:
                            mem[ceil32(stor14[arg1].field_1) + 672] = stor[sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_0
                            idx = ceil32(stor14[arg1].field_1) + 672
                            s = 0
                            while ceil32(stor14[arg1].field_1) + stor14[arg1].field_257 + 640 > idx:
                                mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor14', 14) + 1)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
                            mem[ceil32(stor14[arg1].field_1) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_1 + 992] = 0
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 992] = stor14[arg1].field_257
                        mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + 1024 len ceil32(stor14[arg1].field_257)] = mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
                        if ceil32(stor14[arg1].field_257) > stor14[arg1].field_257:
                            mem[(2 * ceil32(stor14[arg1].field_1)) + ceil32(stor14[arg1].field_257) + stor14[arg1].field_257 + 1024] = 0
    return 32, 256, 
           ceil32(stor14[arg1].field_1) + 288,
           bool(stor14[arg1].field_512),
           stor14[arg1].field_768,
           stor14[arg1].field_1024,
           stor14[arg1].field_1280,
           stor14[arg1].field_1536,
           stor14[arg1].field_1792,
           stor14[arg1].field_0,
           mem[640 len ceil32(stor14[arg1].field_1)],
           stor14[arg1].field_256,
           mem[ceil32(stor14[arg1].field_1) + 672 len ceil32(stor14[arg1].field_257)]
}



}
